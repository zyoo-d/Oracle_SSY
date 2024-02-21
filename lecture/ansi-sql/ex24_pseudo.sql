-- ex24_pseudo.sql

/* 판서 다시~~

    의사 컬럼, Pseudo Column
    - 실제 컬럼이 아닌데 컬럼처럼 행동하는 객체
    
    rownum
    - 행번호
    - 시퀀스 객체와 무관! ''(!= sequence)
    - 테이블의 행번호를 가져오는 역할
    - 오라클 전용
    -''데이터 조작하기 위한 인덱스 등의 역할로 씀(DB에 저장되지 않고 동적으로 생성됨- when? from 절이 실행될  때 생성됨)

*/

select 
    name, buseo,    --컬럼(속성) > 객체(레코드)의 특성에 따라 다른 값을 가진다.
    100,            --상수 > 모든 객체(레코드)가 동일한 값을 가진다.
    substr(name,2), --함수 > I/O > 객체(레코드)의 특성에 따라 다른 값을 가진다.
    rownum          --의사 컬럼 
from tblInsa;


-- 게시판 > 페이지 > 페이징
-- 1페이지 > where rownum between 1 and 20 
-- 2페이지 > where rownum between 21 and 40 
-- 3페이지 > where rownum between 41 and 60 
-- ...

-- 호출 가능
select name, buseo, rownum from tblInsa where rownum = 1;
select name, buseo, rownum from tblInsa where rownum <= 5;

-- 호출 불가능
select name, buseo, rownum from tblInsa where rownum = 5;
select name, buseo, rownum from tblInsa where rownum > 5 and rownum <= 10;

--why?
-- *** 1. rownum은 from절이 호출될 때 계산되어 진다.
-- *** 2. where절에 의해 결과셋이 변화하면, 다시 계산되어 진다.

select name, buseo, rownum  --2. 소비 > 1에서 생성된 rownum을 가져온다. (호출될때, 생성되는 것 아님!)
from tblInsa;               --1. from절이 실행되는 순간 모든 레코드에 rownum 할당

select name, buseo, rownum  --3. 소비
from tblInsa                --1. 할당
where rownum = 1;           --2. 조건 (''like 루프를 돈다)


select name, buseo, rownum  --3. 소비
from tblInsa                --1. 할당
--where rownum = 3;         --2. where절 > 만족하지 못하는 레코드를 삭제함 > 다시 1부터 rownum 할당 >  절대 rownum = 1이 아닌 값을 단독으로 가져 올 수 없음
where rownum <= 3;           --> 반드시 1포함해서 가져와야함

--해결
--서브쿼리 + rownum

--급여가 5~10등까지 가져오시오.

--1.로우넘에 엘리아스 붙히기 > inline view로 만들기 > 2.원하는 컬럼과 rownum 다시 생성
-->외부로우넘에 alias 붙히기 > 한번더 서브쿼리로 만들기 > 내부로우넘을 조건으로 where절 작성
select name, basicpay, rnum1,rnum2, rownum from
    (select name, basicpay, rnum1, rownum as rnum2 from
        (select name, basicpay, rownum as rnum1
            from tblInsa                    
                order by basicpay desc))
    where rnum2 = 5;







--정리!
--1포함 가져오기
--1. 가장 안쪽 쿼리 > 정렬
select name, basicpay from tblInsa order by basicpay desc;
--2. 1을 서브쿼리로 묶는다.
select a.*,rownum from(select name, basicpay from tblInsa order by basicpay desc) a
    where rownum <= 5;


--2. 단일 로우넘 가져오기
--1. 가장 안쪽 쿼리 > 정렬
select name, basicpay from tblInsa order by basicpay desc;
--2. 1을 서브쿼리로 묶는다. + rownum에 alias
select a.*,rownum as rnum from(select name, basicpay from tblInsa order by basicpay desc) a;
--3. 2를 서브쿼리로 묶는다.
select * from (select a.*,rownum as rnum1 from(select name, basicpay from tblInsa order by basicpay desc) a)
    where rnum = 5;


-- +) * 와 단일 컬럼을 같이 쓰고 싶으면 테이블명.* 으로 써야함
select tblInsa.*, name from tblInsa;



--
select tblInsa.*, name from tblInsa;

--tlbInsa. 급여순 정렬 + 10명씩
select *
    from(select a.*, rownum as rnum
        from (select * from tblInsa order by basicpay desc) a) 
            where rnum between 1 and 10;                       

--''반복되는 것-> view로 생성 -> 조건절은 제외하고 만듦(함수가 아니라 조건절의 조건을 바꿀 방법이 없음 -> 뷰는 공통으로 들어가는 부분으로만 생성하기)
create or replace view vwBasicpay
as
select * from
    (select a.*, rownum as rnum
        from (select * from tblInsa order by basicpay desc) a);

select * from vwBasicpay where rnum between 1 and 10;
select * from vwBasicpay where rnum between 11 and 20;