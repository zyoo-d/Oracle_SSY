-- ex14_sequence.sql

/*
    시퀀스, sequence
    - 데이터베이스 객체 중 하나 (DB object: 테이블, 제약사항, 시퀀스)
    - 오라클 전용 객체(다른 DBMS 제품에는 없음)
    - 일련 번호를 생성하는 객체(*****)
    - 주로 식별자를 만드는데 사용한다. > (대체로) PK 값으로 사용한다.
    
    시퀀스 객체 생성하기
    - create sequence 시퀀스명;
    
    시퀀스 객체 삭제하기
    - drop sequence 시퀀스명;

    시퀀스 객체 사용하기
    - 시퀀스명.nextVal > 함수 > 호출 시 일련 번호 반환
    - 시퀀스명.currVal :일련번호를 증가시키지 않고 일련번호 반환 > 사용 안함

*/

-- DB Object > 헝가리언 표기법
-- tblXXX
-- seqXXX

create sequence seqNum;
select seqNum.nextVal from dual;

create sequence seqMemo;
insert into tblMemo (seq, name, memo, regdate)
            values(seqMemo.nextVal, '홍길동','메모입니다.', sysdate);
            
select * from tblMemo;

delete from tblmemo;

--쇼핑물 > 상품번호 > ABC101

select 'ABC' || seqNum.nextVal from dual; --ABC2
select 'ABC' || lpad(seqNum.nextVal,3,'0') from dual; --ABC003

--로그인 이후 nextVal를 최소 1회 호출해야 currVal 사용할 수 있다. (if not -> ORA-08002: 시퀀스 SEQNUM.CURRVAL은 이 세션에서는 정의 되어 있지 않습니다)
select seqNum.currVal from dual;  --3

/*

    시퀀스 객체 생성하기
    
    create sequence 시퀀스명
                                                            --option(순서무관)
                    increment by n  --증감치
                    start with n    --시작값
                    maxvalue n      --최댓값
                    minvalue n      --최솟값
                    cycle           --순환 유무
                    cache n;        --임시 저장

*/
drop sequence seqTest;

create sequence seqTest
--                increment by 1
--                increment by -1
--                start with 10
--                maxvalue 10
--                minvalue 1
--                cycle --(min or max) and cache
                cache 20 -- 기본값:20 // 서버와 하드디스크 동기화 텀 // ''정상적으로 종료시 마지막 시퀀스를 저장 / 비정상적으로 종료시 캐시값 텀..으로 저장됨
                ;
                 
select seqTest.nextVal from dual;
