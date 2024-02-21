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
drop table tblProject;

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
    staff_seq number not null           --담당직원번호
);

insert into tblStaff (seq, name, salary, address) values (1, '홍길동',300,'서울시');
insert into tblStaff (seq, name, salary, address) values (2, '아무개',250,'인천시');
insert into tblStaff (seq, name, salary, address) values (3, '하하하',350,'부산시');

insert into tblProject (seq, project, staff_seq) values (1, '홍콩 수출',1); --홍길동
insert into tblProject (seq, project, staff_seq) values (2, 'TV 광고',2); --아무개
insert into tblProject (seq, project, staff_seq) values (3, '매출 분석',3); --하하하
insert into tblProject (seq, project, staff_seq) values (4, '노조 협상',1); --홍길동
insert into tblProject (seq, project, staff_seq) values (5, '대리점 분양',2); -- 아무개

select * from tblStaff;

select * from tblProject;
/*
1	홍콩 수출	1
2	TV 광고	    2
3	매출 분석	3
4	노조 협상	1
5	대리점 분양	2
*/

--'TV 광고' 담당자?
select * from tblProject where project = 'TV 광고';
--> 2	TV 광고	2
select * from tblStaff where seq = 2;
--> 2	아무개	250	인천시
select * from tblStaff where seq =(select staff_seq from tblProject where project = 'TV 광고');
--> 2	아무개	250	인천시

-- A.신입 사원 입사 > 신규 프로젝트 배정
-- A.1 신입 사원 추가
insert into tblStaff( seq, name, salary, address)
    values (4, '호호호', 250, '성남시');
--A.2 신규 프로젝트 배정
insert into tblProject (seq, project, staff_seq)
    values (6, '자재 매입',4);

select * from tblStaff;
select * from tblProject;

-- A.3 신규프로젝트 추가 > 논리 오류! > 에러 발생 X '' > staff_seq(존재하지 않는 직원의 번호) 작성 오류 
insert into tblProject (seq, project, staff_seq)
    values (7, '고객 유치',5); 
select * from tblStaff where seq =(select staff_seq from tblProject where project = '고객 유치'); --> 반환 값 없음

-- B.'홍길동' 퇴사

-- B.1 '홍길동' 삭제 > 에러(X) > 논리 오류! ''staff에는 없지만, project에는 있음
delete from tblStaff where seq = 1;


-- B.2.1 '홍길동'(staff_seq:1) 삭제 > 업무 인수 인계(위임)(staff_seq:2)
update tblProject set staff_seq = 2 where staff_seq = 1;
-- B.2.2 '홍길동' 삭제
delete from tblStaff where seq = 1;

select * from tblStaff;
select * from tblProject;


--> 논리적 오류를 물리적 오류로 설정하기 -> (FK) -> references tblStaff(seq) 
-- 직원 정보
-- 직원(번호(PK), 직원명, 급여, 거주지)
create table tblStaff( -- 부모테이블
    seq number primary key,     --직원번호(PK)
    name varchar2(30) not null, --직원명
    salary number not null,     --급여
    address varchar2(300) not null  --거주지
);

-- 프로젝트(번호(PK), 담당 프로젝트)
create table tblProject ( --자식테이블: 부모테이블보다 먼저 생성할 수 없음> ORA-00942: 테이블 또는 뷰가 존재하지 않습니다
    seq number primary key,         --프로젝트번호(PK)
    project varchar2(100) not null, --프로젝트명
    staff_seq number not null references tblStaff(seq)        --담당직원번호(FK)
);        

insert into tblStaff (seq, name, salary, address) values (1, '홍길동',300,'서울시');
insert into tblStaff (seq, name, salary, address) values (2, '아무개',250,'인천시');
insert into tblStaff (seq, name, salary, address) values (3, '하하하',350,'부산시');

insert into tblProject (seq, project, staff_seq) values (1, '홍콩 수출',1); --홍길동
insert into tblProject (seq, project, staff_seq) values (2, 'TV 광고',2); --아무개
insert into tblProject (seq, project, staff_seq) values (3, '매출 분석',3); --하하하
insert into tblProject (seq, project, staff_seq) values (4, '노조 협상',1); --홍길동
insert into tblProject (seq, project, staff_seq) values (5, '대리점 분양',2); -- 아무개

