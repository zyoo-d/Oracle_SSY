set serveroutput on;

select * from tblHoliday;
select * from user_tables order by table_name;
select * from vwAllStudent;
select * from 
--
create or replace function fnSearchAttByDuration(
    pstandard varchar2,
    pnumber number  
)return number
is
begin
    return case
        when pstandard like '%YEAR%' then to_date(pnumber,'yyyy')-to_date(pnumber-1, 'yyyy')
        when pstandard like '%MONTH%' then to_char(last_day(to_date(pnumber,'mm')),'dd')
        when pstandard like '%DAY%' then '1'
    end;
exception 
    when others then
        dbms_output.put_line('예외처리');
end fnSearchAttByDuration;
/

--해당 년도 일수
declare
    vresult number;
begin
    vresult := fnSearchAttByDuration('YEAR',2024);
    dbms_output.put_line(vresult);
end;
/

--해당 월 일수
declare
    vresult number;
begin
    vresult := fnSearchAttByDuration('MONTH',02);
    dbms_output.put_line(vresult);
end;
/
-- 기간별 regdate 출력
create or replace view vwDate
as
select 
    sysdate - level as regdate
from dual
    connect by level <= (fnSearchAttByDuration('YEAR',2024) +1)
    order by regdate asc;

--select * from tblAttendance;
--select * from vwDate;
--
select
    *
from vwDate v
    left outer join vwAllStuAtt att
        on to_char(v.regdate,'yyyy-mm-dd') = to_char(att.attenddate,'yyyy-mm-dd')
            order by v.regdate asc;


----
--declare
--    vdate date;
--    vcnt number;
--    vstate tblDate.state%type;
--begin
--    --seed(2월 1일)
--    vdate := to_date('2024-02-01','yyyy-mm-dd'); -- 00:00:00
--
--    for i in 1..26 loop
--    
--        dbms_output.put_line(vdate);
--        
--        -- 해당 날짜의 근태 기록 확인 ? > tblDate
--        
--        select count(*) into vcnt from tblDate
----            where regdate = vdate; --비교대상과 비교기준의 날짜 모두 자정으로 시분초가 설정되어 있어서 가능함
--            where to_char(regdate , 'yyyy-mm-dd') = to_char(vdate, 'yyyy-mm-dd');
--        
--        dbms_output.put_line(vcnt);
--        
--        if vcnt > 0 then
--            select state from into vstate from tblDate
--                            where to_char(regdate , 'yyyy-mm-dd') = to_char(vdate, 'yyyy-mm-dd');
--            dbms_output.put_line(vstate);
--        else
--        
--        end if;
        
  
        vdate := vdate +1; --하루씩 증가
        
    end loop;
end;
/
--

---------------------------------------------------------
--휴일여부와...출석시간, 하원시간에 따른 status 프로시저
select * from vwAllStuAtt;
--desc tblAttendance;
--select * from tblAttendStandard;
select * from tblAttendStatus;
--select attstdpk, to_char(attstdtime, 'hh24:mi:ss') from tblAttendStandard;
--select * from tblAttendStatus;
--tblAttendance에 insert인 경우 status 지정하는 트리거
--create or replace trigger trgInserAtt
--    before
--    insert or update
--    on tblAttendance
--    for each row
--declare
--    vattpk tblAttendance.attpk%type;
--    vattstspk tblAttendStatus.attstspk%type;
--    vcheckin tblAttendance.checkin%type;
--    vcheckout tblAttendance.checkout%type;
--begin
--    select attpk into vattpk from tblAttendance  
--        where 
--        case
--            when old.attpk is null then 0
--            else 1
--        end;
--    if vattpk = 0 then
--        case vattstspk
--            when (select to_timestamp(checkin,'HH24:MI:SS') from tblAttendance where attpk =: new.attpk) <=TO_TIMESTAMP('09:10:59', 'HH24:MI:SS') then 1
--            when (select to_timestamp(checkin,'HH24:MI:SS') from tblAttendance where attpk =: new.attpk) between 'TO_TIMESTAMP('09:11:00', 'HH24:MI:SS')' and 'TO_TIMESTAMP('13:00:00', 'HH24:MI:SS')' then 2
--            when (select checkin,checkout from tblAttendance where attpk =: new.attpk and checkin is null and checkout is null) then 4
--        end as sts_by_checkin;
--    elsif vattpk = 1 then
--        case vattstspk
--            when (select to_timestamp('checkout','HH24:MI:SS')from tblAttendance where attpk =: old.attpk) >= (select to_timestamp(checkin+60*60*4,'HH24:MI:SS') from tblAttendance where attpk =: new.attpk) then 3
--            when (select to_timestamp('checkout','HH24:MI:SS') from tblAttendance where attpk =: old.attpk) < (select to_timestamp(checkin+60*60*4,'HH24:MI:SS') from tblAttendance where attpk =: new.attpk) then 4
--        end as sts_by_checkout;
--    end if;
--     if inserting then
--        update tblAttendance set attstspk = vattstspk where id = :new.id;
--    elsif updating then
--        update tblAttendance set attstspk = vattstspk where id = :old.id;     
--    end if;
--exception
--    when others then
--        dbms_output.put_line('예외처리');
--end;
--/

