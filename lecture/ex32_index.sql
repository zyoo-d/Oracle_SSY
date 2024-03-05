-- ex32_index.sql

/*

    인덱스, index
    
    - 검색을 빠른 속도로 하기 위해 사용하는 도구
    - SQL 명령 처리 속도를 빠르게 하기 위해서, 특정 컬럼에 대해서 생성하는 도구
    

    데이터베이스
    - 실제 DB(HDD) > 레코드 순서가 사용자가 원하는정렬 상태가 아니다.
        > DBMS가 자체적으로 정렬 + 저장
    
    1. 인덱스 사용X
    - 어떤 데이터를 검색 > 처음 ~ 끝까지 차례대로 검색 > table full scan
    
    2. 인덱스 사용O
    - 특정 컬럼 선택 > 별도의 테이블에 복사 > 미리 정렬 >> 인덱스
    - 인덱스 -> 참조 > 테이블(레코드)
    
    
    인덱스 장단점
    - 처리 속도를 향상 시킨다.
    - 무분별한 익덱스 사용은 DB 성능을 저하시킨다.
    
    자동으로 인덱스사 걸리는 컬럼
    1. Primary Key
    2. Unique 
    - *** 테이블에서 PK컬럼을 검색하는 속도 >>>> 테이블에서 PK가 아닌 컬럼을 검색하는 속도
    

*/


select * from tblInsa;

select * from tblAddresdsBook;
select count(*) from tblAddressBook; --2000

--''기존테이블 복사해서 인데스테이블 생성(제약사항은 복사안됨)
create table tblIndex
as
select * from tblAddressBook;
--''인덱스 개념 확인하기 위한 데이터수 부족 -> 자기참조 형태로 데이터 추가
insert into tblIndex select * from tblIndex; --X N번
select count(*) from tblIndex; --16,384,000

--+)시간 확인 (시스템 명령어) -- F5로 실행해야 확인할 수 있음
set timing on;
--+)블럭 잡고 F5 클릭 > 텍스트 형태로 데이터 반환
select * from tblIndex;

--인덱스없이 검색
select count(*) from tblIndex where name = '최민기'; --F5: 경과 시간: 00:00:03.420

--인덱스 생성
create index idxName
    on tblIndex(name);

--drop index idxName;

--인덱스 사용 검색 
select
    count(*) from tblIndex where name = '최민기'; --''인덱스 생성후 정상작동시 이렇게 쓰는게 정석

select /*+ index(tblIndex idxName) */             --''인덱스 생성후 작동 오류나면 강제로 인덱스 작동시키는 방법
    count(*) from tblIndex where name = '최민기';   


select * from tblInsa where num = 1010;         --인덱스 O (num-PK)
select * from tblInsa where name = '이순신';    --인덱스 X (name -일반 컬럼)



/*
    인덱스 종류
    1. 고유 인덱스
        - PK, UQ > 자동으로 생성되는 인덱스
        - 색인의 값이 중복이 불가능하다.
        
    2. 비고유 인덱스
        - 일반 컬럼 > 사용자가 생성하는 인덱스
        - 색인의 값이 중복이 가능하다.
        
    3. 단일 인덱스
        - 컬럼 1개를 대상으로
    4. 복합 인덱스
        -  컬럼 N개를 대상으로
        
    5. 함수 기반 인덱스


*/

create index 인덱스명 on 테이블명(컬럼명);         --비고유 인덱스
create unique index 인덱스명 on 테이블명(컬럼명);  --고유 인덱스

create index idxInsaBuseo on TblInsa(buseo);    --비고유 인덱스
create unique index idxInsaJikwi on tblInsa(jikwi); --직위는 중복되는 값이라  unique 붙이면 에러남 >ORA-01452: 중복 키가 있습니다. 유일한 인덱스를 작성할 수 없습니다
create unique index idxInsaName on tblInsa(name);-- 고유인덱스


--3. 단일인덱스
create index idxHometown on tblIndex(hometown); --> 단일 인덱스

select /*+ index(tblIndex idxHometown) */
    count(*) from tblIndex where hometown = '서울';--경과 시간: 00:00:00.857
    
select /*+ index(tblIndex idxHometown) */
    count(*) from tblIndex where hometown = '서울' and job = '학생';--경과 시간: 00:00:14.678 > 단일인덱스 & 여러조건 -> 탐색시간 증가 

--4. 복합인덱스
create index idxHometownJob on tblIndex(hometown,job);

select 
    count(*) from tblIndex where hometown = '서울' and job = '학생'; -- 00:00:03.289

select /*+ index(tblIndex idxHometownJob) */
    count(*) from tblIndex where hometown = '서울' and job = '학생'; --경과 시간: 00:00:00.217
    
select /*+ index(tblIndex idxHometownJob) */
    count(*) from tblIndex where job = '학생' and hometown = '서울'; --경과 시간: 00:00:00.036 > 컬럼 순서가 인덱스와 달라져도 상관없음
    
select /*+ index(tblIndex idxHometownJob) */
    count(*) from tblIndex where hometown = '서울'; --경과 시간: 00:00:01.312 > ''조건의 숫자가 인덱스의 컬럼보다 적어도, 등록된 인덱스가 아니면 시간이 더 걸릴 수 있음


--함수 기반 인덱스 // 판서 다시보기
select * from tblAddressBook;

select count(*) from tblIndex where substr(email, instr(email,'@')) = '@naver.com'; --경과 시간: 00:00:06.850

create index idxEmail on tblIndex(email); -- 인덱스 생성

select/*+ index(tblIndex idxEmail) */
    count(*) from tblIndex
    where substr(email, instr(email,'@')) = '@naver.com'; --경과 시간: 

drop index idxEmail;

create index idxEmail on tblIndex(substr(email, instr(email,'@'))); --> 인덱스 조건

select/*+ index(tblIndex idxEmail) */
    count(*) from tblIndex
    where substr(email, instr(email,'@')) = '@naver.com';
    
-- 프로젝트 맨 마직막 -> 부하 걸리는 작업 선별 > 인덱스 적용

-- 인덱스를 걸면 안되는 상황

/*
    
    인덱스를 사용해야 하는 상황
    
    1. 테이블에 데이터(레코드)가 많을 때
    2. where 절에 사용되는 횟수가 많은 컬럼에 적용 (*******)
    3. 인덱스 손익분기점 > 검색 결과가 원본 테이블의 10~15% 이하인 경우
    4. null을 포함하는 경우> 인덱스에는 null을 제외
    
    인덱스를 사용하지 말아야 하는 상황
    1. 테이블에 데이터(레코드)가 적을 때(풀 스캔과 차이 없음)
    2. 인덱스 손익분기점 > 검색 결과가 원본 테이블의 10~15% 이상인 경우
    3. 해당 테이블이 삽입, 수정, 삭제가 빈번할 경우 > 절대 인덱스 XXXX!!!!! > 데이터 수정할 때 마다 index 다시 걸어야 함

*/