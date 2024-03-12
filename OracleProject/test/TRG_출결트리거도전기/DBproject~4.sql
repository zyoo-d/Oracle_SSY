-- TEST.출결
select last_day(to_date(2023,'yyyy')) from dual;
select last_day(to_date(202303,'yyyymm')) from dual;

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
    connect by level <= (fnSearchAttByDuration('MONTH',3) +1)
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
    
--drop trigger trgCheckInAtt;

----
--CREATE OR REPLACE TRIGGER trgInAtt
--AFTER
--INSERT ON tblAttendance
--FOR EACH ROW
--DECLARE
--    vattstspk number;
--    vcheckin tblAttendance.checkin%type;
--    vcheckout tblAttendance.checkout%type;
--BEGIN
--    -- 체크인 시간 가져오기
--    SELECT checkin INTO vcheckin FROM tblAttendance WHERE attpk = :new.attpk;
----    vattstspk:= 0;
----    select TO_TIMESTAMP(checkin, 'HH23:MI:SS') from tblAttendance;
--    IF vcheckin <= TO_TIMESTAMP('09:10:59', 'HH24:MI:SS') THEN
----        IF vcheckin  <= TO_TIMESTAMP('09:10:59', 'HH24:MI:SS') THEN
--
--        vattstspk := 1; 
----        old.attstspk := 1; 
--
--        dbms_output.put_line('출석 완료');
--
--    ELSIF TO_TIMESTAMP(vcheckin, 'HH24:MI:SS') between TO_TIMESTAMP('09:11:00', 'HH24:MI:SS') AND TO_TIMESTAMP('13:00:00', 'HH24:MI:SS') THEN
----    ELSIF vcheckin between TO_TIMESTAMP('09:11:00', 'HH24:MI:SS') AND TO_TIMESTAMP('13:00:00', 'HH24:MI:SS') THEN
--
--        dbms_output.put_line('지각');
--        vattstspk := 2;
----        old.attstspk := 2; 
--
--    ELSE
--        vattstspk := 4;
----        old.attstspk := 4; 
--
--        dbms_output.put_line('결석처리');
--
--    END IF;
--    
--    -- 출석 상태 업데이트
--   update tblAttendance set attstspk = vattstspk where attpk = :new.attpk;
--
--EXCEPTION
--    WHEN NO_DATA_fOUND THEN VATTSTSPK := 0;
--        DBMS_OUTPUT.PUT_LINE('예외 처리: ' || SQLERRM);
--    WHEN OTHERS THEN
--        DBMS_OUTPUT.PUT_LINE('예외 처리: ' || SQLERRM);
--END;
--/
------------------------
--DROP TRIGGER trgCheckOutAtt;
--COMMIT;
--CREATE OR REPLACE TRIGGER trgCheckOutAtt
--AFTER UPDATE ON tblAttendance
--FOR EACH ROW
--DECLARE
--    vattstspk tblAttendStatus.attstspk%type;
--    vDuration NUMBER;
--    vcheckin TIMESTAMP;
--    vcheckout TIMESTAMP;
--BEGIN
--    -- 체크인 시간 가져오기
--    SELECT checkin INTO vcheckin FROM tblAttendance WHERE attpk = :old.attpk;
--    -- 체크아웃 시간 가져오기
--    SELECT checkout INTO vcheckout FROM tblAttendance WHERE attpk = :old.attpk;
--    -- 체크아웃과 체크인의 차이(시간) 계산
--    vDuration := select extract( hour from att )-1 hours from (select checkout - checkin as att from tblAttendance) -- 일 단위 차이를 시간으로 변환
--
--
--    
--    IF TO_TIMESTAMP(vcheckout, 'HH24:MI:SS')  >= TO_TIMESTAMP('17:50:00', 'HH24:MI:SS') THEN
--        vattstspk := 1; -- 예시 값, 실제 값에 맞게 조정
--
--    elsif vDuration >= 4 THEN
--        vattstspk := 3; -- 근무 시간이 4시간 이상일 경우
--    ELSE
--        vattstspk := 4; -- 근무 시간이 4시간 미만일 경우
--    END IF;
--
--    -- 출석 상태 업데이트
--     update tblAttendance set attstspk = vattstspk where attpk = :old.attpk;
--
--EXCEPTION
--    WHEN OTHERS THEN
--        DBMS_OUTPUT.PUT_LINE('예외 처리: ' || SQLERRM);
--END trgCheckOutAtt;
--/
--     select * from tblAttendance;
--     alter trigger trgCheckInAtt compile;
--     alter trigger trgCheckInAtt disable;
--          alter trigger trgCheckInAtt enable;
--
--INSERT INTO tblAttendance (attpk, attenddate, checkin, checkout, attstspk, stupk) VALUES ((SELECT NVL(MAX(attpk), 0) + 1 FROM tblAttendance),to_date('2024-03-07','yyyy-mm-dd'), TO_TIMESTAMP('09:11:45', 'HH24:MI:SS'), 
--'','' , 91);
--desc tblAttendance;
--INSERT INTO tblAttendance (attpk, attenddate, checkin, checkout, attstspk, stupk) VALUES ((SELECT NVL(MAX(attpk), 0) + 1 FROM tblAttendance), TO_DATE('2024-03-07', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-03-07 08:17:29', 'YYYY-MM-DD HH24:MI:SS'),'', '', 92);
--
--select * from tblAttendance order by attenddate desc;
--select * from USER_TRIGGERS;
--drop trigger TRGINSERATT;
