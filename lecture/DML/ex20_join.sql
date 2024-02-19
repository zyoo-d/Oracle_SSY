-- ex20_join.sql

/*

    관계형 데이터베이스 시스템이 지양하는 것들
    - 테이블을 다시 수정해야 고쳐지는 것들 > 구조적 문제!

    1. 테이블에 기본키가 없는 상태 > 테이터 조작 불가능(레코드 식별 불가능)
    2. null이 많은 상태의 테이블 > 공간 낭비 + SQL 작업 불편
    3. 데이터가 중복되는 상태 > 공간 낭비 + 데이터 조작 문제 발생 (일관성 저하) ''ex.데이터 수정 및 삭제시 누락되는 데이터 발생
    4. 하나의 속성값이 원자값이 아닌 상태 > 더 이상 쪼개지지 않는 값을 넣어야 한다. 
    
    -> 위와 같은 문제가 발견되면, 테이블을 다시 생성하는 것이 최우선 순위이다.

    


*/

--직원 정보
--직원(번호(PK), 직원명, 급여, 거주지, 담당프로젝트)

create table tblStaff(
    seq number primary key,     --직원번호(PK)
    name varchar2(30) not null, --직원명
    salary number not null,     --급여
    address varchar2(300) not null,  --거주지
    project varchar2(300)
);

insert into tblStaff (seq, name, salary, address, project)
    values(1,'홍길동',300,'서울시','홍콩 수출');
    

insert into tblStaff (seq, name, salary, address, project)
    values(2,'아무개',250,'인천시','TV 광고');
    

insert into tblStaff (seq, name, salary, address, project)
    values(3,'하하하',350,'의정부시','매출 분석');
    
select * from tblStaff;

--'홍길동'에게 담당 프로젝트 1건 추가 > '고객 관리'
-- 홍콩 수출 + 고객 관리

update tblStaff set
    project = project || ',고객 관리' --''속성값이 원자값이 아님
        where seq = 1;
        
insert into tblStaff (seq, name, salary, address, project)
    values(4,'홍길동',300,'서울시','고객 관리');        --''데이터 중복 발생

insert into tblStaff (seq, name, salary, address, project)
    values(5,'호호호',250,'서울시','게시판 관리, 회원 응대');

insert into tblStaff (seq, name, salary, address, project)
    values(6,'후후후',250,'부산시','불량 회원 응대');
    
select * from tblStaff;

--회원 응대 > 담당자?
select * from tblStaff where project = '회원 응대';
select * from tblStaff where project like '%회원 응대%'; --''회원 응대가 포함된 다른 값도 같이 반환됨
--> 원인: 테이블 스키마(구조)가 잘못된 상태
--> 해결: 테이블 재구성
drop table tblStaff;

--> 문제가 되는 컬럼을 제거하고 독립적으로 생성

--> 참조 방향 결정
-- : 테이블(레코드) 생성 시간을 고려 // 나중에 생성되는 데이블가 미리 생성된 테이블을 참조
-- ''시간과 상관없이 생성되는 데이터는 반대 방향으로 참조하는 경우도 있음

-- 직원 정보
-- 직원(번호(PK), 직원명, 급여, 거주지)
create table tblStaff(
    seq number primary key,     --직원번호(PK)
    name varchar2(30) not null, --직원명
    salary number not null,     --급여
    address varchar2(300) not null  --거주지
);
-- 프로젝트(번호(PK), 담당 프로젝트)
create table tblProject (
    seq number primary key,         --프로젝트번호(PK)
    project varchar2(100) not null, --프로젝트명
    staff_seq number null           --담당직원번호
);


















        
        
        