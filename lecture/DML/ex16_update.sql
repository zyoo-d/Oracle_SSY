-- ex16_update.sql

/*
    update 문
    - DMl
    - 원하는 행의 원하는 컬럼 값을 수정하는 명령어
    
    - update 테이블명 set 컬럼명 = 값 [, 컬럼명 = 값]xN [where 절]



*/

--트랜잭션 처리 (''나중에 자세히 수업함)
commit;
rollback;


select * from tblCountry;

-- 대한민국 수도 이전!: 서울 > 세종
update tblCountry set capital = '세종'; -- ''where절이 없으면, 컬럼의 모든 데이터가 다 변경됨.. >> rollback으로 복구! (트랜잭션 처리가 안 되어 있으면, 롤백안됨..!)

update tblCountry set capital = '세종' where name = '대한민국'; --(''테이블이 정의 되어 있는 곳에서 PK인지 확인 필요 > PK가 아니고 중복값이 있다면 의도하지 않은 데이터도 변경될 수 있음)

update tblCountry set
                    capital = '제주',
                    population = 5000,
                    continent = 'EU'
                  where name = '대한민국';
                   
-- AS > 인구수 10% 증가 (기존값 누적 예제)
update tblCountry set
                    population = population * 1.1
                        where continent = 'AS';

select * from tblCountry;

rollback;
