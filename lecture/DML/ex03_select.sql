--ex03_select.sql

/*

    SQL
    - Query
    - 시퀄(SEQUEL)
    
    
    SELECT문
    - DML, DQL
    - SQL은 SELECT로 시작해서 SELECT로 끝난다.
    - CRUD
    - 데이터베이스의 테이블로부터 데이터를 가져오는 명령어(읽기,조회)
    
    ''아래 각각의 문장: 절 > 절을 구성해서 SELECT문을 만든다
    [WITH <Sub Query]
    SELECT column_list
    FROM table_name
    [WHERE search_condition]
    [GROUP BY group_by_expression]
    [HAVING search_condition]
    [ORDER BY order_expression [ASC|DESC]];

--
    ''SELECT문의 기본 구문: SELECT절과 FROM절은 필수
    SELECT column_list -- 원하는 컬럼을 지정 > 해당 컬럼만 가져와라.
    FROM table_name -- 데이터 소스. 어떤 테이블로부터 데이터를 가져와라.
    
    각 절의 (실행)순서 / ''FROM -> SELECT (작성순서랑 다름)
    2. SELECT
    1. FROM
    
    
*/

select* --모든컬럼 지정
from tblType;


--HR > EMPLOYEES

--테이블 구조 확인
desc employees;


-- ''다양한 작성법
select * from employees;

select *
from employees;

select *
    from employees;
    
select 
    *
from
    employees;

-- ''데이터 로드 확인
select * from tblCountry; --14
select * from tblComedian; --10
select * from tblDiary; --10
select * from tblInsa; --60
select * from tblMen; --10
select * from tblWomen; --10
select * from tblTodo; --20

-- select > 결과 테이블(Result Table, ResultSet)
select *  --모든 컬럼
from tblCountry;

select name --단일 컬럼 ''county table의 name만
from tblCountry;


select name, capital --다중 컬럼 ''county table의 name과 capital만
from tblCountry;

select capital, name --다중 컬럼 > 컬럼순서는 자유롭게 불러올 수 있음
from tblCountry;


select name, name -- 동일한 컬럼 불러올 수 있음
from tblCountry;

select
    name, length(name) --name, 글자수
from tblCountry;

/*
--테이블명 오타
--ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
--00942. 00000 -  "table or view does not exist"
select
    name, length(name)
from tblCounty;
*/

/*
--컴럼명 오타
--ORA-00904: "NME": 부적합한 식별자
--00904. 00000 -  "%s: invalid identifier"
select
    nme, length(name)
from tblCountry;
*/