CREATE OR REPLACE TRIGGER trgCheckInAtt
BEFORE INSERT OR UPDATE ON tblAttendance
FOR EACH ROW
DECLARE
    vattstspk tblAttendStatus.attstspk%type;
    vcheckin TIMESTAMP;
    vcheckout TIMESTAMP;
BEGIN
    -- 체크인 시간 가져오기
    SELECT checkin INTO vcheckin FROM tblAttendance WHERE attpk = :new.attpk;

    -- 출석 상태 결정 로직 (가상의 로직, 실제 조건에 맞게 수정 필요)
    IF TO_TIMESTAMP(vcheckin, 'HH24:MI:SS')  <= TO_TIMESTAMP('09:10:59', 'HH24:MI:SS') THEN
        vattstspk := 1; -- 예시 값, 실제 값에 맞게 조정
    ELSIF TO_TIMESTAMP(vcheckin, 'HH24:MI:SS') between TO_TIMESTAMP('09:11:00', 'HH24:MI:SS') AND TO_TIMESTAMP('13:00:00', 'HH24:MI:SS') THEN
        vattstspk := 2;
    ELSE
        vattstspk := 4; -- 예시 값
    END IF;
    -- 출석 상태 업데이트
   update tblAttendance set attstspk = vattstspk where attpk = :new.attpk;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('예외 처리: ' || SQLERRM);
END;
/

CREATE OR REPLACE TRIGGER trgCheckOutAtt
AFTER UPDATE ON tblAttendance
FOR EACH ROW
DECLARE
    vattstspk tblAttendStatus.attstspk%type;
    vDuration NUMBER;
    vcheckin TIMESTAMP;
    vcheckout TIMESTAMP;
BEGIN
    -- 체크인 시간 가져오기
    SELECT checkin INTO vcheckin FROM tblAttendance WHERE attpk = :old.attpk;
    -- 체크아웃 시간 가져오기
    SELECT checkout INTO vcheckout FROM tblAttendance WHERE attpk = :old.attpk;
    -- 체크아웃과 체크인의 차이(시간) 계산
    vDuration := select extract( hour from att )-1 hours from (select checkout - checkin as att from tblAttendance) -- 일 단위 차이를 시간으로 변환


    IF TO_TIMESTAMP(vcheckout, 'HH24:MI:SS')  >= TO_TIMESTAMP('17:50:00', 'HH24:MI:SS') THEN
        vattstspk := 1; -- 예시 값, 실제 값에 맞게 조정
    elsif vDuration >= 4 THEN
        vattstspk := 3; -- 근무 시간이 4시간 이상일 경우
    ELSE
        vattstspk := 4; -- 근무 시간이 4시간 미만일 경우
    END IF;

    -- 출석 상태 업데이트
     update tblAttendance set attstspk = vattstspk where attpk = :old.attpk;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('예외 처리: ' || SQLERRM);
END trgCheckOutAtt;
/

--create or replace view vwDate
--as
--select 
--    to_date('2024-02-01','yyyy-mm-dd') + level - 1 as regdate
--from dual
--    connect by level <= (to_date('2024-02-26','yyyy-mm-dd')-to_date('2024-02-01','yyyy-mm-dd')+1);