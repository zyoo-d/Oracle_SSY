-- ex18_groupby.sql

/*

    group by
    
    
    [WITH <Sub Query]
    SELECT column_list
    FROM table_name
    [WHERE search_condition]
    [GROUP BY group_by_expression]
    [HAVING search_condition]
    [ORDER BY order_expression [ASC|DESC]];


    SELECT   컬럼리스트      4.컬럼 지정 (보고 싶은 컬럼만 가져오기) > Projection
    FROM     테이블          1.테이블지정
    WHERE    검색조건        2.조건 지정 (보고 싶은 행만 가져오기) > Selection
    GROUP BY 그룹기준        3.그룹을 나눈다.
    ORDER BY 정렬기준;       5.정렬해서 반환

    GROUP BY절
    - 특정 기준으로 레코드를 그룹으로 나눈다.(수단)
        > 각각의 그룹을 대상으로 집계함수를 실행한다.(목적)
    


*/

-- tblIns. 부서별 평균 급여?
select * from tblInsa;

select round(avg(basicpay)) from tblInsa; --155만원, 전체 60명

select distinct(buseo) from tblInsa; --7개

select round(avg(basicpay)) from tblInsa where buseo = '기획부'; --185(만원) 
select round(avg(basicpay)) from tblInsa where buseo = '총무부'; --171
select round(avg(basicpay)) from tblInsa where buseo = '개발부'; --138
select round(avg(basicpay)) from tblInsa where buseo = '영업부'; --160
select round(avg(basicpay)) from tblInsa where buseo = '홍보부'; --145
select round(avg(basicpay)) from tblInsa where buseo = '인사부'; --153
select round(avg(basicpay)) from tblInsa where buseo = '자재부'; --141

select 
    buseo,
    round(avg(basicpay)) as "부서별 평균급여", --''group by절 -> 집계함수 필수
    count(*) as "부서별 인원수",
    sum(basicpay) as "부서별 총지급액",
    max(basicpay) as "부서내 최고 급여",
    min(basicpay) as "부서내 최저 급여"
from tblInsa
    group by buseo;     -- group by 그룹기준


--남사수? 여자수?
--decode -> 컬럼으로 나눠짐
select
    count(decode(gender,'m',1)) as 남자수,
    count(decode(gender,'f',2)) as 여자수
from tblComedian;

-- group by 행으로 나눠짐
select
    gender,
    count(*)
from tblComedian
    group by gender;


--group by 활용
select
    jikwi, count(*)
from tblInsa
    group by jikwi;
    
    
select city, count(*)
from tblInsa group by city;

--주의)
select
--  count(*) as cnt, name --''주의: group by -> select절에 집계함수와 일반컬럼을 같이 사용할 수 없다.    
    count(*) as cnt, buseo -- ''기준이 되는 컬럼은 집합데이터로 간주되어 select 절에 같이 쓸 수 있다.
from tblInsa
    group by buseo
    orger by cnt desc;

--다중그룹, 다중정렬
select
    count(*), buseo,jikwi
from tblInsa
    group by buseo --1차그룹
            ,jikwi 
    order by buseo  --1차정렬
            ,jikwi; --2차정렬
            
-- ''위의 예제 정렬 기준만 변경 
select
    count(*), jikwi, buseo
from tblInsa
    group by jikwi, buseo
    order by jikwi, buseo;

-- 급여별 그룹
-- 100만원 미만
-- 100만원 이상~200만원 미만
-- 200만원 이상

select
    basicpay,
    count(*)
from tblInsa
    group by basicpay;

--판서~
select
    --basicpay, --basicpay를 가공한 값을 기준값으로 사용한거라서 basicpay는 사용 못함
    (floor(basicpay / 1000000)+1) * 100 || '만원 이하'),
    count(8)
from tblInsa
    group by floor(basicpay / 1000000);
    
--tblInsa. 남자? 여자?
select
    substr(ssn, 8,1),
    count(*)
from tblInsa
    group by substr(ssn, 8,1);
    
--tblTodo. 완료? 미완료? -> null or not null? -> case사용해야함
select
    case
        when completedate is not null then 1
        else 2
    end,
    count(*)
from tblTodo
     group by case --select 이후에 실행됨, 별칭으로 대신할 수 없음
        when completedate is not null then 1
        else 2
    end;

--tblInsa. 과장+부장 몇명? 나머지 몇명? 판서


