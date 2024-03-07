-- ex31.sql

-- 근태 관리(출석)
--drop table tblDate;
create table tblDate(
    seq number primary key,     --PK
    state varchar2(30) not null, --정상|지각|조퇴
    regdate date not null       --날짜
);

insert into tblDate (seq, state, regdate) values (1, '정상', '2024-02-01');
insert into tblDate (seq, state, regdate) values (2, '정상', '2024-02-02');
--03(토),04(일)
insert into tblDate (seq, state, regdate) values (3, '지각', '2024-02-05');
insert into tblDate (seq, state, regdate) values (4, '정상', '2024-02-06');
insert into tblDate (seq, state, regdate) values (5, '정상', '2024-02-07');
insert into tblDate (seq, state, regdate) values (6, '조퇴', '2024-02-08'); 
--09,10,11,12(설연휴)
insert into tblDate (seq, state, regdate) values (7, '정상', '2024-02-13');
insert into tblDate (seq, state, regdate) values (8, '정상', '2024-02-14');
insert into tblDate (seq, state, regdate) values (9, '지각', '2024-02-15');
insert into tblDate (seq, state, regdate) values (10, '정상', '2024-02-16');
--17(토),18(일)
insert into tblDate (seq, state, regdate) values (11, '정상', '2024-02-19');
insert into tblDate (seq, state, regdate) values (12, '정상', '2024-02-20');
insert into tblDate (seq, state, regdate) values (13, '지각', '2024-02-21');
--22(결석)
insert into tblDate (seq, state, regdate) values (14, '정상', '2024-02-23');
--24(토),25(일)
insert into tblDate (seq, state, regdate) values (15, '정상', '2024-02-26');

select * from tblDate;

-- 근태 조회 > 2월 근태 기록 열람 > 결석한 날짜도 포함 + 공휴일 포함
-- 2월 1일 ~ 2월 26일 까지 모든 날짜 기록 열람 (근태 기록에 없는 날 포함)
-- 빠진 날짜 메꾸기*****

-- 1. ANSI-SQL
-- 2. PL/SQL
-- 3. Java


-- *** 어떤 업무 구현? > 컬럼 반환 > substr(컬럼,1,3) > 업무를 구현할 때 어떤 방식을 사용하는게 효율적일지 선택하는게 중요함 -> 1,2,3 순서대로 시도
-- 1. ANSI-SQL
-- 2. PL/SQL
-- 3. Java

--1. ANSI-SQL
-- 계층형 쿼리
-- 루프(X) > 계층형 쿼리(O)

select level from dual
    connect by level <= 5; --> 일련번호 만들기(자기참조하는 형태)


select sysdate + level-1 from dual
    connect by level <= 5;

-- *** date자료형으로 원하는 기간을 생성하는 방법(기억!!!!)
create or replace view vwDate
as
select 
    to_date('2024-02-01','yyyy-mm-dd') + level - 1 as regdate
from dual
    connect by level <= (to_date('2024-02-26','yyyy-mm-dd')-to_date('2024-02-01','yyyy-mm-dd')+1);

select * from tblDate; --2월 근태 기록
select * from vwDate; --2월 한달 날짜
--> vw을 가르키는 outer join

select
    *
from vwDate v
    left outer join tblDate t
        on to_char(v.regdate,'yyyy-mm-dd') = to_char(t.regdate,'yyyy-mm-dd')
            order by v.regdate asc;

select
    v.regdate,
    case
        when to_char(v.regdate,'d') = '1' then '일요일'
        when to_char(v.regdate,'d') = '7' then '토요일'
        else t.state
    end as state
from vwDate v
    left outer join tblDate t
        on to_char(v.regdate,'yyyy-mm-dd') = to_char(t.regdate,'yyyy-mm-dd')
            order by v.regdate asc;
            
--공휴일 처리 -> 매년 직접 데이터 삽입해야 함
create table tblHoliday(
    seq number primary key,     --PK
    regdate date not null,      --날짜
    name varchar2(30) not null  --공휴일명
);

insert into  tblHoliday (seq, regdate, name) values (1, '2024-02-09','설날');
insert into  tblHoliday (seq, regdate, name) values (2, '2024-02-12','설날');

select * from tblHoliday;

select
    v.regdate,
    case
        when to_char(v.regdate,'d') = '1' then '일요일'
        when to_char(v.regdate,'d') = '7' then '토요일'
        when h.seq is not null then h.name
        when h.seq is null and t.seq is null then '결석'
        else t.state
    end as state
from vwDate v
    left outer join tblDate t
        on to_char(v.regdate,'yyyy-mm-dd') = to_char(t.regdate,'yyyy-mm-dd')
            left outer join tblHoliday h
                on v.regdate = h.regdate --''두 테이블에서 regdate는 모두 날짜 상수를 넣은거라 시간이 자정으로 동일해서 그대로 비교한 것
            order by v.regdate asc;




-- 2. PL/SQL // 판서확인

declare
    vdate date;
    vcnt number;
    vstate tblDate.state%type;
begin
    --seed(2월 1일)
    vdate := to_date('2024-02-01','yyyy-mm-dd'); -- 00:00:00

    for i in 1..26 loop
    
        dbms_output.put_line(vdate);
        
        -- 해당 날짜의 근태 기록 확인 ? > tblDate
        
        select count(*) into vcnt from tblDate
--            where regdate = vdate; --비교대상과 비교기준의 날짜 모두 자정으로 시분초가 설정되어 있어서 가능함
            where to_char(regdate , 'yyyy-mm-dd') = to_char(vdate, 'yyyy-mm-dd');
        
        dbms_output.put_line(vcnt);
        
        if vcnt > 0 then
            select state from into vstate from tblDate
                            where to_char(regdate , 'yyyy-mm-dd') = to_char(vdate, 'yyyy-mm-dd');
            dbms_output.put_line(vstate);
--        else
        
        end if;
        
  
        vdate := vdate +1; --하루씩 증가
        
    end loop;
end;
/
