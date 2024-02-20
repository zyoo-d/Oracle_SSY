-- ex26_with.sql

/*
    [WITH <Sub Query]
    SELECT column_list
    FROM table_name
    [WHERE search_condition]
    [GROUP BY group_by_expression]
    [HAVING search_condition]
    [ORDER BY order_expression [ASC|DESC]];

    WITH    <Sub Query>      1.
    SELECT   컬럼리스트      5.컬럼 지정 (보고 싶은 컬럼만 가져오기) > Projection
    FROM     테이블          2.테이블지정
    WHERE    검색조건        3.조건 지정 (보고 싶은 행만 가져오기) > Selection
    GROUP BY 그룹기준        4.그룹을 나눈다.
    ORDER BY 정렬기준;       6.정렬해서 반환

    with절
    - 인라인뷰(from절 서브쿼리)에 이름을 붙이는 기술

    with절 > 임시 View명
    view > 영구적 View명
    
    with 테이블명 as <서브쿼리>
    select 문;
    
    

*/

select * from (select name, buseo, jikwi from tblInsa where city = '서울');

with seoul as (select name, buseo, jikwi from tblInsa where city = '서울')
select * from seoul; --임시쿼리에 이름 붙여서 사용 가능


--
select * from (select name, age, couple from tblMen where weight < 90) a
    inner join (select name, age, couple from tblWomen where weight >60)b
        on a.couple = b.name;

-- with절 > 가독성향상 + 임시사용
with a as (select name, age, couple from tblMen where weight < 90), -- ''2개 이상의 임시쿼리는 ','쓰고 이어서 쓰면된
     b as (select name, age, couple from tblWomen where weight > 60)
select * from a
    inner join b
        on a.couple = b.name;
        
        
