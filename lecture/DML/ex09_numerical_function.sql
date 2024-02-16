-- ex09_numerical_function.sql

/*

    숫자 함수
    - 수학 함수
    - Math.XXX()
    
    round()
    - 반올림 함수
    - number round(컬럼명): 정수 반환
    - number round(컬럼명, 소수이하 자릿수): 실수 반환
    
    





*/
--round()
select avg(basicpay) from tblInsa; --1556526.66666666666666666666666666666667
select round(avg(basicpay)) from tblInsa; --1556527
select round(avg(basicpay),1) from tblInsa; --1556526.7

select * from dual; --시스템테이블(''오라클에 존재하는 테이블) > 1행 테이블(***)

select sysdate from tblInsa; --''현재시간 > 테이블의 레코드 수만큼 출력됨

select sysdate from dual; -- ''현재시간 > 1행만 출력


select
    3.5678,
    round(3.5678),
    round(3.5678,1),
    round(3.5678,2),
    round(3.5678,3),
    round(3.5678,0) --''round(3.5678)랑 결과 같음
from dual;




/*
    floor(), trunc()
    - 절삭 함수
    - 무조건 내림 함수
    - number floor(컬럼명): 정수 반환
    - number trunc(컬럼명): 정수 반환
    - number trunc(컬럼명,소수이하 자릿수): 실수 반환
*/

select
    3.5678,
    floor(3.5678), --3
    trunc(3.5678), --3
    trunc(3.5678,1), --3.5
    trunc(3.5678,2), --3.56
    round(3.5678) --4
from dual;

/*
    ceil()
    - 무조건 올림 함수
    - 천장
    - number ceil(컬럼명): 정수 반환
*/

select 
    3.14,
    ceil(3.14) --4
from dual;

select
    ceil(3.000000001), --4
    floor(3.99999999)  --3
from dual;


/*
    mod()
    - 나머지 함수
    - number mod(피제수, 제수)
*/

select
    10/3, --3.33333333333333333333333333333333333333
    mod(10,3) as 나머지, --1
    floor(10/3) as 몫 --3
from dual;

--기타 숫자 함수
select
    abs(10), abs(-10), --절대값
    power(2,2), power(2,3), power(2,4), --제곱
    sqrt(4), sqrt(9), sqrt(16) --제곱근
from dual;


















