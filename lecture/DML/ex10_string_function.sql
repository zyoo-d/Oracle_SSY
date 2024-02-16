-- ex10_string_function.sql

/*

    문자열 함수
    
    대소문자 변환
    - upper(), lower(), initcap()
    - varchar2 upper(컬럼명)
    - varchar2 lower(컬럼명)
    - varchar2 initcap(컬럼명)

*/

select
    first_name,
    upper(first_name), --Ellen	ELLEN	ellen	Ellen
    lower(first_name),
    initcap(first_name)
from employees;

select
    'abc', 
    initcap('abc'), --abc	Abc     Abc
    initcap('ABC')
from dual;


-- 이름(first_name)에 'an' 포함된 직원? > 대소문자 구분없이
select
    first_name
from employees
    --where first_name like '%an%' or first_name like '%AN%'
    --    or first_name like '%An%' or first_name like '%aN%';
    where upper(first_name) like '%AN%';



/*

    문자열 추출 함수
    - substr()
    - varchar2 substr(컬럼명, 시작위치, 가져올 문자 개수)
    - varchar2 substr(컬럼명, 시작위치)
    
*/

select 
    name,
    substr(name, 1, 3),
    substr(name, 1)
from tblCountry;


select
    name, ssn,
    substr(ssn, 1, 2) as 생년,
    substr(ssn, 3, 2) as 생월,
    substr(ssn, 5, 2) as 생일,
    substr(ssn, 8, 1) as 성별
from tblInsa;


-- tblInsa > 김, 이, 박, 최, 정 > 각각 몇명?

select count(*) from tblInsa where substr(name, 1, 1) = '김'; --12
select count(*) from tblInsa where substr(name, 1, 1) = '이'; --14
select count(*) from tblInsa where substr(name, 1, 1) = '박'; --2
select count(*) from tblInsa where substr(name, 1, 1) = '최'; --1
select count(*) from tblInsa where substr(name, 1, 1) = '정'; --5

select
    count(case
        when substr(name, 1, 1) = '김' then 1
    end) as 김,
    count(case
        when substr(name, 1, 1) = '이' then 1
    end) as 이,
    count(case
        when substr(name, 1, 1) = '박' then 1
    end) as 박,
    count(case
        when substr(name, 1, 1) = '최' then 1
    end) as 최,
    count(case
        when substr(name, 1, 1) = '정' then 1
    end) as 정,
    count(case
        when substr(name, 1, 1) not in ('김', '이', '박', '최', '정') then 1
    end) as 나머지
from tblInsa;


/

    문자열 길이
    - length()
    - number length(컬럼명)

*/


--컬럼리스트에서 사용
select name, length(name) from tblCountry;

--조건절에서 사용
select name, length(name) from tblCountry
    where length(name) >3 ;

--''실행 순서 때문에 별칭을 붙혀서 조건절에 사용하는 건 실행이 안됨
select name, length(name) as length --3
from tblCountry                     --1
    where length >3 ;               --2

--''order by 절은 실행순서 상 별칭을 인식하고 있어서 실행가능함
select name, length(name) as length --3
from tblCountry                     --1
    where length(name) >3           --2
    order by length desc;           --4
    
    
--정렬에서 사용
select name, length(name) as length from tblCountry
    order by length(name) desc;


--substr
select name, ssn from tblInsa;

select name, ssn, substr(ssn, 8, 1) from tblInsa; --컬럼 리스트
select name, ssn from tblInsa where substr(ssn, 8, 1) = 1; --조건절
select name, ssn from tblInsa order by substr(ssn, 8, 1) asc; --정렬




/*
    문자열 검색
    - instr()
    - 검색어의 위치를 반환
    - number instr(컬럼명, 검색어)
    - number instr(컬럼명, 검색어, 시작위치)
    - number instr(컬럼명, 검색어, 시작위치, -1) // = lastIndexOf
    - 못찾으면 0을 반환 ''오라클은 서수가 1부터 시작하므로!

*/

select
    '안녕하세요. 홍길동님',
    
    instr ('안녕하세요. 홍길동님','홍길동') as r1, --8
    instr ('안녕하세요. 홍길동님','아무개') as r2, --0
    instr ('안녕하세요. 홍길동님. 홍길동님','홍길동') as r3, --8
    instr ('안녕하세요. 홍길동님. 홍길동님','홍길동',11) as r4, --14
    
    -- ''11을 직접 세기 번거로움 -> 시작위치: 첫번째 찾은 위치 반환(8)하는 함수 + 문자열의 길이(3) = 11
    instr ('안녕하세요. 홍길동님. 홍길동님','홍길동', instr('안녕하세요. 홍길동님. 홍길동님','홍길동')+length('홍길동')) as r4, --14
    
    -- ''뒤에서 부터 찾음
    instr ('안녕하세요. 홍길동님. 홍길동님','홍길동',-1) as r3 --14

from dual;