-- A.신입 사원 입사 > 신규 프로젝트 배정
-- A.1 신입 사원 추가
insert into tblStaff( seq, name, salary, address)
    values (4, '호호호', 250, '성남시');
--A.2 신규 프로젝트 배정
insert into tblProject (seq, project, staff_seq)
    values (6, '자재 매입',4);

select * from tblStaff;
select * from tblProject;

-- A.3 신규프로젝트 추가 > ORA-02291: 무결성 제약조건(HR.SYS_C008696)이 위배되었습니다- 부모 키가 없습니다 (현재 staff_seq 4까지만 있음)
insert into tblProject (seq, project, staff_seq)
    values (7, '고객 유치',5); 

-- B.'홍길동' 퇴사

-- B.1 '홍길동' 삭제 > 에러: 자식키 존재
delete from tblStaff where seq = 1;


-- B.2.1 '홍길동'(staff_seq:1) 삭제 > 업무 인수 인계(위임)(staff_seq:2)
update tblProject set staff_seq = 2 where staff_seq = 1;
-- B.2.2 '홍길동' 삭제
delete from tblStaff where seq = 1;

select * from tblStaff;
select * from tblProject;

--2개
--고객 테이블
drop table tblCustomer;
drop table tblSales;

create table tblCustomer (
    seq number primary key,         --고객번호(PK)
    name varchar2(30) not null,      --고객명  
    tel varchar(15) not null,       --연락처
    address varchar2(100) not null  --주소
);

--판매 내역 테이블
create table tblSales (
    seq number primary key,                         --판매번호(PK)
    item varchar2(50) not null,                     --제품명
    qty number not null,                            --수량
    regdate date default sysdate not null,          --판매날짜
    cseq number not null references tblCustomer(seq) --고객번호(FK)
);

--4개
--장르
create table tblGenre (
    seq number primary key,     --장르번호(PK)
    name varchar2(30) not null, --장르명
    price number not null,      --대여가격
    period number not null      --대여기간(일)
);

--비디오
create table tblVideo (
    seq number primary key,                       --비디오번호(PK)
    name varchar2(100) not null,                  --제목
    qty number not null,                          --수량
    company varchar2(50) null,                    --제작사
    director varchar2(50) null,                   --감독
    major varchar2(50) null,                      --주연배우
    genre number not null references tblGenre(seq)--장르번호(FK)
);



create table tblMember(
    seq number primary key,     --회원번호(PK)
    name varchar2(30) not null, --회원명
    grade number(1) not null,   --회원등급 (1,2,3)
    byear number(4) not null,   --생년
    tel varchar2(15) not null,  --연락처  
    address varchar2(300) null, --주소
    money number not null       --예치금
);

create table tblRent (
    seq number primary key,         --대여번호(PK)
    member number not null references tblMember(seq), --회원번호(FK)
    video number not null references tblVideo(seq), --비디오번호(FK)    
    rentdate date default sysdate not null,         --대여시각
    retdate date null,                              --반납시각
    remart varchar2(500) null                       --비고
);

create sequence genreSeq;
create sequence videoSeq;
create sequence memberSeq;
create sequence rentSeq;
drop sequence rentSeq;

select * from tblCustomer;
select * from tblSales;

select * from tblGenre;
select * from tblVideo;
select * from tblMember;
select * from tblRent;

/*

    조인,Join
    -(서로 관계를 맺은) 2개(1개) 이상의 테이블을 1개의 결과셋으로 만드는 기술
    
    조인의 종류
    1. 단순 조인, cross join > ''물리적인 이유로 사용 X
    2. 내부 조인, inner join ***
    3. 외부 조인, outer join ***
    --------------------------------
    4. 셀프 조인, self join -> 셀프조인 + 내부조인 / 셀프조인 + 외부조인
    5. 전체 외부 조인, full outer join
    
 /*
 
 /*
    1. 단순 조인, cross join, 카디션 곱, 데카르트 곱
    - 모든 조인의 기본 동작
    - A 테이블 X B 테이블
    - 쓸모 없음 > 가치 있는 행과 가치 없는 행이 뒤섞여 있음
    - 다량 더미 데이터(유효성 낮음)
*/
select * from tblCustomer; --3명
select * from tblSales; --9건

