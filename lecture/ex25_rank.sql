-- ex25_rank.sql

/*
    순위 함수
    - rownum 기반으로 만들어진 함수
    
    1. rank() over(order by 컬럼명 [asc|desc])
        - 동일값  = 동일순서
        - 동일 순서 누적 0
    2. dense_rank() over(order by 컬럼명 [asc|desc])
        - 동일값 = 동일순서
        - 동일 순서 누적 X
    3. row_number() over(order by 컬럼명 [asc|desc])
        -rownum과 동일

*/
--tblInsa. 급여순으로 가져오시오. + 순위표시
--rownum사용
select a.*, rownum from
    (select name, buseo, basicpay from tblInsa order by basicpay desc)a;
    
--    1. rank() over(order by 컬럼명 [asc|desc])  
--rank() 사용    ''from절에 order by 사용 X
select
    name, buseo, basicpay,
    rank() over(order by basicpay desc) as rnum
from tblInsa;
/*
이상헌	개발부	2350000	8
최석규	홍보부	2350000	8
김영길	총무부	2340000	10
*/


--    2. dense_rank() over(order by 컬럼명 [asc|desc])
select
    name, buseo, basicpay,
    dense_rank() over(order by basicpay desc) as rnum
from tblInsa;
/*
이상헌	개발부	2350000	8
최석규	홍보부	2350000	8
김영길	총무부	2340000	9
*/

--    3. row_number() over(order by 컬럼명 [asc|desc])
select
    name, buseo, basicpay,
    row_number() over(order by basicpay desc) as rnum
from tblInsa;
/*
이상헌	개발부	2350000	8
최석규	홍보부	2350000	9
김영길	총무부	2340000	10
*/


--급여 5위?
select
    name, buseo, basicpay,
    row_number() over(order by basicpay desc) as rnum
from tblInsa
    where (row_number() over(order by basicpay desc)) = 5; --세번째 컬럼을 조건으로 가져옴 > 불가능 > select문을 서브쿼리로 고정시켜야함

-- 서브쿼리 사용
select * from    
    (select
        name, buseo, basicpay,
        row_number() over(order by basicpay desc) as rnum --이상헌	개발부	2350000	8
    from tblInsa)
        where rnum = 8; 
        
select * from    
    (select
        name, buseo, basicpay,
        rank() over(order by basicpay desc) as rnum --이상헌	개발부	2350000	8 r\n\ 최석규	홍보부	2350000	8
    from tblInsa)
        where rnum = 8;
        
        
-- < 순위함수 (+order by)
---------------------------------------------
-- > 순위 함수(+ order by + partition by) > 그룹별 순위

        
select
    name, buseo, basicpay,
    rank() over(partition by buseo order by basicpay desc) as rnum --''partition by 여러개의 컬럼을 기준으로 나눌수 있음
from tblInsa;

--전체 1등 반환
select * from
    (select
        name, buseo, basicpay,
        rank() over(order by basicpay desc) as rnum  --허경운	총무부	2650000	1
    from tblInsa)
        where rnum = 1;
        
--부서별 1등 반환
select * from
    (select
        name, buseo, basicpay,
        rank() over(partition by buseo order by basicpay desc) as rnum 
    from tblInsa)
        where rnum = 1;
/*
이순애	개발부	2550000	1
홍길동	기획부	2610000	1
김종서	영업부	2540000	1
박문수	인사부	2300000	1
이미경	자재부	2520000	1
허경운	총무부	2650000	1
최석규	홍보부	2350000	1
*/










