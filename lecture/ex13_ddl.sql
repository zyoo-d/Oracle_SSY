-- ex13_ddl.sql

/*
    [강의 순서]
    1. 초반 DML (ex01-ex12)
    2. DDL > 테이블(구조)
    3. 후반 DML
    4. 데이터 모델링
    5. PL/SQL


    DDL
    - Data Definition Language
    - 데이터 정의어
    - 데이터베이스 오브젝트(테이블, 뷰, 사용자, 인덱스)를 생성/수정/삭제하는 명령어
    - 구조를 생성/관리하는 명령어
    a. create: 생성
    b. drop: 삭제
    c. alter: 수정

    ''select를 잘 하기 위해 테이블을 생성(create)하는 것을 학습한다.

    테이블 생성하기 > 스키마 정의하기 > 컬럼의 이름, 자료형, 제약사항 정의
    
    
    create table 테이블명
    (
        컬럼 정의,
        컬럼명 자료형(길이) null 제약사항
    
    );
    
    제약 사항, Constraint
    - 해당 컬럼에 들어갈 데이터(값)에 대한 조건
        1. 조건을 만족하면 > 대입
        2. 조건을 불만족하면 > 에러 발생
    - 데이터 무결성을 보장하기 위한 도구 (*******)
    
    1. NOT NULL
        - 해당 컬럼이 반드시 값을 가져야 한다.
        - 해당 컬럼에 값이 없으면 에러 발생
        - 필수값
        
    2. PRIMARY KEY, PK
        - 기본키
        - 테이블의 행을 구분하기 위한 제약 사항
        - 모든 테이블은 반드시 1개의 기본키가 존재해야 한다.(**********) ''없어도 테이블생성은 되지만, 설계 오류임 -> PK 없으면 동일 데이터를 구분하지 못함.
        - UQ + NN
        
    3. FOREIGN KEY - 나중에
    
    4. UNIQUE
        - 유일하다. > 레코드 간의 중복값을 가질 수 없다.
        - null을 가질 수 있다. > 식별자가 될 수 없다.
        ex) 초등학교 교실
            - 학생(번호(PK), 이름(NN), 직책(UQ))
                    1, 홍길동, 반장
                    2, 아무개, null
                    3, 하하하, 부반장
        -> PK = UQ + NN
        
        
        
    5. CHECK
        - 사용자 정의형
        - where절 조건 > 컬럼의 제약 사항으로 적용
        
    
    6. DEFAULT
        -기본값 설정
        - inser/update 작업시 > 컬럼에 값을 안 넣으면 null 대신에 미리 설정한 값을 대입
    
    
*/
-- 무제약 상황
-- 메모 테이블
create table tblMemo (
    --컬럼명 자료형(길이) null 제약사항
    seq number(3) null,         --메모번호
    name varchar2(30) null,     --작성자
    memo varchar2(1000) null,   --메모내용
    regdate date           --작성날짜
);
-- ''null을 적거나 안적으면 -> 해당 컬럼의 값을 안 넣어도 된다는 의미

select * from tblMemo;

delete from tblMemo;

--insert into tblMemo (seq, name, memo, regdate)
--            values(1, '홍길동','메모입니다.','2024-02-15'); -- 작성시간이 자정으로 고정됨
--
--insert into tblMemo (seq, name, memo, regdate)
--            values(1, '홍길동','메모입니다.', to_date('2024-02-15 16:29:15','yyyy-mm-dd hh24:mi:ss'));

insert into tblMemo (seq, name, memo, regdate)
            values(1, '홍길동','메모입니다.', sysdate);

insert into tblMemo (seq, name, memo, regdate)
            values(2, '아무개','테스트입니다.', sysdate);
     
insert into tblMemo (seq, name, memo, regdate)
            values(3, '아무개','테스트입니다.', null);

insert into tblMemo (seq, name, memo, regdate)
            values(4, '아무개',null, null);

insert into tblMemo (seq, name, memo, regdate)
            values(5, null ,null, null);     

insert into tblMemo (seq, name, memo, regdate)
            values(null, null ,null, null);
            
select * from tblMemo;

-- 테이블 삭제
drop table tblMemo;

