-- ex22_union.sql

/*

    관계 대수 연산
    1. 셀렉션  > select where
    2. 프로젝션 > select column
    3. 조인   ''> 컬럼끼리 합침
    4. 합집합(union), 차집합(minus), 교집합(intersect)
    
    유니온, union ''레코드끼리 합침
    - 테이블과 테이블을 합치는 연산
    - 스키마가 동일한 결과셋끼리만 가능
    
*/
--    유니온, union

select * from tblMen
union
select * from tblWomen;

-- 결과셋의 스키마가 다른 경우
--ORA-01789: 질의 블록은 부정확한 수의 결과 열을 가지고 있습니다.
select * from tblInsa
union
select * from tblTodo;
-- 결과셋의 스키마가 동일하게 가공 후 union
select name, ibsadate from tblInsa
union
select title, adddate from tblTodo;

-- 회사 > 게시판 > 부서별 게시판
select * from 영업부게시판;
select * from 총무부게시판;
select * from 개발부게시판;

-- 사장님 > 모든 부서의 게시판 글 > 한번에 열람
select * from 영업부게시판
union
select * from 총무부게시판
union
select * from 개발부게시판;

-- 야구선수 > 공격수, 수비수
select * from 공격수;
select * from 수비수;

select 컬럼리스트 from 공격수
union
select 컬럼리스트 from 수비수;

-- SNS > 다량의 데이터 > 하나의 테이블 > 기간별 테이블 분할
select * from 게시판2022;
select * from 게시판2023;
select * from 게시판2024;

select * from(
select * from 게시판2022
union
select * from 게시판2023
union
select * from 게시판2024)
    where 조건; -- ''각각에는 where절 작성 불가 > sub-set으로 묶은 후 작성


create table tblAAA (
    name varchar2(30) not null,
    color varchar2(30) not null
);

create table tblBBB (
    name varchar2(30) not null,
    coler varchar2(30) not null
);


insert into tblAAA values ('강아지','검정');
insert into tblAAA values ('고양이','노랑');
insert into tblAAA values ('토끼','갈색');
insert into tblAAA values ('거북이','녹색');
insert into tblAAA values ('강아지','회색');


insert into tblBBB values ('강아지','검정');
insert into tblBBB values ('고양이','노랑');
insert into tblBBB values ('호랑이','주황');
insert into tblBBB values ('사자','회색');
insert into tblBBB values ('고양이','검정');


-- union > 수학의 집합 > 중복 제거
select * from tblAAA
union
select * from tblBBB;

-- union all > 중복 허용
select * from tblAAA
union all
select * from tblBBB;

-- intersect > 교집합

select * from tblAAA
intersect
select * from tblBBB;

-- minus > 차집합

select * from tblAAA
minus
select * from tblBBB;


select * from tblBBB
minus
select * from tblAAA;
