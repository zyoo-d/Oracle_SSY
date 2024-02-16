--단일라인 주석
/* 다중라인 주석 */

/*
파일다운로드
1. Oracle Express Edition 21c
	- 데이터베이스(DB)
    - 데몬, 서비스 프로그램 > 화면이 없는 프로그램 -'' 조작이 안됨 -> ''조작할 수 있는 프로그램이 필요 - '' 클라이언트 툴로 접근 가능 
    
2. SQL*Plus
    - 오라클과 같이 설치되는 기본 크랄이언트 프로그램(CLI, Command Line Interface)
    -  간단한 작업용 (''터미널에서만 사용가능? 다시 0944)

2. SQL Developer
	- 데이터베이스 클라이언트(DB Client)
    - 전문적인 작업용

3. eXERD
	- 모델링 툴


설치중 ... SYS, SYSTEM, PDBADMIN > 오라클 계정
java1234로 비밀번호 통일


오라클 서비스 
- OracleServiceXE > 데이터 베이스
- OracleOraDB21Home1TNSListener > 클라이언트 접속


SQL*Plus
- SYS(회장님), SYSTEM(사장님)

1. SYSTEM or 일반계정 로그인
    -로컬 or 원격 접속 가능 (''IP주소로 다른 컴퓨터에서 접속할 수 있음)
    (''사용자명: 대소문자 구분 X / PWD: 눈에 안보임 > backSpace 가능)

2. SYS 로그인
    -로컬 접속만 가능
    -사용자명 입력: /as sysdba
    
3. 일반 계정
    - 생성 후 사용
    -  SYS(회장님), SYSTEM(사장님)
    
    3.1 계정 생성
    - 오라클 12c 이후 > 상요자 계정명 > c##dog
        SQL > creat user 계정명 identified by 암호;
        SQL > grant connect, resource, dba to 계정명;
        SQL > alter user 계정명 default tablespace users quota unlimited in users;
        
        SQL > create user dog identified by java1234;
        SQL > create user c##dog identified by java1234;
        SQL > grant connect, resource, dba to c##dog;
        
    3.2 계정 생성(C##안붙히기)
        SQL > alter session set "_oracle_script" = true; //현재 접속에서만 적용
        SQL > create user puppy identified by java1234;
        
오라클 설치 > 개발용(학습용) 계정 제공
    -샘플 계정 + 샘플 데이터 제공
    - scott , hr
    -''현재 버전에서는 제공하지 않아서 직접 생성해줘야 한다.
    - C:\class\dev\21c\dbhomeXE\demo\schema\human_resources
    
    
--    
    
생성된 파일
- SQL 워크시트
- *.sql 파일
- 스크립트 파일(대중적인 표현)
(''파일과 계정은 무관하다. -> 파일의 계정명으로 명령어 실행 되는게 아니라 설정해줘야함.)

--

Database 과목
- 각종 프로그램
    - Oracle (기업용 DB)
    - MS-SQL
    - DB2
    - MySQL
    - MariaDB
    - PostreSQL
    - SQLite
    - MS Access
    
---

Oracle Database 1.0
~
Oracle Database 9i
Oracle Database 11g (''실무에서 주로 사용)
Oracle Database 18c (''실무에서 주로 사용)
~
Oracle Database 23c


Oracle Database 11g Enterprise Edition(기업용)
Oracle Database 11g Express Edition(무료)(''상업용 사용 가능) > CPU 1, 최대 가용 메모리 1GB (''컴퓨터 당 오라클 1개만 설치 가능 , 메모리가 늘어나면 사용하기 어려움)



---

오라클(데이터 베이스) <-> SQL Developer(클라이언트) <-> SQL('': 사용 언어) <-> 사람
SQL, Structured Query Language
- 구조화된 질의 언어
- 데이터베이스와 대화를 하기 위한 언어

---

오라클 시스템 + SQL 언어

1. 데이터베이스 관리자, DBA
    - 모든 것

2. 데이터베이스 개발자
    - 모든 것

3. 응용 프로그램 개발자(=자바 개발자)
    - '모든 것' or '일부 내용 > SQL 언어'
    
--
SQL
1. 데이터베이스 제작사와 독립적이다. (''sql을 프로그램화 시킨 것이 데이터베이스 프로그램)
    - 모든 데이터베이스에서 공통적으로 사용하기 위해 만들어진 언어
    - DB 제작사에서 SQL라는 언어를 잔신의 제품에 적용
    
2. 표준 SQL, ANSI-SQL
    -모든 DB에서 적용 가능한 SQL
    
3. 제조사별 SQL
    -특정 DB에만 적용 가능한 SQL
    - Oracle > PL/SQL
    - MS-SQL > T-SQL
    - '' 타제조사는 제조사별 SQL의 명칭은 따로 없음

-> 오라클 = ANSI-SQL(60%) + DB설계(10%) + PL/SQL(30%) 




관계형 데이터베이스, Relation Database, RDB
- 데이터를 표 형식으로 저장/관리 한다.
- SQL을 사용한다.



오라클
- 데이터베이스 + 데이터베이스 관리 시스템 > Relational Database Management System
- RDBMS

----
ANSI-SQL

1. DDL
    - Data Definition Language
    - 데이터 정의어
    - 데이터베이스 오브젝트(테이블, 뷰, 사용자, 인덱스)를 생성/수정/삭제하는 명령어
    - 구조를 생성/관리하는 명령어
    a. create: 생성
    b. drop: 삭제
    c. alter: 수정
    
    -데이터베이스 관리자
    -데이터베이스 개발자
    -프로그래머(일부)
    
    
2. DML **중요
    - Data Manipulation Language
    - 데이터 조작어
    - 데이터를 추가/수정/삭제/조회하는 명령어
    - CRUD
    - 사용 빈도가 가장 높음
    
    a. select: 조회(읽기) > [R]ead
    b. insert: 추가(생성) > [C]reate
    c. update: 수정 > [U]pdate
    d. delete: 삭제 > [D]elete
    
    -데이터베이스 관리자
    -데이터베이스 개발자
    -프로그래머(*************)
    
    
    
3. DCL
    - Data Control Language
    - 데이터 제어어
    - 계정 관리, 보안 관리, 트랜잭션 관리 등 ..
    a. commit **
    b. rollback **
    c. grant
    d. revoke
 
    -데이터베이스 관리자
    -데이터베이스 개발자
    -프로그래머(일부)   
    

4. DQL
    - Data Query Language
    - DML 중에서 select문을 따로 부르는 표현


5. TCL
    -Transation Control Language
    - DCL 중에서 commit, rollback을 따로 부르는 표현

--
오라클 인코딩
- 1.0 ~ 8: EUC-KR
- 9i ~ 현재: UTF-8


--
SQL > 대소문자를 구분하지 않는다.
- 파란색 > 키워드
- 검은색 > 식별자
*** 데이터(상수)는 대소문자를 구분한다.

*/
--같은 결과
select * from tabs;
SELECT * FROM TABS;

--다른 결과
SELECT * from tabs where table_name = 'JOBS';
select * from tabs where table_name = 'jobs';

--ALT + ' : 대소문자 변환
select*from tabs;
SELECT*FROM TABS;
SELECT*FROM tabs; --> 주로 사용