-- 1. NOT NULL
create table tblMemo (
    seq number(3) not null,         --메모번호(NN)
    name varchar2(30) null,         --작성자
    memo varchar2(1000) not null,   --메모내용(NN)
    regdate date null               --작성날짜
);

insert into tblMemo (seq, name, memo, regdate)
            values(1, '홍길동','메모입니다.', sysdate);

--ORA-01400: NULL을 ("HR"."TBLMEMO"."MEMO") 안에 삽입할 수 없습니다
insert into tblMemo (seq, name, memo, regdate)
            values(2, '홍길동',null, sysdate);
            
 --ORA-01400: NULL을 ("HR"."TBLMEMO"."MEMO") 안에 삽입할 수 없습니다           
insert into tblMemo (seq, name, memo, regdate)
            values(2, '홍길동','', sysdate); --빈문자열('')도 null값으로 취급한다.        

select * from tblMemo;



-- 2. PRIMARY KEY, PK : null 을 가질 수 없고, 중복값을 가질 수 없다. / 한 테이블은 하나의 PK만 갖는다.
-- NN의 성질을 가지고 있어서 따로 명시하지 않음
drop table tblMemo;

create table tblMemo (
    seq number(3) primary key,      --메모번호(NN) / 기본키로 사용할 값이 없어서 만들어진 대체키
    name varchar2(30) null,         --작성자
    memo varchar2(1000) not null,   --메모내용(NN)
    regdate date null               --작성날짜
);

insert into tblMemo (seq, name, memo, regdate)
            values(1, '홍길동','메모입니다.', sysdate);

--ORA-00001: 무결성 제약 조건(HR.SYS_C008451)에 위배됩니다 (unique constraint violated)
insert into tblMemo (seq, name, memo, regdate)
            values(1, '홍길동','메모입니다.', sysdate);
            
--ORA-01400: NULL을 ("HR"."TBLMEMO"."SEQ") 안에 삽입할 수 없습니다
insert into tblMemo (seq, name, memo, regdate)
            values(null, '홍길동','메모입니다.', sysdate);

insert into tblMemo (seq, name, memo, regdate)
            values(2, '홍길동','메모입니다.', sysdate); --나머지 값은 중복 가능

select * from tblMemo where seq = 2; --PK > 검색조건으로 사용

select * from tblMemo;


--4. UNIQUE
drop table tblMemo;

create table tblMemo (
    seq number(3) primary key,              --메모번호(NN)
    name varchar2(30) unique,               --작성자(UQ)
--    name varchar2(30) unique not null,    -- unique 키와 not null을 같이 쓰면 PK의 성질을 가지지만, PK를 대신해서 사용하지는 않음
    memo varchar2(1000) not null,           --메모내용(NN)
    regdate date null                       --작성날짜
);

insert into tblMemo (seq, name, memo, regdate)
            values(1, '홍길동','메모입니다.', sysdate);

--ORA-00001: 무결성 제약 조건(HR.SYS_C008454)에 위배됩니다
insert into tblMemo (seq, name, memo, regdate)
            values(2, '홍길동','메모입니다.', sysdate);
            
insert into tblMemo (seq, name, memo, regdate)
            values(3, null,'메모입니다.', sysdate);   
            
select * from tblMemo;


            
--5.CHECK    

drop table tblMemo;

create table tblMemo (
    seq number(3) primary key,      --메모번호(NN)
    name varchar2(30),              --작성자
    memo varchar2(1000) not null,   --메모내용(NN)
    regdate date null,               --작성날짜
    
    --중요도(1:중요,2:보통,3:안중요)
--  priority number(1) check (priority >= 1 and priority <=3) --조건 불만족시 에러
    priority number(1) check (priority between 1 and 3), --조건 불만족시 에러

    --카테고리(할일,공부,약속,가족,개인)
--  category varchar2(10) check (category = '할일'or category ='공부'or category ='약속'or category ='가족'or category ='개인'))
    category varchar2(10) check (category in ('할일','공부','약속','가족','개인'))
);

insert into tblMemo (seq, name, memo, regdate, priority, category)
            values(1, '홍길동','메모입니다.', sysdate,2,'공부');
            
--ORA-02290: 체크 제약조건(HR.SYS_C008456)이 위배되었습니다 > priority 에러
insert into tblMemo (seq, name, memo, regdate, priority, category)
            values(2, '홍길동','메모입니다.', sysdate,5,'공부');
            
