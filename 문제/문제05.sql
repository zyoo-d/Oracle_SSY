-- ### decode ###################################
/*
 문자열 치환
    - decode()
    - replace()와 유사
    - varchar2 decode(컬럼명, 찾을 문자열, 바꿀 문자열)
    - varchar2 decode(컬럼명, 찾을 문자열, 바꿀 문자열, 찾을 문자열, 바꿀 문자열)
    - varchar2 decode(컬럼명, 찾을 문자열, 바꿀 문자열[, 찾을 문자열, 바꿀 문자열]xN) --''한번에 여러개의 문자열을 찾고 바꿀 수 있음
*/

-- 1. tblInsa. 부장 몇명? 과장 몇명? 대리 몇명? 사원 몇명?
select
    count(decode(jikwi, '부장',1)) as "부장(명)",
    count(decode(jikwi, '과장',1)) as "과장(명)",
    count(decode(jikwi, '대리',1)) as "대리(명)",
    count(decode(jikwi, '사원',1)) as "사원(명)"
from tblInsa;

-- 2. tblInsa. 간부(부장, 과장) 몇명? 사원(대리, 사원) 몇명?


select
    count(decode(jikwi, '부장',1,'과장',2)) as "간부(명)",
    count(decode(jikwi, '대리',1,'사원',2)) as "사원(명)"
from tblInsa;

-- 3. tblInsa. 기획부, 영업부, 총무부, 개발부의 각각 평균 급여?
select
    avg(decode(buseo,'기획부',basicpay)),
    avg(decode(buseo,'영업부',basicpay)),
    avg(decode(buseo,'총무부',basicpay)),
    avg(decode(buseo,'개발부',basicpay))
from tblInsa;

-- 4. tblInsa. 남자 직원 가장 나이가 많은 사람이 몇년도 태생? 여자 직원 가장 나이가 어린 사람이 몇년도 태생?
select
    min(case
        when substr(ssn,8,1) = 1 then substr(ssn,1,2)
    end) || '년',
    max(case
        when substr(ssn,8,1) = 2 then substr(ssn,1,2)
    end) ||'년'
from tblInsa;



select
min(decode(
        substr(ssn,8,1)
        ,1,
        substr(ssn,1,2))),
max(decode(
        substr(ssn,8,1)
        ,2,
        substr(ssn,1,2)))       
from tblInsa; 


select * from tblInsa order by ssn asc;




