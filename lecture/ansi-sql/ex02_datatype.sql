-- ex02_datatype.sql

/*

관계형 데이터베이스
- 변수(X) > SQL은 프로그래밍 언어가 아니다.
- SQL > 대화형 언어 > DB와 대화를 목적으로 하는 언어
- 자료형 > 데이터 저장하는 규칙 > 테이블 정할 때 사용 > 컬럼의 자료형


ANSI-SQL 자료형
- 오라클 자료형

1. 숫자형
    - 정수, 실수
    a. number
        - (유효자리) 38자리 이하의 숫자를 표현하는 자료형
        - 5~22byte
        - 1x10^-130 ~ 9.9999x10^125
        
        - number: 정수 or 실수
        - number(precision): 전체 자릿수 > 정수만 저장
        - number(precision, scale): 전체 자릿수 > 정수/실수 저장
        
        
        
2. 문자형 > varchar2 사용
    - 문자 + 문자열
    - char vs nchar > n의 의미?
    
    - char vs varchar > var의 의미? (남은 데이터 공간의 처리 방법이 상이함)
    
    a. char
        - 고정 자릿수 문자열 > 공간(컬럼)의 크기가 불변
        - char(n): 최대 n자리 문자열, n(바이트) ''반드시 n자리에 숫자 기입해야함
        - char(n char): n=문자수 
            - 최소 크기: 1 바이트
            - 최대 크기: 2000 바이트
        - 데이터 삽입 후 > 남은 공간을 공백으로 채운다.
        
        
    b. nchar
        - n: national > 오라클 인코딩과 상관없이 해당 컬럼을 UTF-16으로 동작 
        - nchar(n): 최대 n자리 문자열, n(문자수)
            -최소크기: 1바이트
            -최대크기: 1000바이트
        
    
    c. varchar2
        - 다른 DB의 varchar와 같음
        - 가변 자릿수 문자열 > 공간(컬럼)의 크기가 가변
        - varchar2(n): 최대 n자리 문자열, n(바이트)
            - 최소 크기: 1 바이트
            - 최대 크기: 4000 바이트
        - 데이터 삽입 후  > 남은 공간을 제거한다.
        
        
    d. nvarchar2
        - n: national > 오라클 인코딩과 상관없이 해당 컬럼을 UTF-16으로 동작 
        - 가변 자릿수 문자열 > 공간(컬럼)의 크기가 가변
        - nvarchar2(n): 최대 n자리 문자열, n(문자열)
            - 최소 크기: 1 바이트
            - 최대 크기: 2000 바이트
        - 데이터 삽입 후  > 남은 공간을 제거한다.

    e. clob, nclob
    - 대용량 텍스트
    - character large object
    - 최대 128TB (11번전 기준)
    - 참조형 (''속도가 느림)
    
    
    
    

3. 날짜/시간형 > date 사용
    a. date
        -년월일시분초
        -기원전 4712년 1월 1일 ~ 9999년 12월 31일
        
        
    b. timestamp
        - 년월일시분초 + 밀리초 + 나노초
        
    c. interval ('' > number type으로 대체 가능)
        - 시간
        - 틱값 저장용
        
        
        
4. 이진 데이터형
    - 비 텍스트 데이터
    - 이미지, 영상, 음악, 실행파일, 압축파일 등...
    - 잘 사용 안함
    - ex) 게시판(첨부파일), 회원가입(사진) > DB에 파일명만 저장

    a. blob
        -최대 128TB
        
결론
-> 주로 사용하는 자료형
1. 숫자 > number
2. 문자열 > varchar2
3. 날짜 > date




--

테이블 선언(생성)
create table 테이블명 (
    컬럼 선언,
    컬럼 선언,
    컬럼 선언,
    컬럼명 자료형
)



*/

-- 헝가리안 표기법 > 자료형을 접두어로 사용
drop table tblType;



create table tblType(
    --num number
    --num number(3) -- -999~999의 정수만 입력 가능함
    --num number(4,2) -- -99.99 ~ 99.99 (소수포함 전체 자리수,소수 자리수)
    
    --txt char(10) -- 오라클 어떤 인코딩? UTF-8 (''영어 1바이트, 한글 3바이트)
   
    --txt1 char(10),
    --txt2 varchar2(10)
    
    txt nchar(10)
    --txt char(10 char) : txt nchar(10)와 같이 10문자 
    
    
);

-- 데이터 추가하기
-- insert into 테이블 (컬럼명) values (값);



insert into tblType (num) values (100); --정수 리터럴
insert into tblType (num) values (3.14); --실수 리터럴
insert into tblType (num) values (3.99); --실수 리터럴 (반올림 O)
insert into tblType (num) values (999);
insert into tblType (num) values (-999);
insert into tblType (num) values (1234);
insert into tblType (num) values (99.99);
insert into tblType (num) values (-99.99);


insert into tblType (txt) values ('ABC'); --문자 리터럴
insert into tblType (txt) values ('ABCDEABCDE');
insert into tblType (txt) values ('ABCDEABCDEF');
insert into tblType (txt) values ('홍길동');
insert into tblType (txt) values ('홍길동님');

--컬럼이 여러개인 경우 > 1대1 매칭되어 데이터 추가 됨
insert into tblType (txt1, txt2) values ('A','B');
insert into tblType (txt1, txt2) values ('ABCDEFGHIJ','ABCDEFGHIJ');

--
insert into tblType (txt) values ('ABCDEFGHIJ');
insert into tblType (txt) values ('일이삼사오육칠팔구십');

-- 데이터 가져오기
select * from tblType;