--ORA-02290: 체크 제약조건(HR.SYS_C008457)이 위배되었습니다 > category 에러
insert into tblMemo (seq, name, memo, regdate, priority, category)
            values(3, '홍길동','메모입니다.', sysdate,3,'여행');
            
--null 값 삽입 됨          
insert into tblMemo (seq, name, memo, regdate, priority, category)
            values(4, '홍길동','메모입니다.', sysdate,3,'');
            
--null 값 삽입 됨    
insert into tblMemo (seq, name, memo, regdate, priority, category)
            values(5, '홍길동','메모입니다.', sysdate,null,'가족');
            
select * from tblMemo;            



--6.DEFAULT

drop table tblMemo;

create table tblMemo (
    seq number(3) primary key,          --메모번호(NN) / 기본키로 사용할 값이 없어서 만들어진 대체키
    name varchar2(30) default '익명',   --작성자
    memo varchar2(1000),                --메모내용
    regdate date default sysdate        --작성날짜
);

insert into tblMemo (seq, name, memo, regdate)
            values(1, '홍길동','메모입니다.', sysdate);
            
--null 이나, ''는 null값으로 반영됨           
insert into tblMemo (seq, name, memo, regdate)
            values(2, null,'메모입니다.', sysdate); --2		메모입니다.	24/02/15
            
insert into tblMemo (seq, name, memo, regdate)
            values(3, '','메모입니다.', sysdate); --2		메모입니다.	24/02/15

--default 반영하기위해
--방법1) 컬럼과 값 모두 삭제            
insert into tblMemo (seq, memo, regdate) 
            values(4,'메모입니다.', sysdate);
            
--방법2) default가 지정된 컬럼의 값에 직접 default라고 작성            
insert into tblMemo (seq, name, memo, regdate)
            values(5, default,'메모입니다.', sysdate);
            
insert into tblMemo (seq, name, memo, regdate)
            values(6, default,'메모입니다.', default);            

select * from tblMemo;


/*

    제약 사항을 만드는 방법(''장기적 관리 3 > 2 > 1)
    
    1. 컬럼 수준에서 만드는 방법
        - 이전에 수업했던 방식
        - 컬럼을 선언할때 제약사항도 같이 선언하는 방법
        
    
    2. 테이블 수준에서 만드는 방법
        - 컬럼 선언과 제약 사항은 선언을 분리시켜 선언하는 방법
        - 코드 관리
        
    3. 외부에서 만드는 방법 -> ex23
        - 테이블 수정 명령어 사용 > alter table
    
    



*/

--    1. 컬럼 수준에서 만드는 방법
drop table tblMemo;

create table tblMemo(
    seq number primary key,
    name varchar2(30),
    memo varchar2(1000),
    regdate date
);
insert into tblMemo (seq, name, memo, regdate)
            values(1, '홍길동','메모입니다.', sysdate);
            
--ORA-00001: 무결성 제약 조건(HR.SYS_C008660)에 위배됩니다
insert into tblMemo (seq, name, memo, regdate)
            values(1, '홍길동','메모입니다.', sysdate);
            
--           
drop table tblMemo;

create table tblMemo(
    seq number constraint tblmemo_seq_pk primary key, --식별자명: 테이블명_컬럼명_제약명 (소문자 작성)
    name varchar2(30),
    memo varchar2(1000),
    regdate date
);

insert into tblMemo (seq, name, memo, regdate)
            values(1, '홍길동','메모입니다.', sysdate);
            
--ORA-00001: 무결성 제약 조건(HR.TBLMEMO_SEQ_PK)에 위배됩니다
insert into tblMemo (seq, name, memo, regdate)
            values(1, '홍길동','메모입니다.', sysdate);
            
--2. 테이블 수준에서 만드는 방법
drop table tblMemo;

create table tblMemo(
    seq number,
    name varchar2(30),
    memo varchar2(1000),
    regdate date,
    
    --제약사항정의
    constraint tblmemo_seq_pk primary key (seq),
    constraint tblmemo_name_uq unique(name),
    constraint tblmemo_memo_ck check(length(memo) >= 10)
    
);

insert into tblMemo (seq, name, memo, regdate) values(1, '홍길동','메모입니다.', sysdate);
            






