select * from tblCustomer cross join tblSales; --ANSI-SQL (수업)
select * from tblCustomer, tblSales; --Oracle 전용


/*
    2. 내부 조인, inner join ***중요!!!
    -단순 조인에서 유효한 레코드만 추출한 조인
    
    
    단순 조인, cross join: select 컬럼리스트 from 테이블A cross join 테이블B;
    
    내부 조인, inner join: select 컬럼리스트 from 테이블A inner join 테이블B on 테이블A.PK = 테이블B.FK; ''추출할 조건 지정 -> on 조건절
 
    ''(on 테이블A = 테이블B) 와 (on 테이블B = 테이블A) 는 같은 데이터를 갖음
    
    
    select 
        컬럼리스트
    from 테이블A
        inner join 테이블B
            on 테이블A.PK = 테이블B.FK;

    
*/
select * from tblCustomer inner join tblSales on tblCustomer.seq = tblSales.cseq;

select 
--    seq --ORA-00918: 열의 정의가 애매합니다 > 조인한 테이블 간에 중복된 이름의 컬럼이 존재함
    tblCustomer.seq as 고객번호,
    tblSales.seq as 판매번호,
    name,
    tblCustomer.name --테이블을 표시하는게 관리 용이함
from tblCustomer
    inner join tblSales
        on tblCustomer.seq = tblSales.cseq;
--위 예제 + 테이블 alias
select 
    c.seq as 고객번호,
    s.seq as 판매번호,
    c.name
from tblCustomer c  --테이블의 alias는 최대한 짧게 적음(외자)
    inner join tblSales s
        on c.seq = s.cseq;


--고객 테이블 + 판매 테이블
-- > 어떤 고객(c.name)이 어떤 물건 (s.item)을 몇개(s.qty) 사갔습니까?
--tip select문 나중에 작성

select
    c.name as 고객명,
    s.item as 제품명,
    s.qty as 수량
from tblCustomer c
    inner join tblSales s
        on c.seq = s.cseq;

-- 조인 VS 서브쿼리 (''단순한 업무에는 조인과 서브쿼리는 비슷한 결과를 내지만, 다른 개념임)
--> 어떤 고객(c.name)이 어떤 물건 (s.item)을 몇개(s.qty) 사갔습니까?
-- 서브쿼리 사용
-- 메인쿼리(자식테이블) + 상관서브쿼리(부모테이블)

select 
    item,
    qty,
    cseq,
    (select name from tblCustomer where seq = tblSales.cseq)
from tblSales;

-- 비디오 + 장르
select 
    *
from tblGenre g --부모
    inner join tblVideo v --자식
        on g.seq = v.seq;

--비디오 + 장르 + 대여 (''tblRent의 video(FK)-> tblVideo를 참조 -> 두 테이블 간의 관계가 코드상으로 나타나야 함)

select 
    *
from tblGenre g --부모
    inner join tblVideo v --자식
        on g.seq = v.seq
            inner join tblRent r
                on r.video = v.seq;

--비디오 + 장르 + 대여 + 회원(''tblRent의 member(FK) -> tblMember 참조 -> 두 테이블 간의 관계가 코드상으로 나타나야 함)

select 
    m.name as 누가,
    v.name as 무엇을,
    r.rentdate as 언제,
    g.price as 얼마
from tblGenre g --부모
    inner join tblVideo v --자식
        on g.seq = v.seq
            inner join tblRent r
                on r.video = v.seq
                    inner join tblMember m
                        on m.seq = r.member;
                        
select * from employees;

select
    e.first_name || ' ' || e.last_name as 직원명,
    d.department_name as 부서명,
    l.city as 도시명,
    c.country_name as 국가명,
    r.region_name as 대륙명,
    j.job_title as 직업명
from employees e
    inner join departments d
        on d.department_id = e.department_id
            inner join locations l
                on l.location_id = d.location_id
                    inner join countries c
                        on c.country_id = l.country_id
                            inner join regions r
                                on r.region_id = c.region_id
                                    inner join jobs j
                                        on j.job_id = e.job_id;



