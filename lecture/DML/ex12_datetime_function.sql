-- ex12_datetime_function.sql

/*

    날짜 시간 함수
    
    sysdate
    - 현재 시스템의 시각을 반환
    - Calendar.getInstance() 와 같은 역할
    - date sysdate

*/

select sysdate from dual;



/*
    날짜 연산
    1. 시각 - 시각 = 시간 (일)
    2. 시각 + 시간(일) = 시각
    3. 시각 - 시간(일) = 시각

*/

--1. 시각- 시각 = 시간 (일)
-- 현재 - 입사일
select * from tblInsa;
select
    name,
    to_char(ibsadate, 'yyyy-mm-dd') as 입사일,
    round(sysdate - ibsadate) as 근무일수,
    round((sysdate - ibsadate)*24) as 근무시간,
    round((sysdate - ibsadate)*24 * 60) as 근무분수,
    round((sysdate - ibsadate)*24 * 60 * 60) as 근무초수,
    round((sysdate - ibsadate)/365) as 근무년수 -- ''윤년 고려안한 근사 값임
from tblInsa;

select
    title,
    adddate,
    completedate,
--    completedate-adddate --''null은 피연산자가 될 수 없다. 만약 null이 피연산자가 된다며, 그 결과값도 무조건 null이다.
    round((completedate-adddate)*24) as "실행하기까지 걸린 시간" --''별칭에 ""을 썻으면, 그 식별자를 다시 쓸 때도 "" 포함해서 작성한다.
from tblTodo
    order by "실행하기까지 걸린 시간" desc; 
    
-- 2. 시각 + 시간(일) = 시각
-- 3. 시각 - 시간(일) = 시각
select
    sysdate,
    sysdate + 100 as "100일 뒤",
    sysdate - 100 as "100일 전",
    to_char(sysdate + (3 / 24) , 'hh24:mi:ss') as "3시간 후",
    to_char(sysdate + (30 / 24 / 60) , 'hh24:mi') as "30분 후"
from dual;

/*

    month_between()
    - 시각-시각=시간(월)
    - number months_between(date,date)

*/

select
    name,
    round(sysdate - ibsadate) as 근무일수,
    round((sysdate - ibsadate)/365) as 근무년수, --윤년고려안한 근사값
    round(months_between(sysdate,ibsadate)) as 근무월수, --정확한 값
    round(months_between(sysdate,ibsadate)/12) as 근무년수 --정확한 값
from tblInsa;

/*
    add_months()
    - 시각 + 시간(월) = 시각
    - 시각 - 시간(월) = 시각
    - date add_months(date, 시간)

*/

select
    sysdate as 현재시간,               --24/02/15
    add_months(sysdate,3) as "3개월 뒤", --24/05/15
    add_months(sysdate,-2) as "2개월 전", --23/12/15
    add_months(sysdate, 3*12) as "3년 후"--27/02/15
from dual;


/*
[정리]

시각-시각
1. 일, 시, 분, 초 > 연산자(-)
2. 월, 년 > months_between()

시각 +/-시간
1. 일, 시, 분, 초 > 연산자(+)
2. 월, 년 > add_months()

*/


/*

    마지막 날자
    - date last_day(날짜)
    - 해당년월의 마지막일?

*/
select last_day(sysdate) from dual; --24/02/29