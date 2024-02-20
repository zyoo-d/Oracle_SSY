-- ex기타_null.sql

        
--null 함수
--null을 치환하는 함수

--null value
-- 1. nvl(컬럼, 값) **암기
-- 2. nvl2(컬럼, 값, 값)
-- ''치환되는 값의 자료형이 같아야 함

--null값 치환
--case사용
select
    name,
    case
        when population is not null then population
        when population is null then 0
    end
from tblCountry;

--null value 사용
select name, nvl(population ,0) from tblCountry;

create table tblItem (
    seq number primary key,         --***
    name varchar2(100) not null,
    color varchar2(100) not null
);
drop table tblItem;
insert into tblItem (seq, name, color)
    values ((select nvl(max(seq),0)+1 from tblItem), '마우스', 'white'); --시퀀스객체 대신 사용 : (select nvl(max(seq),0)+1 from tblItem)
select * from tblItem;


select
    name, nvl2(population, 1 ,2) --''nvl2(컬럼명, not null시 치환값 ,null 치환값) // 원본으로 치환하고 싶으면 컬럼명그대로 사용: nvl2(population, population ,2)
from tblCountry;