select
    case 
        when jikwi in ('과장','부장') then 1
        else 2
        end,
    count(*)
from tblInsa
    group by case 
                when jikwi in ('과장','부장') then 1
                else 2
            end;
    
 /*
    HAVING절
    - 그룹에 대한 조건
    - having을 만족하는 그룹만 결과셋에 남는다.
    
    SELECT   컬럼리스트      5.컬럼 지정 (보고 싶은 컬럼만 가져오기) > Projection
    FROM     테이블          1.테이블지정
    WHERE    검색조건        2.조건 지정 (보고 싶은 행만 가져오기) > 레코드에 대한 조건 -> 집계함수 사용 안됨
    GROUP BY 그룹기준        3.그룹을 나눈다.
    HAVING   조건            4.그룹에 대한 조건(그룹에 대한 where절) -> 집계함수사용 필수
    ORDER BY 정렬기준;       6.정렬해서 반환
 
    
 */ 
 
select
    count(*)
from tblInsa
    where basicpay >= 1500000;

--전직원중 150만원 이상 급여를 받는 사람을 부서별로 그룹지어 인원수를 가져오시오.
select                          --4. 각 그룹별 > 집계함수
    buseo, count(*),
    round(avg(basicpay))
from tblInsa                    --1. 60명의 데이터를 가져온다.
    where basicpay >= 1500000   --2. 60명을 대상으로 조건을 검사한다.
        group by buseo;         --3. 2번을 통과한 사람(27명)들을 대상으로 그룹(7개 그룹)을 짓는다.


--전직원을 부서별로 그룹짓고, 그룹별 평균 급여가 150만원 이상인 그룹의 인원수?
select  --4. 조건을 통과한 그룹(4그룹)에 대한 집계함수
    buseo,
    count(*),
    round(avg(basicpay))
from tblInsa  --1. 60명의 데이터를 가져온다.
    group by buseo --2. 60명을 대상으로 그룹을 짓는다.
        having round(avg(basicpay)) >= 1500000; --3.그룹에 대한 조건(집계함수)을 검사한다. 
        
--같이 쓸 수 있음
select 
    buseo,
    count(*),
    round(avg(basicpay))
from tblInsa
    where basicpay >= 1000000
    group by buseo
        having round(avg(basicpay)) >= 1500000; 


--부서내 과장/부장의 인원수가 3명 이상인 부서들?
--부서내 -> group by
--과장/부장 -> where
--인원수가 3명이상 -> having

select
    buseo,
    count(*)
from tblInsa
    where jikwi in('과장','부장')
        group by buseo
            having count(*) >= 3;
    
/*
    rollup()
    - group by의 집계 결과를 좀 더 자세하게 반환
    - 그룹별 중간 통계
    - n차 그룹 -> n개의 중간통계
*/
--1차 그룹
select
    buseo,
    count(*),
    sum(basicpay),
    round(avg(basicpay)),
    max(basicpay),
    min(basicpay)
from tblInsa
    group by rollup(buseo);

--다중 그룹 
--2차 그룹
select
    buseo,jikwi,
    count(*),
    sum(basicpay),
    round(avg(basicpay)),
    max(basicpay),
    min(basicpay)
from tblInsa
--    group by buseo,jikwi;
    group by rollup(buseo,jikwi); 

--3차그룹
select
    buseo,jikwi,city,
    count(*),
    sum(basicpay),
    round(avg(basicpay)),
    max(basicpay),
    min(basicpay)
from tblInsa
--    group by buseo,jikwi,city;
    group by rollup(buseo,jikwi,city); 


/*
    cube()
    - group by의 집계 결과를 좀 더 자세하게 반환
    - 그룹별 중간 통계
    - ''n차그룹: 2^n-1개의 중간 통계를 반환함
*/

--1차 그룹
select
    buseo,
    count(*),
    sum(basicpay),
    round(avg(basicpay)),
    max(basicpay),
    min(basicpay)
from tblInsa
    group by cube(buseo);


--2차 그룹
select
    buseo,jikwi,
    count(*),
    sum(basicpay),
    round(avg(basicpay)),
    max(basicpay),
    min(basicpay)
from tblInsa
    group by cube(buseo,jikwi); 

--3차그룹
select
    buseo,jikwi,city,
    count(*),
    sum(basicpay),
    round(avg(basicpay)),
    max(basicpay),
    min(basicpay)
from tblInsa
    group by cube(buseo,jikwi,city); 
