/*
    패딩
    - lpad(), rpad()
    - 의미: left padding(), right padding() --''여백
    
    - varchar2 lapd(컬럼명, 개수, 문자) --(''세번째 인자값 생략가능)
    - varchar2 rapd(컬럼명, 개수, 문자)
    -''자릿수를 맞추는 용도로 주로 사용함/ ex 셋자리 숫자로 출력 -> 001

*/

select

    lpad('a',5), --"    a" == %5s == %05d
    lpad('a',5,'b'), --"bbbba"
    lpad('aa',5,'b'), --"bbbaa"
    lpad('aaa',5,'b'), --"bbbaa"
    lpad('aaaa',5,'b'), --"baaaa"
    lpad('aaaaa',5,'b'), --"aaaaa"
    lpad('aaaaaa',5,'b'), --"aaaaa" :''자릿수를 넘어가면 세번째 인자값은 무의미하다.
    
    lpad('1',3,'0'), --001
    rpad('1',3,'0') --100

from dual;


/*
    공백 제거
    - trim(), ltrim(), rtrim()
    - varchar2 trim(컬럼명)
    - varchar2 ltrim(컬럼명)
    - varchar2 rtrim(컬럼명)
    
*/

select
    trim('       하나    둘    셋    '), --"하나    둘    셋"
    ltrim('       하나    둘    셋    '), --"하나    둘    셋    "
    rtrim('       하나    둘    셋    ') --"       하나    둘    셋"

from dual;

/*

    문자열 치환
    - replace()
    - varchar2 replace(컬럼명, 찾을 문자열, 바꿀 문자열)
    
    - regexp_replace() : 정규표현식 지원

*/

select
    replace('홍길동', '홍','김'), --"김길동"
    replace('홍길동', '이','김'), --"홍길동" (''찾을 문자열이 없으면 아무 조작도 하지 않는다)
    replace('홍길홍', '홍','김')  --"김길김" (''찾은 문자열이 여러개면 모두 대체한다.)
from dual;

--

select
    name,
    regexp_replace(name,'김[가-힣]{2}', '김OO'), -- ""ex) "김정훈-> 김OO"
    tel,
    regexp_replace(tel, '(\d{3})-(\d{4})-\d{4}','\1-\2-XXXX'), --''오라클에서는 [0-9]를 \d로 바로 쓸 수 있음 -> (\\d로) 이스케이프 안해도됨
    regexp_replace(tel, '(\d{3}-\d{4})-\d{4}','\1-XXXX'),
    regexp_replace(tel, '(\d{3}-\d{4}-)\d{4}','\1XXXX')

from tblInsa;

/*
    오라클은 String[] split() 없음
    
    
    문자열 치환
    - decode()
    - replace()와 유사
    - varchar2 decode(컬럼명, 찾을 문자열, 바꿀 문자열)
    - varchar2 decode(컬럼명, 찾을 문자열, 바꿀 문자열, 찾을 문자열, 바꿀 문자열)
    - varchar2 decode(컬럼명, 찾을 문자열, 바꿀 문자열[, 찾을 문자열, 바꿀 문자열]xN) --''한번에 여러개의 문자열을 찾고 바꿀 수 있음

*/

-- tblComedian. 성별 > 남자, 여자
select
    gender,
    case
        when gender = 'm' then '남자'
        when gender = 'f' then '여자'
    end as g1,
    
    replace(gender, 'm' ,'남자') as g2,
    replace(replace(gender, 'm' ,'남자'),'f','여자') as g2,
    
    decode(gender,'m','남자') as g3,
    decode(gender,'m','남자','f','여자') as g3

from tblComedian;



select
    replace('자바 코드','자바','Java'), --"Java 코드"
    decode('자바 코드','자바 코드','Java'), --"Java"
    decode('자바 코드','자바','Java') --"(null)" ''원본과 똑같은 것만 찾을 수 있고, 찾지 못하면 null 반환(replace는 기존 문자열 그대로 반환함)
from dual;


-- tblComedian. 남자수?  여자수?

/*
select
    case
        when gender = 'm' then 1
    end as m1,
    case
        when gender = 'f' then 1
    end as f1,
    --case구문과 같은 값이 나옴(case -> 조건에 해당하지 않는 건 null반환/ decode도 문자열 못찾으면 null 반환)
    decode (gender, 'm', 1) as m2,
    decode (gender, 'f', 1) as f2

from tblComedian;
*/

--위의 주석 코드에 count() 함수 추가함
select

    count(case
        when gender = 'm' then 1
    end) as m1,
    count(case
        when gender = 'f' then 1
    end) as f1,
    
    count(decode (gender, 'm', 1)) as m2,
    count(decode (gender, 'f', 1)) as f2

from tblComedian;


-- +) between, in 사용 > 컴파일 > 연산자 변환 => 컴파일시 연산자로 자동 변환되어 성능상의 차이없으므로, 가독성 향상을 위해 사용하는 것이 좋다.



