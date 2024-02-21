-- ex23_alter.sql
/*
    DDL > 객체 조작
    - 객체 생성: create
    - 객체 수정: alter
    - 객체 삭제: drop
    
    DML > 데이터조작
    - 데이터 생성: insert
    - 데이터 수정: update
    - 데이터 삭제: delete
    
 --insert, update, delete > DML조작 복구가능 / 나머지는 복구 안됨
   
    [alter] 
    테이블 수정하기
    - 테이블 수정 > 테이블 정의 수정 > 스키마 수정 > 컬럼 수정 > 컬럼명 or 자료형(길이) or 제약사항 등...
    - 되도록 테이블을 수정하는 상황을 발생시키면 안된다!
    
    테이블 수정하는 상황 발생
    1. 테이블 삭제(drop) > 테이블 DDL(create문) 수정 > 수정된 DDL로 다시 테이블 생성
        a. 기존 테이블에 데이터가 없었을 경우 > 아무 문제 없음
        b. 기존 테이블에 데이터가 있었을 경우 > 미리 데이터 백업 > 테이블 삭제> 수정된 테이블 생성 > 데이터 복구
            - 개발 중에 사용 가능
            - 공부할 때 사용 가능
            - 서비스 운영 중에는 많이 부담되는 방법
            
    2. alter 명령어 사용 > 기존 테이블의 구조 변경
        a. 기존 테이블에 데이터가 없었을 경우 > 아무 문제 없음
        b. 기존 테이블에 데이터가 있었을 경우 > 상황에 따라 비용 차이 발생
            - 개발 중에 사용 가능
            - 공부할 때 사용 가능
            - 서비스 운영 중에는 덜 부담되는 방법
            
*/
drop table tblEdit;
create table tblEdit (
    seq number primary key,
    data varchar2(20) not null
);

insert into tblEdit values (1,'마우스');
insert into tblEdit values (2,'키보드');
insert into tblEdit values (3,'모니터');

-- Case 1. 새로운 컬럼 추가하기
alter table tblEdit
    add(컬럼 정의);

alter table tblEdit
    add(price number);
    
-- not null 컬럼 추가 불가 (''기존의 데이터에 새로운 열을 추가하면 null 값으로 생성되므로, not null 제약 설정 불가)
-- ORA-01758: 테이블은 필수 열을 추가하기 위해 (NOT NULL) 비어 있어야 합니다.
alter table tblEdit
    add(qty number not null);
--> 테이블 모두 지우고 컬럼 추가
delete from tblEdit;
alter table tblEdit
    add(qty number not null);
--> 수정된 상황에 맞게 데이터 복구
insert into tblEdit values (1,'마우스',1000,1);
insert into tblEdit values (2,'키보드',1000,1);
insert into tblEdit values (3,'모니터',3000,2);

select * from tblEdit;
desc tblEdit;

--''기존값 데이터에 default값 지정해서 컬럼 추가
alter table tblEdit
    add (color varchar2(30) default 'white' not null);

--Case 2.컬럼을 삭제하기 >> ''복구안됨
alter table tblEdit
    drop column 컬럼명;

alter table tblEdit
    drop column color;

alter table tblEdit
    drop column qty;

alter table tblEdit
    drop column seq; --PK 삭제!! > 절대 금지!!!!

--Case 3. 컬럼을 수정하기
insert into tblEdit values (4,'맥북 M2 프로 2023 고급형');
-- ''SQL 오류: ORA-12899: "HR"."TBLEDIT"."DATA" 열에 대한 값이 너무 큼(실제: 31, 최대값: 20)
--> Case 3.1 컬럼길이 수정하기(확장/축소)
alter table tblEdit
    modify (컬럼정의);
-- 확장    
alter table tblEdit
    modify (data varchar2(100)); --확장
insert into tblEdit values (4,'맥북 M2 프로 2023 고급형');
-- 축소
alter table tblEdit
    modify (data varchar2(20)); --ORA-01441: 일부 값이 너무 커서 열 길이를 줄일 수 없음

alter table tblEdit
    modify (data varchar2(50)); -- 가능

--Case 3.2 컬럼의 제약사항 수정하기(not null)
alter table tblEdit
    modify (data varchar2(100) null);  -- not null > null
alter table tblEdit
    modify (data varchar2(100) not null);  -- null > not null

alter table tblEdit
    modify (data varchar2(100) unique);  -- 제약 사항 추가시 다른 구문으로 사용



--Case 3.3 컬럼의 자료형 바꾸기 -> 데이터 삭제(delete) -> 컬럼 수정(modify) -> 데이터 복구 
delete from tblEdit;


alter table tblEdit
    modify (data number);


--Case 4 제약 사항 조작 (''ex13 테이블수준과 비교해서 보기)
drop table tblEdit;


--''테이블과 제약조건을 분리해서 작성 > DB 관리자가 주로 사용
create table tblEdit (
    seq number,
    data varchar2(20)
);

alter table tblEdit
    add constraint tbledit_seq_pk primary key(seq);

alter table tblEdit
    add constraint tbledit_data_uq unique(data);

insert into tblEdit values (1, '강아지');
insert into tblEdit values (2, '고양이');
--insert into tblEdit values (3, '고양이'); --''uk제약 위반 > 제약조건 정상작동함
insert into tblEdit values (3, null);

--제약사항 삭제
alter table tblEdit
    drop constraint tbledit_data_uq;

insert into tblEdit values (4, '고양이'); --''uk제약 사라져서 행삽입 가능

desc tblEdit;

select * from tblEdit;