/*
    3.외부 조인, outer join(***)
    - 내부 조인의 반댓말 (x)
    - 내부 조인 결과 + a(내부 조인에 포함되지 않은 부모 테이블의 나머지 레코드)
    
    select 
        컬럼리스트
    from 테이블A
        inner join 테이블B
            on 테이블A.PK = 테이블B.FK;
            
    select 
        컬럼리스트
    from 테이블A (left|right) outer join 테이블B  
            on 테이블A.PK = 테이블B.FK;        


*/

select * from tblCustomer; --3명
select * from tblSales; --9건

insert into tblCustomer values(4,'호호호','010-1234-0000', '서울시');
insert into tblCustomer values(5,'후후후','010-4567-0000', '서울시');


--내부조인
--> "물건을 한번이라도 구매한 이력"이 있는 고객의 정보와 구매 내역을 가져오시오
-- ''연결된 테이블 모두에 정보가 있어야 레코드가 반환됨
select * from tblCustomer c
    inner join tblSales s
        on c.seq = s.cseq; --9개
        
--외부조인 ''대체로 outer는 부모테이블을 가르킨다.
--> 물건을 한번도 구매 안한 고객의 정보까지도 같이 가져오시오.
-- ''가르키고 있는 테이블의 정보를 함께 가져옴
select * from tblCustomer c
    left outer join tblSales s
        on c.seq = s.cseq; --11개

-- outer가 자식 테이블을 가리키는 경우 대체로, inner join과 같은 결과가 나옴.
select * from tblCustomer c
    right outer join tblSales s
        on c.seq = s.cseq;

--
select * from tblStaff; --3명
select * from tblProject; --6건
update tblProject set staff_seq = 4 where staff_seq = 3;

--내부조인> 프로젝트를 최소 1건 이상 담당하고 있는 직원 + 프로젝트 정보
select
*
from tblStaff s
    inner join tblProject p
        on s.seq = p.staff_seq;

--외부조인 > 담당 프로젝트 유무와 상관없이 모든 직원을 가져오시오. [+ 프로젝트 정보 ]
select
*
from tblStaff s
    left outer join tblProject p
        on s.seq = p.staff_seq;



--비디오 + 대여 > 대여가 한번이라도 발생했던 비디오 + 대여기록
select * from tblVideo v
    inner join tblRent r
        on v.seq = r.video;
        

--비디오 + 대여 > 대여와 상관없이 모든 비디오 + [대여기록]
select * from tblVideo v
    left outer join tblRent r
        on v.seq = r.video;

-- 회원 + 대여 > 대여를 최소 1회 이상 했던 회원 + [대여기록]
select * from tblMember m
    inner join tblRent r
        on m.seq = r.member;


-- 회원 + 대여 > 대여와 무관하게 모든 회원 + [대여기록]
select * from tblMember m
    left outer join tblRent r
        on m.seq = r.member
            where r.seq is null;

-- 대여 기록이 있는 회원의 이름과 연락처?

select distinct m.name, m.tel from tblMember m
    inner join tblRent r
        on m.seq = r.member;
        
        
-- 대여 기록이 있는 회원의 이름과 연락처? + 대여횟수?
--case1 - 서브쿼리
select m.name,(select tel from tblMember where name = m.name), count(*) from tblMember m
    inner join tblRent r
        on m.seq = r.member
        group by m.name;

--case2 - 다중그룹
select m.name,m.tel, count(*) from tblMember m
    inner join tblRent r
        on m.seq = r.member
        group by m.name, m.tel;
        
-- +)내림차순 정렬
select m.name,m.tel, count(*) from tblMember m
    inner join tblRent r
        on m.seq = r.member
        group by m.name, m.tel
            order by count(*) desc;
            
            
            
/*

    4. 셀프조인, self join
    - 1개의 테이블 사용하는 조인
    - 테이블이 자기 스스로와 관계를 맺는 경우에 사용

*/

--직원 테이블

create table tblSelf(
    seq number primary key,             --직원번호(PK)
    name varchar2(30) not null,         --직원명
    department varchar2(30) not null,    --부서명
    super number null references tblSelf(seq) --상사번호(FK) -> 자기참조
);

