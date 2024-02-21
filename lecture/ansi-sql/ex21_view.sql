--ex21_view.sql

/*

    View, 뷰
    - 데이터베이스 객체 중 하나(테이블, 제약사항, 시퀀스, 뷰)
    - 가상 테이블, 뷰 테이블 등
    - 원하는 데이터를 선택해서 사용자 정의를 해놓은 요소
    - 테이블처럼 사용한다.(****)
    - SQL(select)을 저장하는 객체(*********)
    
    
    
    사용 목적
    1. 자주 쓰는 쿼리를 저장
    2. 복잡하고 긴 쿼리를 저장
    3. 저장객체 > 같은 데이터베이스 사용자끼리 공유 가능 > 재사용 or 협업
    4. 권한 통제 > 보안
    
    create [or replace] view 뷰이름 
    as
    select 문;

*/
create or replace view vwInsa
as --연결부 (as, is연결시켜주는 역할만 함)
select * from tblInsa;


--    1. 자주 쓰는 쿼리를 저장

select * from vwInsa; --tblInsa 테이블의 복사본

-- 자주 반복 업무> '영업부' + '서울' + select
create or replace view 영업부
as
select
    num,name,basicpay, substr(ssn,8) as ssn
from tblInsa
    where buseo = '영업부' and city = '서울';
select * from 영업부;   

--    2. 복잡하고 긴 쿼리를 저장

--비디오 대여점 사장 > 날마다 업무 //판서 다시보기
create or replace view vmCheck --vmCheck 기존에 없었으면 create / 있었으면, replace(수정)해줌
as
select
    m.name as 회원,
    v.name as 비디오,
    r.rentdate as 언제,
    r.retdate as 반납,
    g.period as 대여기간,
    r.rentdate + g.period as 반납예정일,
    case
        when r.rentdate is null then round(sysdate-(r.rentdate + g.period))
    end as 연체일,
    case
        when r.rentdate is null then round((sysdate-(r.rentdate+g.period))*g.price * 0.1)
        when r.rentdate is not null and (r.retdate-r.rentdate)>g.period then (r.retdate-r.rentdate-g.period))*g.price * 0.1)
    end as 연체료
from tblRent r
    inner join tblVideo v
        on r.video = v.seq
            inner join tblMember m
                on m.seq = r.member
                    inner join tblGenre g
                        on g.seq = v.genre;
select * from vmCheck;

create table tblTemp
as
select * from tblInsa;

select * from tblTemp;

--    3. 저장객체 > 같은 데이터베이스 사용자끼리 공유 가능 > 재사용 or 협업

--서울 직원 뷰
create or replace view vwSeoul
as
select * from tblTemp where city = '서울'; --20명

select * from vwSeoul; --20명 --실명
select * from (select * from tblTemp where city = '서울'); --20명 (-->''인라인뷰와 같은 구조 임)-->익명
--''사용횟수가 적으면 인라인뷰로 생성, 자주 사용시 뷰생성해서 저장
--''뷰는 셀렉트 구문을 저장(그 결과값을 저장하는게 아니라, 원본이 수정되면 뷰테이블을 호출했을 때 수정된 값으로 반환됨)

--원본 테이블 조작 (tblTemp)
update tblTemp set city ='제주' where num in (1001,1005,1008);

select * from tblTemp;
select * from vwSeoul; --> 17명

-- 4. 권한 통제 > 보안
-- 신입사원 > 업무 > 연락처 확인 > 문자 발송!!
-- ''열람권한에 따라 접근할 수 있는 정보로만 뷰테이블 생성
select * from tblInsa;

create table tblMessage
as
select name, tel, buseo, jikwi from tblInsa; -- XX새로운 테이블 생성 XX

create or replace view vmMessage
as
select name, tel, buseo, jikwi from tblInsa;

select * from vmMessage;


-- 뷰 사용 주의점!!
-- 1. select > 실행 O > 뷰는 읽기 전용으로 사용한다. == 읽기 전용 테이블!
-- 2. insert > 실행 O > 절대 사용 금지!!
-- 3. update > 실행 O > 절대 사용 금지!!
-- 4. delete > 실행 O > 절대 사용 금지!!


-- 단순 뷰 > 뷰의 select가 1개의 테이블로 구성
create or replace view vwTodo
as
select * from tblTodo;

select * from vwTodo;
insert into vwTodo values (21, '뷰 만들기', sysdate, null);
update vwTodo set completedate = sysdate where seq = 21;
delete from vwTodo where seq = 21;


-- 복합 뷰 > 뷰의 select가 2개의 테이블로 구성(서브 or 조인 등)
select * from vmCheck;

/*
insert into vmCheck( 회원,비디오,언제,반납,반납예정, 연체일, 연체료)
    values(????) > 불가능
*/
--> ''복합뷰에서 수정작업 불가 > 뷰이름만 봤을 때 단순뷰인지 복합뷰인지 파악이 안되므로 뷰는 읽기전용으로만 쓴다.

/*

    테이블 > 5개(tblMember, tblBoard, tblLog,tblCheck, tblPrice)
    뷰 > 테이블 X N개

    --> 뷰가 아주아주 많이 생김!!


*/





























