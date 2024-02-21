-- ex04_operator.sql

/*

    연산자, Operator
    
    1. 산술 연산자
    - +, -, *, /
    - %(없음) > 함수로 제공(mod())
    
    2. 문자열 연산자(concat)
    - +(X)  >  ||(o)
    
    3. 비교 연산자
    - > , >=, <, <=
    - =(같다), <>(같지 않다)
    - 논리값 반환 > boolean 존재 (X) > 명시적 표현 불가능 > 조건에서 사용 가능
    - 컬럼 리스트에서 사용 불가 ''->사용시 에러 발생: ORA-00923: FROM 키워드가 필요한 위치에 없습니다.
    - 조건절에서 사용

    4. 논리 연산자
    - and, or, not
    - 논리값 반환 > boolean 존재 (X) > 명시적 표현 불가능 > 조건에서 사용 가능
    - 컬럼 리스트에서 사용 불가
    - 조건절에서 사용
    
    5. 대입 연산자
    - =
    - 컬럼 =  값
    - update 문
    - 복합대입연산자(+=, -= ,...) > 없음
    
    6. 3항 연산자
    - 없음
    - 제어문 없음
    
    7. 증감 연산자
    - ++, --  > 없음
    
    8. SQL 연산자
    - ex) 자바 > instanceof
    - 오라클 > in, between, like, is 등 ...


*/

--산술 연산자
select
    population,
    area,
    population + area,
    population - area,
    population * area,
    population / area
from tblCountry;

-- 문자열 연산자 (더하기)
select
    name || capital
from tblCountry;

--비교 연산자
select
    population,
    area,
    population > area
 from tblCountry;
 

select 
    *
from tblCountry
    where population >5000;


select 
    *
from tblCountry
    where population >5000 and population < 10000;
    
 
 --논리 연산자
 select 
    *
from tblCountry
    where continent = 'AS'; --continent에 AS글자가 들어있는 것만





-- 컬럼의 별칭(Alias)
-- ''컬럼을 가공하면 그 컬럼의 이름이 표현식으로 대체된다. > 식별자로 사용하기에 부적절하므로 별칭을 사용한다.
-- : 되도록 가공된 컬럼에 사용
-- : *** 결과셋의 컬럼명이 식별자로 적합하지 않을 때 > 적합한 식별자로 수정
-- '' 식별자에 공백을 넣고 싶으면, 쌍따옴표로 묶음 > 공백이 포함되지 않도록 작성하는게 낫다.
-- '' escape > 쌍따옴표
-- : 별칭을 생성한 이후 > 별칭이 컬럼명이 된다.(원래의 이름은 사용하지 못함, 별칭만 사용할 수 있다.)

select
    name
from tblMen;

select
    name as 이름,
    age,
    age - 1 as 만나이,
    couple as "여자 친구"
from tblMen;

-- 테이블의 별칭 (as 사용 X)
-- : 편하게~ or 가독성 향상

select name, age, height from tblMen;

select name, age, height from hr.tblMen; --''소유계정 표시 / 소유계정이 표시되지 않으면, 실행 계정으로 설정됨 > 소유계정을 표시해 놓은 경우, 관리자 계정(또는 열람권한이 있는 계정)에서는 해당 구문을 열람할 수 있다.

select hr.tblMen.name, hr.tblMen.age, hr.tblMen.height from hr.tblMen; --''이렇게 써야 하는 경우 테이블에 별칭을 붙혀서 사용한다.
select m.name, m.age, m.height from hr.tblMen m; -- 별칭  m