insert into tblSelf values ( 1, '홍사장','사장실',null );
insert into tblSelf values ( 2, '김부장','영업부',1 );
insert into tblSelf values ( 3, '박과장','영업부',2 );
insert into tblSelf values ( 4, '최대리','영업부',3 );
insert into tblSelf values ( 5, '정사원','영업부',4 );
insert into tblSelf values ( 6, '이부장','개발부',1 );
insert into tblSelf values ( 7, '하과장','개발부',6 );
insert into tblSelf values ( 8, '신과장','개발부',6 );
insert into tblSelf values ( 9, '황대리','개발부',7 );
insert into tblSelf values ( 10, '허사원','개발부',9 );

-- 직원 명단을 가져오시오. 단, 상사의 이름까지
-- 1. join
-- 2. sub query
-- 3. 계층형 쿼리 (오라클 전용) > 나중에 수업

--1.join -> inner
--자기 참조시 다른 alias를 붙혀야함.
select
    s2.name as 직원명,
    s2.department as 부서명,
    s1.name as 상사명
from tblSelf s1             --역할: 부모테이블 > 상사
    inner join tblSelf s2   --역할: 자식테이블 > 직원
        on s1.seq = s2.super; --''직원테이블의 홍사장 데이터는 누락
--1.join -> outer
select
    s2.name as 직원명,
    s2.department as 부서명,
    s1.name as 상사명
from tblSelf s1             --역할: 부모테이블 > 상사
    right outer join tblSelf s2   --역할: 자식테이블 > 직원
        on s1.seq = s2.super;

--2. sub query
select
    name as 직원명,
    department as 부서명,
    (select name from tblSelf s1 where seq = s2.seq) as 상사명
from tblSelf s2;

/*
    5. 전체 외부 조인, full outer join
    - 서로 참조하고 있는 관계에서만 사용
    
*/
--''부모자식관계를 임의로 설정해야함.
select * from tblMen;       --부모
select * from tblWomen;     --자식

--inner: 커플인 남녀를 가져오세요.
select
    m.name as 남자,
    w.name as 여자
from tblMen m
    inner join tblWomen w
        on m.name = w.couple;

--outer / full outer
select
    m.name as 남자,
    w.name as 여자
from tblMen m
--    left outer join tblWomen w --남자솔로 포함
--    right outer join tblWomen w --여자솔로 포함
    full outer join tblWomen w --남/녀 솔로 모두 포함
        on m.name = w.couple;
        



--
drop table tblStaff;
drop table tblProject;


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

insert into tblStaff (seq, name, salary, address) values (1, '홍길동',300,'서울시');
insert into tblStaff (seq, name, salary, address) values (2, '아무개',250,'인천시');
insert into tblStaff (seq, name, salary, address) values (3, '하하하',350,'부산시');

insert into tblProject (seq, project, staff_seq) values (1, '홍콩 수출',1); --홍길동
insert into tblProject (seq, project, staff_seq) values (2, 'TV 광고',2); --아무개
insert into tblProject (seq, project, staff_seq) values (3, '매출 분석',3); --하하하
insert into tblProject (seq, project, staff_seq) values (4, '노조 협상',1); --홍길동
insert into tblProject (seq, project, staff_seq) values (5, '대리점 분양',2); -- 아무개

insert into tblStaff (seq, name, salary, address) values (4, '호호호',350,'부산시');
insert into tblStaff (seq, name, salary, address) values (5, '후후후',350,'부산시');

insert into tblProject (seq, project, staff_seq) values (6, '재고 관리',null); -- 아무개
insert into tblProject (seq, project, staff_seq) values (7, '가격 인상',null); -- 아무개
insert into tblProject (seq, project, staff_seq) values (8, '신제품 개발',null); -- 아무개


select * from tblStaff;

select * from tblProject;


select * from tblStaff s inner join tblProject p on s.seq = p.staff_seq; -- 담당자가 있는 프로젝트
select * from tblStaff s left outer join tblProject p on s.seq = p.staff_seq; 
select * from tblStaff s right outer join tblProject p on s.seq = p.staff_seq;
select * from tblStaff s full outer join tblProject p on s.seq = p.staff_seq;

        