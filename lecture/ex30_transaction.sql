-- ex30_transaction.sql

/*
    트랜잭션,Transaction
    - 데이터를 조작하는 업무의 물리적(시간적) 단위
    - 1개 이상의 명령어를 묶어 놓은 단위
    - *** 트랜잭션을 어떻게 처리할 것인가?
    
    트랜잭션 명령어 (DCL > TCL)
    --'' 1,2 필수 / 3 옵션
    1. commit
    2. rollback
    3. savepoint
    
    

*/


create table tblTrans
as
select name, buseo, jikwi from tblInsa where city = '서울';

select * from tblTrans;

-- (''트랜잭션:) 우리가 하는 행동(SQL) > 시간순으로 기억(******)

-- 로그인 직후(접속) > 트랜잭션이 시작됨 (''=트랜잭션이 기록됨)
-- 트랜잭션에 모든 명령어 반영(X) > insert, update, delete 명령어만 트랜잭션에 포함된다.
-- insert, update, delete작업 > 오라클(HDD,하드디스크) 적용 (X), 메모리에 임시 적용(O)

select * from tblTrans;

delete from tblTrans where name = '박문수'; --현재 트랜잭션에 포함

-- insert, update, delete작업
select * from tblTrans;

-- 박문수 되살리기

rollback; --> 기존 트랜잭션 종료/새로운 트랜잭션 시작

select * from tblTrans;

-- 박문수 다시 지우기
delete from tblTrans where name = '박문수';

commit; -- ''메모리에 저장된 임시 데이터를 오라클 DB에 저장시킴 / 새로운 트랜잭션 시작

select * from tblTrans;

insert into tblTrans values ('호호호','기획부','사원');
update tblTrans set jikwi = '상무' where name = '홍길동';

select * from tblTrans;

commit;

/*

    트랜잭션이 언제 시작해서 ~ 언제 끝나는지?
    
    새로운 트랜잭션이 시작하는 시점
    1. 클라이언트 접속한 직후
    2. commit 실행 직후
    3. rollback 실행 직후
    4. 
    
    현재 트랜잭션이 종료되는 시점
    1. commit > DB에 반영 후 종료
    2. rollback > DB에 반영 X
    3. 클라이언트 접속 종료
        a. 정상 종료
            - 현재 트랜잭션에 반영이 안된 명령어가 남아 있으면 > 클라이언트 종료시 질문함
        b. 비정상 종료
            - 트랜잭션을 처리할만한 시간적인 여유가 없는 경우
            - rollback
    4. DDL 실행(*** 주의!!)
        - create, alter, drop > 실행 > 즉시 commit 실행
        - DDL 성격 : 구조변경 > 데이터에 영향 미침 > 사전에 미리 저장하는 것 (commit)

*/
-- 현재 트랜잭션에 반영이 안된 명령어
delete from tblTrans where name ='홍길동';
select * from tblTrans;
-- 정상종료 > 롤백선택 > 새접속
select * from tblTrans; --> 롤백 반영되어 있음



---현재 트랜잭션에 반영이 안된 명령어 존재
delete from tblTrans where name ='홍길동';
-- 비정상종료: 작업관리자 > 작업끝내기
select * from tblTrans; --> 트랜잭션이 자동 롤백되어 있음(비정상 종료시 무조건 롤백됨/저장 안 되어있으면, 트랜잭션 시작 후의 작성 내용도 날라감)


----- ''트랜잭션 시작점이 헷갈리면, 현재 작업 상태 확인 후 commit; 날림!
commit;

update tblTrans set jikwi = '사장' where name = '홍길동';
select * from tblTrans; --홍길동	기획부	사장

-- 시퀀스 객체 생성
create sequence seqTrans; --create > commit 호출

select * from tblTrans; --홍길동	기획부	사장

rollback; -- 홍길동의 직위를 돌릴 목적으로 롤백 했으나, ddl 명령어 때문에 트랜잭션 시작점이 바뀌어서 롤백해도 직위가 이전으로 돌아가지 않음
select * from tblTrans; --홍길동	기획부	사장


--savepoint

select * from tblTrans;

insert into tblTrans values ('후후후','기획부','사원');

savepoint a;

delete from tblTrans where name = '홍길동';

savepoint b;

update tblTrans set buseo = '개발부' where name = '후후후';

select * from tblTrans; 

rollback to b;

select * from tblTrans; --후후후	기획부	사원

rollback to a;

select * from tblTrans; --홍길동	기획부	사장

rollback;

select * from tblTrans; --트랜잭션 시작점으로 롤백 / '후후후','기획부','사원'반환X

-- SQL 작성 + 트랜잭션 활용
-- 프로그램 작성 + 트랜잭션 활용
