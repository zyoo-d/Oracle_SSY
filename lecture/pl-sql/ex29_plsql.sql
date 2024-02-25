-- ex29_plsql.sql

/*

    PL/SQL
    - Oracle's Procedural Language extension to SQL
    - 기존의 ANSI-SQL + 절차 지향 언어 기능 추가(변수, 제어 흐름, 객체 정의 등)
    
    프로시저, Procedure
    - 프로시저= 메서드, 함수 등..
    - 순서가 있는 명령어들의 집합
    - 모든 PL/SQL 구문은 프로시저 내에서만 작성/동작이 가능하다.
    - 프로시저 영역 Vs. ANSI-SQL 영역
    
    1. 익명 프로시저
        - 1회용 코드 작성
        
    2. 실명 프로시저
        - 재사용
        - 저장
        - 데이터베이스 객체
        
        
    PL/SQL 익명 프로시저 구조
    1. 4개의 블럭으로 구성
        - DECLARE
        - BEGIN
        - EXCEPTION
        - END
        
    2. DECLARE
        - 선언부
        - 프로시저내에서 사용할 변수, 객체 등을 선언하는 영역
        - 생략 가능(변수 필요없는 경우)
        
    3. BEGIN ~ END
        - 구현부
        - 구현된코드를 가지는 영역(java-메서드의 body영역)
        - 생략 불가능
        - 구현된 코드? > ANSI-SQL(쿼리) + PL/SQL(연산,제어 등)
        
    4. EXCEPTION
        - 예외처리부
        - java-catch 역할
        - 3번 > java-try역할
        - 생략 가능
        
    --익명 프로시저의 코드 구조
    [DECLARE
        변수선언;
        객체선언;]
    BEGIN
        업무코드;
        업무코드;
        업무코드; 
    [EXCEPTION
        예외처리코드;]
    END;
    
    
    
   ANSI-SQL <> PL/SQL
   
   PL/SQL: 자료형 OR 변수 OR 제어 흐름..
   
   PL/SQL 자료형
    - ANSI-SQL과 (대체적으로) 동일

    변수 선언하기
    - 변수명 자료형(길이) [NOT NULL] [DEFAULT 값];
    
    PL/SQL 연산자
    -ANSI-SQL과 동일
    
    대입 연산자
    - ANSI-SQL
        ex) update table set column = '값'
    - PL/SQL
        ex) 변수 := 값 ;
    
   
    
    
*/

--익명 프로시저 선언하기
--스크립트에 serveroutput 출력하는 명령어
set serveroutput on; -- 현재 세선에서만 유효, 매 접속시마다 실행해야 함
set serverout on;
set serveroutput off;

begin
    dbms_output.put_line('Hello World!');
end;
/

begin
    dbms_output.put_line('Hello World2!');
end;
/
-- end뒤에 '/' 작성해야 프로시저에 블럭안 잡고도 실행 할 수 있음 

--변수선언
declare
--변수명 자료형(길이) [NOT NULL] [DEFAULT 값];
    num number;
    name varchar2(30);
    today date;
begin
    num := 10;
    dbms_output.put_line(num);

    name := '홍길동';
    dbms_output.put_line(name);
    
    today := sysdate;
    dbms_output.put_line(today);
end;
/

--
declare
    num1 number;
    num2 number;
    num3 number := 30; --선언과 동시에 초기화 가능함
    num4 number default 40; --변수 생성 이후에 초기화하지 않으면 들어가는 값
    num5 number not null := 50; --not null 변수는 declare 블럭에서 초기화해야 한다.
begin
    dbms_output.put_line(num1); --null(초기화 안하면 null)

    num2 := 20;
    dbms_output.put_line(num2);
    
    num3 := null;           
    dbms_output.put_line(num3);
    
    dbms_output.put_line(num4); --default 동작함
    
--    num5 := 50; > num5는 not null -> declare에서 변수 초기화 해야함
--    num5 := null; > not null 값은 null 대입 불가능 / not null이 아닌 변수는 null값 대입이 가능하다.
    dbms_output.put_line(num5);

end;
/

/*
    변수 > 어떤 용도로 사용?
    - 일반적인 값을 저장하는 용도 > 비중 낮음
    - select 결과를 담는 용도 > 비중 높음

    select into절 (PL/SQL)

*/

declare
-- buseo저장할 변수 필요
    vbuseo varchar2(15);
begin
    --     컬럼       변수(pl/sql)
    select buseo into vbuseo from tblInsa where name = '홍길동' ;
    
    insert into tblTodo values ((select max(seq)+1 from tblTodo),'할일',sysdate,null);
    
    dbms_output.put_line(vbuseo);
end;
/

--> ''PL/SQL 내부에는 순수한 select를 사용할 수 없다. > select into 절 (읽어 온 후의 후속작업을 해야함 > 변수에 값을 담는 과정이 필요)
--> ''PL/SQL 내부에는 나머지 dml은 ansi-sql의 문법으로 사용할 수 있다.

-- 성과급 받는 직원
create table tblBonus (
    name varchar2(15)
);

-- 1. 개발부 + 부장 > select > name?
-- 2. tblBonus > name > insert

--ansi-sql / sub query > 볼륨이 커지면 쓰기 어려운 방식임
insert into tblBonus (name)
    values ((select name from tblInsa where buseo = '개발부' and jikwi = '부장'));
    
select * from tblBonus;


--pl/sql procedure

declare
    vname varchar2(15);
begin
    --1
    select name into vname from tblInsa where buseo = '개발부' and jikwi = '부장';
    
    --2.
    insert into tblBonus (name) values (vname);
end;
/
select * from tblBonus;

desc tblInsa;--NAME     NOT NULL VARCHAR2(20) 
--두개 이상의 컬럼을 가져오는 예제
declare
    vname varchar2(20); -- NAME  NOT NULL VARCHAR2(20) 컬럼의 자료형(길이)와 변수의 자료형(길이) 일치시켜야함 
    vbuseo varchar2(15);
    vjikwi varchar2(15);
    vbasicpay number;
begin
    --select into절 주의사항
    --1. 컬럼의 개수와 변수의 개수 일치
    --2. 컬럼의 순서와 변수의 순서 일치 (자료형 불일치하는 경우 때문에)
    --3. 컬럼과 변수의 자료형 일치
    --''4. 다수의 컬럼 -> 다:다 (컬럼s into 변수s) > into는 한번만 작성한다.
    select name, buseo, jikwi, basicpay into vname, vbuseo, vjikwi, vbasicpay from tblInsa where num = 1001;
    
    dbms_output.put_line(vname);
    dbms_output.put_line(vbuseo);
    dbms_output.put_line(vjikwi);
    dbms_output.put_line(vbasicpay);
end;
/

/*
    타입 참조
    
    %type
    - 변수명 테이블명.컬럼명%type
    - 사용하는 테이블의 특정 컬럼의 스키마를 알아내서 변수에 적용
    - 복사되는 정보
        a. 자료형
        b. 길이
        
    %rowtype
    - 행 전체 참조(다수의 전체 컬럼을 참조)

*/

declare
--    vbuseo varchar2(15);
    vbuseo tblInsa.buseo%type;
begin
    select buseo into vbuseo from tblInsa where name = '홍길동';
    dbms_output.put_line(vbuseo);
end;
/


declare
    vname tblInsa.name%type;
    vbuseo tblInsa.buseo%type;
    vjikwi tblInsa.jikwi%type;
    vbasicpay tblInsa.basicpay%type;
begin
    select name, buseo, jikwi, basicpay
        into vname, vbuseo, vjikwi, vbasicpay
    from tblInsa where num =1001;
end;
/

--tblBonus. tblInsa.
drop table tblBonus;

create table tblBonus(
    seq number primary key,
    num number(5) not null references tblInsa(num),
    bonus number not null
);

--프로시저 선언하기
--1. 서울, 부장, 영업부
--2. tblBonus > 지급 > 보너스 (급여*1.5)

declare
    vnum tblInsa.num%type;
    vbasicpay tblInsa.basicpay%type;
begin
    select num, basicpay 
        into vnum, vbasicpay
    from tblInsa where city = '서울' and jikwi = '부장' and buseo = '영업부';
    
    insert into tblBonus (seq, num ,bonus) 
        values ((select nvl(max(seq),0)+1 from tblBonus), vnum , vbasicpay*1.5);
end;
/
select * from tblInsa;
select * from tblBonus;

select * from tblBonus b
    inner join tblInsa i
        on i.num = b.num;


--
select * from tblMen;  --10
select * from tblWomen;--10

--무명씨 > 성전환수술 > tblMen -> tblWomen 옮기기
-- 1. '무명씨' > tblMen > select
-- 2. tblWomen > insert
-- 3. tblMen > delete


declare
--    vname tblMen.name%type;
--    vage tblMen.age%type;
--    vheight tblMen.height%type;
--    vweight tblMen.weight%type;
--    vcouple tblMen.couple%type;

    --> 레코드 전체의 타입을 참조
    vrow tblMen%rowtype; 

begin
    --1. 무명씨 찾기
    --select name, age, height, weight, couple into vrow
    select * into vrow from tblMen where name = '무명씨';
    
--    dbms_output.put_line(vrow); --전체 컬럼값이 다 들어 있어서 하나씩 꺼내야함
    dbms_output.put_line(vrow.name);
    
    
    --2.
    insert into tblWomen (name, age, height, weight, couple)
        values (vrow.name, vrow.age, vrow.height, vrow.weight, vrow.couple);
        
    --3.
    delete from tblMen where name = vrow.name;

end;
/

select * from tblWomen;


/*

    제어문
    1. 조건문
    2. 반복문
    3. 분기문



*/
--1. 조건문
declare
    vnum number := -10;
begin
    if vnum > 0 then 
    dbms_output.put_line('양수');    
    else
    dbms_output.put_line('양수아님');    
    end if;
end;
/

--elsif
declare
    vnum number := 0;
begin
    if vnum > 0 then 
    dbms_output.put_line('양수');
   
    elsif vnum < 0  then
    dbms_output.put_line('음수');
   
    else
    dbms_output.put_line('0');
    
    end if;
end;
/

--tblInsa. 남자직원 / 여자직원 > 다른업무
declare
    vgender char(1); --''인사테이블에는 gender컬럼없고, ssn에서 1글자 추출
begin
    select substr(ssn, 8,1) into vgender from tblInsa where num = 1049;    
    
    if vgender = '1' then
    dbms_output.put_line('남자업무');
    elsif vgender = '2' then
    dbms_output.put_line('여자업무');
    end if;
end;
/
--tblBonus.
-- 직원 1명 선택 > 보너스 지급
-- 차등지급
-- a. 과장/부장 > basicpay*1.5
-- b. 대리/사원 > basicpay*2

-- 내풀이
declare
    vnum tblInsa.num%type;
    vjikwi tblInsa.jikwi%type;
    vbasicpay tblInsa.basicpay%type;   
begin
    select num,jikwi, basicpay 
        into vnum,vjikwi, vbasicpay
    from tblInsa where num = 1001;
    
    if vjikwi in ('과장','부장') then
    insert into tblBonus (seq, num ,bonus) 
        values ((select nvl(max(seq),0)+1 from tblBonus), vnum , vbasicpay*1.5);
    elsif vjikwi in('과장','부장') then
    insert into tblBonus (seq, num ,bonus) 
        values ((select nvl(max(seq),0)+1 from tblBonus), vnum , vbasicpay*2);
    end if;
end;
/

--강사님 풀이
declare
    vnum tblInsa.num%type;
    vjikwi tblInsa.jikwi%type;
    vbasicpay tblInsa.basicpay%type;
    vbonus number;   --bonus 담을 변수 생성 
begin

    --1.5
    select num,jikwi, basicpay 
        into vnum,vjikwi, vbasicpay
    from tblInsa where num = 1005;
    
    if vjikwi in ('과장','부장') then
        vbonus := vbasicpay * 1.5;
     elsif vjikwi in('대리','사원') then  
        vbonus := vbasicpay * 2;
    end if;
    
    --2.
     insert into tblBonus (seq, num ,bonus) 
        values ((select nvl(max(seq),0)+1 from tblBonus), vnum ,vbonus);
end;
/


select * from tblBonus;

/*

    case문
    - ANSI-SQL의 case와 동일
    - 자바: switch문, 다중if문

*/
--작성방법1
declare
    vcontinent tblCountry.continent%type;
    vresult varchar2(30);
begin
    select continent into vcontinent from tblCountry where name = '대한민국';
    
    case
        when vcontinent = 'AS' then vresult := '아시아';
        when vcontinent = 'EU' then vresult := '유럽';
        when vcontinent = 'AF' then vresult := '아프리카';
        else vresult := '기타';
    end case;
    
    dbms_output.put_line(vresult);
end;
/
--작성방법2
declare
    vcontinent tblCountry.continent%type;
    vresult varchar2(30);
begin
    select continent into vcontinent from tblCountry where name = '대한민국';
    
    case vcontinent
        when 'AS' then vresult := '아시아';
        when 'EU' then vresult := '유럽';
        when 'AF' then vresult := '아프리카';
        else vresult := '기타';
    end case;
    
    dbms_output.put_line(vresult);
end;
/


/*
    반복문
    
    1. loop
        -단순 반복
    
    2. for loop
        - loop 기반
        - 횟수 반복(자바 for문)
        
    3. while loop
        - loop 기반
        - 조건 반복(자바 while문)





*/


begin
    loop
        dbms_output.put_line('무한루프');
    end loop;
end;
/


--무한루프 돌다가 탈출

declare
    vnum number := 1;
begin

    loop
        dbms_output.put_line(vnum);
        vnum := vnum + 1 ;
        
        --exit when 조건; --조건 만족시 탈출
        exit when vnum > 10;
    
    end loop;
end;
/

create table tblLoop (
    seq number primary key,
    data varchar2(100) not null
);

create sequence seqLoop;

--data > 항목0001, 항목0002, .. 항목1000

declare
    vnum number := 1;
begin

    loop

        insert into tblLoop (seq, data) values (seqLoop.nextVal, '항목' || lpad(vnum, 4, '0'));
        vnum := vnum +1;
        
        exit when vnum > 1000;

    end loop;

end;
/
select * from tblLoop;

/*

    2. for loop
    
    for 변수 in 범위 loop
        구현부;
    end loop;
    
    
    ''향상된 for문이랑 비슷
    for (int n : list) {
    }
    
    for (int n in list) {
    {
    
    


*/
--''for loop에는 loop변수 역할을 해주는 것이 있어서 변수 생성 안해도됨
begin
    for i in 1..10 loop
        dbms_output.put_line(i);
    end loop;
end;
/

--복합키 테이블 수준에서 생성
create table tblGugudan(
    dan number not null,
    num number not null,
    result number not null,
    
    constraint tblgugudan_dan_num_pk primary key(dan, num) -- 복합키(Composite Key

);

-- 복합키 alter table로 생성 << better!
create table tblGugudan(
    dan number not null,
    num number not null,
    result number not null,
);

alter table tblGugudan
    add constraint tblgugudan_dan_num_pk primary key(dan, num); -- 복합키(Composite Key



begin
    for dan in 2..9 loop
     for num in 1..9 loop
      insert into tblGugudan (dan, num, result)
                    values ( dan, num, dan*num);
        end loop;
    end loop;
end;
/
select * from tblGugudan;

begin
--    for i in 1..10 loop  --오름차순
    for i in reverse 1..10 loop  --내림차순 --유일한 조작 방법
        dbms_output.put_line(i);
    end loop;
end;
/


--3. while loop

declare
    vnum number := 1;
    
begin
--    while 조건 loop < exit 역할도 같이 함
    while vnum <=10 loop
        dbms_output.put_line(vnum);
        vnum := vnum +1 ;
    end loop;
end;
/

--240222
/* 
    select > 결과셋 > PL/SQL 변수 대입
    
    1. select into
        - 결과셋의 레코드가 1개일 때만 사용이 가능하다.
        
    2. cursor 
        - 결과셋의 레코드가 N개일 때만 사용이 가능하다.
        - 루프 사용
        
    [cursor구문 기본구조]
    declare
        변수 선언;
        커서 선언; --결과셋 참조 객체
    begin
        커서 열기;
            loop
                데이터 접근(루프 1회전 > 레코드 1개 접근) <- 커서 사용
            end loop;
        커서 닫기;
    end;
    
    
    
*/

set serveroutput on;
--판서확인
declare
    vname tblInsa.name%type;
    vcnt number;
begin
    select count(*) into vcnt from tblInsa where num = 1000;
    if vcnt > 0 then
        select name into vname from tblInsa where num = 1000; --조건에 해당하는 데이터가 없으면, select into절 실행시 에러남 > 예외처리 해줘야해서 조건절 사용
        dbms_output.put_line(vname);
    else
    dbms_output.put_line('없음');
    end if;
end;
/
--cursor는 view와 실행순서가 같다.
--create view vwTest
--as
--select문;
--
--cursor vcursor
--is
--select 문;

-- 커서 + 단일 레코드 탐색
declare
--    cursor 커서명 is select 문;
    cursor vcursor
    is
    select name from tblInsa; -- 정의O, 실행X
    
    vname tblInsa.name%type;

begin
    open vcursor; --커서 열기 > select 실행 > 그 결과셋을 커서가 참조 시작 (커서가 BOP를 가르킴)
--        fetch 커서 into 변수 -- 커서가 가르키고 있는 레코드의 값을 변수에 저장
--      = select 컬럼 into 변수

        fetch vcursor into vname;       --결과셋의 첫번째 레코드
        dbms_output.put_line(vname);
        
        fetch vcursor into vname;       --결과셋의 두번째 레코드
        dbms_output.put_line(vname);
        
        -- 모든 결과셋의 레코드를 가져오려면
        -- fetch vcursor into vname; 60번 호출해야함
        --> 반복문 사용
        
    close vcursor; --커서 닫기

end;
/

--커서 반복문 돌리기
declare
    cursor vcursor
    is
    select name from tblInsa;
    
    vname tblInsa.name%type;
begin
    open vcursor;
        
        loop
            fetch vcursor into vname;
            exit when vcursor%notfound; --> 탈출 구문
            
            dbms_output.put_line(vname);
            
            
            
--            if vcursor%notfound then --%notfound > boolean값 > 오라클에서는 boolean 출력 안됨 > 출력구문에 직접 쓰면 에러남
--                dbms_output.put_line('O');
--            else
--                dbms_output.put_line('X');
--            end if;
            
       end loop; 
        
        
    close vcursor; --커서 닫기

end;
/

-- 커서 + 다중레코드 탐색
-- '기획부' > 이름, 직위, 급여 > 출력

declare

    cursor vcursor
    is
    select name, jikwi, basicpay from tblInsa where buseo = '기획부';

    vname tblInsa.name%type;
    vjikwi tblInsa.jikwi%type;
    vbasicpay tblInsa.basicpay%type;

begin

    open vcursor;
    loop
        -- select name, jikwi, basicpay into vname, vjikwi, vbasicpay    
        fetch vcursor into vname, vjikwi, vbasicpay; -- fetch vcursor into (결과셋의 레코드의 속성값이 다수인경우 select절의 순서를 따름);
        exit when vcursor%notfound;
        
        -- 기회부 직원 한명씩 접근
        dbms_output.put_line(vname || ',' || vjikwi || ','|| vbasicpay  );
       
    end loop;   
    close vcursor;
end;
/

--문제. tblInsa
--모든 직원에게 보너스 지급
-- 60명 전원
--과장/부장 > 1.5배
-- 사원/대리 > 2배

select * from tblInsa;
select * from tblBonus;

declare
    /*내 풀이
    cursor vcursor is select * from tblInsa;
    vrow tblInsa%rowtype;
    vbonus tblInsa.basicpay%type;*/
    cursor vcursor is select num, basicpay, jikwi from tblInsa;
    
    vnum tblInsa.num%type;
    vbasicpay tblInsa.basicpay%type;
    vjikwi tblInsa.jikwi%type;
    vbonus number;
begin
    
    open vcursor;
    loop    
        
        fetch vcursor into vnum, vbasicpay, vjikwi; --> fetch vcursor into vrow;
        exit when vcursor%notfound;
    
        if vjikwi = '과장' or vjikwi = '부장' then
            vbonus := vbasicpay * 1.5;              --> vbonus := vrow.basicpay*1.5;
        elsif vjikwi in ('사원', '대리') then
            vbonus := vbasicpay * 2;                --> vbonus := vrow.basicpay*2;
        end if;
            
        insert into tblBonus (seq, num, bonus)
            values ((select nvl(max(seq), 0) + 1 from tblBonus), vnum, vbonus); --> values ((select nvl(max(seq),0)+1 from tblBonus), vrow.num ,vbonus);
    
    end loop;
    close vcursor;
    
end;
/

select * from tblBonus b
    inner join tblInsa i
        on i.num = b.num;




--커서 탐색
-- 1. 커서 + loop > 기본
-- 2. 커서 + for loop > 간단

-- 60명 직원 정보 전부 ~ 출력

-- 정석 :cursor + loop
declare
    cursor vcursor is select * from tblInsa;
    vrow tblInsa%rowtype;
begin
    open vcursor;
    loop    
        fetch vcursor into vrow;
        exit when vcursor%notfound;       
        dbms_output.put_line(vrow.name || ',' || vrow.buseo);   
    end loop;
    close vcursor;

end;
/


-- cursor + for loop > 주석달린건 자동으로 실행됨

declare
    cursor vcursor is select * from tblInsa;
--    vrow tblInsa%rowtype;
begin
--    open vcursor;
    for vrow in vcursor loop    
--        fetch vcursor into vrow;
--        exit when vcursor%notfound;       
        dbms_output.put_line(vrow.name || ',' || vrow.buseo);   
    end loop;
--    close vcursor;
end;
/

------------- 커서 + 루프 기본구조
declare
    cursor 커서명
    is
    select * from 참조테이블명;
    
    vrow 참조테이블명%rowtype;

begin
    open 커서명;
    loop
    
        fetch 커서명 into vrow;
        exit when 커서명%notfound;
        
        구현부;
    
    end loop;
    close 커서명;

end;
/



------------------------
-- 예외처리
-- : 실행부에서 (begin ~ end) 발생하는 예외를 처리하는 블럭 > exception 블럭
-- :java의 catch절 역할과 동일

declare
    vname tblInsa.name%type;
begin
    -- 정상작동
--    select name into vname from tblInsa where num = 1001;
    dbms_output.put_line('111');
    --ORA-01403: "no data found"
    select name into vname from tblInsa where num = 1000;
    dbms_output.put_line('222');
    dbms_output.put_line(vname);
    dbms_output.put_line('333');
    
exception --에러발생하면 즉시 exception 블럭으로 이동후 실행
    when others then -- others: 모든 오류를 예외처리 > 범용
        dbms_output.put_line('예외처리');
end;
/


-- 예외발생 > 기록(log) 저장할 테이블 생성
create table tblLog (
    seq number primary key,               -- PK
    code varchar2(7) not null,            -- 상태코드 (모델링시에 어떻게 작성할지 정해야함)
    message varchar2(1000) not null,      -- 예외메세지
    regdate date default sysdate not null -- 발생시각
);

create sequence seqLog;

declare
    vcnt number;
    vname varchar2(15);
begin

    select count(*) into vcnt from tblCountry where name = '러시아'; -- 조건절 만족하는데이터 없음 -> vcnt = 0
    dbms_output.put_line(100/vcnt); --> 0으로 나누기 > 에러발생 01476. 00000 -  "divisor is equal to zero"

    select name into vname from tblInsa where num = 1000;
    dbms_output.put_line(vname); --> num = 1000인 레코드 없음 01403. 00000 -  "no data found"

exception -- Q. 첫번째 오류만 예외처리하고 종료?
/*다중캐치
    when 예외종류 then 예외처리코드;
    when 예외종류 then 예외처리코드;
    when 예외종류 then 예외처리코드;
 */   
    when ZERO_DIVIDE then
        dbms_output.put_line('0으로 나누기');
        insert into tblLog values (seqLog.nextVal, 'A001','가져온 레코드가 없습니다.',default);
        
    when NO_DATA_FOUND then 
         dbms_output.put_line('데이터 없음');
         insert into tblLog values (seqLog.nextVal, 'B003','직원이 존재하지 않습니다.',default);
  
    when others then
         dbms_output.put_line('나머지 예외');
         insert into tblLog values (seqLog.nextVal, 'z009','기타 예외가 발생했습니다.',default);
 
end;
/

select * from tblLog;

--<==========익명 프로시저=============== 


-->=========실명프로시저===============

/*

    프로시저
    
    1. 익명 프로시저
        -1회용
    
    2. 실명 프로시저
        - 저장 > 재사용
    
    실명 프로시저
    - 저장 프로시저(Stored Procedure)
    
    --''1,2 모두 프로시저인데, 하는 역할 때문에 부르는 이름이 다른거
    
    1. 저장 프로시저, Stored Procedure
        - 매개변수 / 반환값 > 구성 자유
    
    2. 저장 함수, Stored Function
        - 매개변수 / 반환값 > 필수
        
*/


/*
    --Vs. 익명프로시저
    
    익명프로시저 선언    
    [declare
        변수선언;
        커서선언;]
    begin
        구현부;
    [exception
        예외처리;]
    end;
        
    
    저장 프로시저 선언
    create [or replace] procedure 프로시저명
    is(as) --키워드 생략 불가
    [    변수선언;
        커서선언;]
    begin
        구현부;
    [exception
        예외처리;]
    end;
*/

-- 즉시 실행 / 익명
declare
    vnum number;
begin
    vnum:=100;
    dbms_output.put_line(vnum);
end;
/
-- 즉시 실행 / 실명
-- > 생성한 것 (호출 ㄴㄴ)
create or replace procedure procTest
is
    vnum number;
begin
    vnum:=100;
    dbms_output.put_line(vnum);
end;
/

--프로시저 호출
--1. PL/SQL 공간에서만 호출 가능 > begin - end;
begin
--    procTest(); -- 오라클에서는 매개변수가 없으면, 소괄호 생략가능
    procTest;
end;
/
--2. 명령어 사용해서 호출
execute procTest;
exec procTest;
call procTest;


-- 메서드 > 매개변수 리스트 + 반환값
--1. 매개변수가 있는 프로시저 생성
create or replace procedure procTest(pnum number) -- 매개변수
is
    vnum number; --일반변수
begin
    vnum := pnum * 2;
    dbms_output.put_line(vnum);
end procTest; --> 가독성 높이기 위해서 end 프로시저명; 작성 > 선택사항
/

--> 프로시저 호출
begin 
    procTest(100);
    procTest(200);
    procTest(300);
end;
/


--
create or replace procedure procTest(
    pwidth number,
    pheight number
)
is
    varea number;
begin
    varea := pwidth * pheight;
    dbms_output.put_line(varea);
end procTest;
/

begin
    procTest(100,200);
end;
/

-- 실명프로시저 작성시 주의사항
-- 1.프로시저의 매개변수
--      a. pname varchar2(20) > 길이표현 불가
--      b. pname varchar2 not null > not null 표현 불가
-- 2. is(as) 생략 불가능
create or replace procedure procTest(
    pname varchar2
    )
is
begin
    dbms_output.put_line('안녕하세요. '|| pname ||'님');
end procTest;
/

begin
    procTest('홍길동');
end;
/

--판서확인
-- 3. default --마지막 컬럼부터 작성해야한다. (중간에 비어있으면, 어떤 값에 매개변수로 대입 하는지 모름)
create or replace procedure procTest(
    pwidth number,
    pheight number default 10
)
is
    varea number;
begin
    varea := pwidth * pheight;
    dbms_output.put_line(varea);
end procTest;
/

begin
--    procTest(10,20);
    procTest(10); 
--    procTest();
end;
/


/*

    매개변수 모드
    - 매개변수가 값을 전달하는 방식
    - C언어: Call by Value > 값을 넘기는 동작
    - C언어: Call by Renference > 주소를 넘기는 동작

    1. in > 기본
    2. out
    3. in out > 사용 안함



*/



create or replace procedure procTest(
    pnum1 number,        -- in parameter
    pnum2 in number,    -- in parameter
    presult out number,  -- out parameter
    presult2 out number,  -- out parameter
    presult3 out number  -- out parameter

)

is
begin
    presult := pnum1 + pnum2;
    presult2 := pnum1 - pnum2;
    presult3 := pnum1 * pnum2;
    
    
end procTest;
/

declare
    vtemp number;
    vtemp2 number;
    vtemp3 number;

begin
--    procTest(10,20,0); --outer mode의 변수를 호출할때는 상수는 넣을 수 없음 > 에러: 식은 피할당자로 사용될 수 없습니다
    procTest(10,20,vtemp,vtemp2,vtemp3); --vtemp(변수) 생성후 전달 > 주소값 전달 됨
    dbms_output.put_line(vtemp);
    dbms_output.put_line(vtemp2);
    dbms_output.put_line(vtemp3);
end;
/



/*
    문제
    
    1.procTest1
        - 부서전달(인자1개) > in
        - 해당부서의 직원 중 급여를 가장 많이 받는 사람의 번호를 반환 > out
        - 호출 + 번호 출력
    
    2.procTest2
        - 직원번호전달 >in
        - 같은 지역에 사는 지원수 ? 같은 직위의 직원수? 해당 직원보다 급여를 더 많이 받는 사람 수? > out 3개
        - 호출 + 인원수3개 출력

*/

--1.
create or replace procedure procTest1(
    pbuseo varchar2, --매개변수는 타입참조 안됨
    pnum out number
)
is
begin

    select num into pnum from tblInsa
        where basicpay = (select max(basicpay) from tblInsa where buseo = pbuseo)
            and buseo = pbuseo;
end;
/

declare
    vnum number;
begin
    procTest1('개발부',vnum);
    dbms_output.put_line(vnum);
end;
/



--2
-- 같은 지역에 사는 지원수 ? 같은 직위의 직원수? 해당 직원보다 급여를 더 많이 받는 사람 수? > out 3개
create or replace procedure procTest2(
    pnum in number,  --직원번호
    pcnt1 out number,
    pcnt2 out number,
    pcnt3 out number
)
is
begin

    select count(*) into pcnt1 from tblInsa
        where city = (select city from tblInsa where num = pnum);

    select count(*) into pcnt2 from tblInsa
        where jikwi = (select jikwi from tblInsa where num = pnum);

    select count(*) into pcnt3 from tblInsa
        where basicpay > (select basicpay from tblInsa where num = pnum);

end;
/


declare
    vcnt1 number;
    vcnt2 number;
    vcnt3 number;
begin
    procTest2(1001, vcnt1, vcnt2, vcnt3);
    dbms_output.put_line(vcnt1);
    dbms_output.put_line(vcnt2);
    dbms_output.put_line(vcnt3);

end;
/

select * from tblStaff;
select * from tblProject;
-- 직원 퇴사 프로시저, procDeleteStaff
-- 1. 퇴사 직원 > 담당 프로젝트 유무 확인?
-- 2. 담당프로젝트 존재 > 위임
-- 3. 퇴사 직원 삭제


create or replace procedure procDeleteStaff(
    pseq number,        --퇴사할 직원번호
    pstaff number,      --위임받을 직원번호
    presult out number  --절차 성공 > 1 / 실패 > 0
)
is
    vcnt number;        --퇴사 직원의 담당 프로젝트 개수
begin
    --1. 퇴사직원이 담당 프로젝트가 있는가?
    select count(*) into vcnt from tblProject where staff_seq = pseq;
    
    --2. 조건 > 위임 유무 결정
    if vcnt > 0 then
        -- 3. 위임
        update tblProject set staff_seq = pstaff where staff_seq = pseq;
    else
        --3. 아무것도 안함
        null; --> 아무일도 안일어남 > else절 수정하지 말라는 개발자의 의도 표현
    end if;
    
    --4. 퇴사
    delete from tblStaff where seq = pseq;
    
    --5. 성공
    presult := 1;
    
    --5. 실패 > 예외
exception
    when others then
        presult := 0;
end;
/
-- 판서확인
declare
    vresult number;
begin
    procDeleteStaff(1,2,vresult);
    if vresult = 1 then
        dbms_output.put_line('퇴사성공');
    else
        dbms_output.put_line('퇴사 실패');
    end if;
 end;
 /


--판서 다시보기
--조건추가

-- 직원 퇴사 프로시저, procDeleteStaff
-- 1. 퇴사 직원 > 담당 프로젝트 유무 확인?
-- 2. 담당프로젝트 존재 > 위임
-- 3. 퇴사 직원 삭제

-- 2. 위임받을 직원 > 현재 프로젝트를 가장 적게 담당하는 직원에게 위임
select * from tblStaff;
select * from tblProject;

select seq from
(select seq, nvl(cnt,0) as cnt from 
            (select staff_seq,count(*) as cnt from tblProject   --1. 
             where staff_seq is not null group by staff_seq) a
              right outer join tblStaff s                       --2
                on a.staff_seq = s.seq
                    order by cnt asc)                           --3:오더바이 정렬 > 로우넘 사용 > 다시 서브쿼리로 
                        where rownum = 1;
                        
                        
create or replace procedure procDeleteStaff(
    pseq number,        --퇴사할 직원번호
    pstaff number,      --위임받을 직원번호
    presult out number  --절차 성공 > 1 / 실패 > 0
)
is
    vcnt number;        --퇴사 직원의 담당 프로젝트 개수
begin
    --1. 퇴사직원이 담당 프로젝트가 있는가?
    select count(*) into vcnt from tblProject where staff_seq = pseq;
    
    --2. 조건 > 위임 유무 결정
    if vcnt > 0 then
    
        --2.5 가장 프로젝트를 적게 담당한 직원
        select seq into vcnt from
        (select seq, nvl(cnt,0) as cnt from 
            (select staff_seq,count(*) as cnt from tblProject   --1.
             where staff_seq is not null group by staff_seq) a
              right outer join tblStaff s                       --2
                on a.staff_seq = s.seq
                    order by cnt asc)                           --3:오더바이 정렬 > 로우넘 사용 > 다시 서브쿼리로 
                        where rownum = 1;
        -- 3. 위임
        update tblProject set staff_seq = pstaff where staff_seq = pseq;
    else
        --3. 아무것도 안함
        null; --> 아무일도 안일어남 > else절 수정하지 말라는 개발자의 의도 표현
    end if;
    
    --4. 퇴사
    delete from tblStaff where seq = pseq;
    
    --5. 성공
    presult := 1;
    
    --5. 실패 > 예외
exception
    when others then
        presult := 0;
end;
/
-- 판서확인
declare
    vresult number;
begin
    procDeleteStaff(1,2,vresult);
    if vresult = 1 then
        dbms_output.put_line('퇴사성공');
    else
        dbms_output.put_line('퇴사 실패');
    end if;
 end;
 /
 
 
 /*
 
    저장 프로시저
    1. 저장 프로시저
    
    2. 저장 함수
    
    저장 함수, Stored Function > 함수 (Function)
    - 저장 프로시저와 동일
    - 반환값이 반드시 존재!
 
 */
 
-- num1 + num2 > 합 반환

-- 프로시저
create or replace procedure procSum(
    pnum1 number,
    pnum2 number,
    presult out number
)
is
begin

    presult := pnum1 + pnum2;
    
end procSum;
/

declare
    vresult number;
begin
    procSum(10,20,vresult);
    dbms_output.put_line(vresult);
end;
/

-- 함수
create or replace function fnSum(
    pnum1 number,
    pnum2 in number
    --presult out number --> out parameter 사용안함
) return number --헤더 끝에 return type 작성
is
begin
    return pnum1 + pnum2;
end fnSum;
/

--호출 
declare
    vresult number;
begin
    procSum(10,20,vresult);
    dbms_output.put_line(vresult);
    
    vresult := fnSum(30,40); --PL/SQL에서 잘 사용안한다.(저장 프로시저는 변수를 여러개 돌려받을 수 있으나, function은 반환값 하나만 받음) > ANSI-SQL에서 사용한다.
    dbms_output.put_line(vresult);
end;
/

--ANSI-sql + function
--''저장 프로시저: 호출시 프로시저의 변수 필요> ansi-sql 영역에서 사용불가능 / 경우에 따라 돌려받는 값이 여러개 > 컬럼값으로 사용 불가능
--''저장 함수: 호출시 프로시저 변수 필요없음 > ansi-sql 영역에서 사용가능 / return 값이 유일하고, 그 값은 정해진 상수 > > 컬럼값으로 사용 가능

select
    name, buseo, jikwi, fnGender(ssn) --밑에 만든 function을 호출
from tblInsa;

create or replace function fnGender(
    pssn varchar2
)return varchar2
is
begin
    return case
                when substr(pssn, 8,1) = '1' then '남자'
                when substr(pssn, 8,1) = '2' then '여자'
            end;
end fnGender;
/

--> 프로시저: 일련의 흐름을 가지는 명령어 집합 = 모듈
--> 함수: ANSI-SQL의 반복되는 업무
 
 ---------------------------------------------------------------------------------
/*
    프로시저
    
    1. 프로시저
    2. 함수
    3. 트리거
    
    트리거,Trigger
    - 프로시저의 한종류
    - 개발자의 호출이 아닌,
      미리 지정한 특정 사건이 발생하면
      시스템(오라클)이 자동으로 호출하는 프로시저
    
    - 개발자: 예약(사건) > 오라클: 감시 > 사건 발생 > 오라클: 프로시저 호출

    - 특정 테이블 지정 > 지정 테이블을 오라클이 감시 > 사건발생( insert / update / delete ) > 미리 준비한 프로시저(트리거) 호출

    [트리거 구문]
    
    create or replace trigger 트리거명
        before|after
        insert|update|delete
        on 테이블명
        [for each row]
                            -- 사건발생시 [declare]~end; 프로시저 블럭이 실행됨
    [declare                <-- 저장함수지만 declare로 작성
        선언부;]
    begin
        구현부;
    exception
        예외처리부;
    end;
    
*/
 
 -- tblInsa > 직원 삭제
 
 --사건예약
 create or replace trigger trgInsa
    before              --3. 삭제가 발생하기 직전에 구현부를 실행해라
    delete              --2. 삭제가 발생하는지 검사?
    on tblInsa          --1. tblInsa테이블에서
 begin
    dbms_output.put_line(to_char(sysdate, 'hh24:mi:ss') || ' 트리거가 실행되었습니다.');
    
    --목요일에는 퇴사가 불가능
    if to_char(sysdate, 'dy') = '목' then
        
        --강제로 에러 발생 > delete전 구현부에서 에러를 발생시켜 강제로 종료
        -- java: throw new Exception()
        --: -20000 ~ -29999: 사용자 정의 에러번호
        raise_application_error(-20001, '목요일에는 퇴사가 불가능합니다.');
    end if; 
end trgInsa;
/ 
 
delete from tblInsa where num = 1005; --> 에러발생

delete from tblBonus;
 
--트리거 확인 
select trigger_name, table_name, status from user_triggers where table_name = 'TBLINSA';
select * from user_triggers where table_name = 'tblInsa'; -- 안됨 (데이터로서 접근할 때는 > 대문자로 작성)
                                                          --> why? ***오라클은 사용자가 생성한 모든 식별자(테이블명, 컬럼명 등)를 저장할 때 대문자로 저장한다.

--트리거 중지
alter trigger trgInsa disable;
delete from tblInsa where num = 1006; --> 삭제됨
 
-- 트리거 작동
alter trigger trgInsa enable;
delete from tblInsa where num = 1007; --> 에러발생

 
-- 로그기록
-- tblDiary > 감시 > 사건발생 > 로그저장
select * from tblDiary;

create table tblLogDiary (
    seq number primary key,                 --PK
    message varchar2(1000) not null,        --메세지
    regdate date default sysdate not null   --시간
);

create sequence seqLogDiary;

create or replace trigger trgDiary
    after
    insert or update or delete
    on tblDiary
declare
    vmessage varchar2(1000);
begin
    --dbms_output.put_line('trgDiary 호출됨');
    
    if inserting then
--        dbms_output.put_line('trgDiary 호출됨 - 삽입');
        vmessage := '새로운 항목이 추가되었습니다.';
    elsif updating then
        --dbms_output.put_line('trgDiary 호출됨 - 수정');
        vmessage := '기존 항목이 수정되었습니다.';
    elsif deleting then
        --dbms_output.put_line('trgDiary 호출됨 - 삭제');
        vmessage := '기존 항목이 삭제되었습니다.';

    end if;
    
    insert into tblLogDiary values (seqLogDiary.nextVal, vmessage, default);
    
end trgDiary;
/

insert into tblDiary values (11, '눈이 많이 왔습니다.','눈', sysdate);

update tblDiary set subject = '함박눈이 많이 왔습니다.' where seq = 11;

delete from tblDiary where seq = 11;

select * from tblLogDiary;

alter trigger trgDiary disable;
-- 하나의 테이블에 여러 트리거 걸 수 있고, 하나의 트리거를 여러 테이블에 걸 수 있다.


/*
    [for each row]
    
    1.생략
        - 문장(Query) 단위 트리거, table level trigger
    2. 사용
        - 행(Record) 단위 트리거
        

*/


create or replace trigger trgMen
    after
    delete
    on tblMen
    for each row --생략

begin
    dbms_output.put_line('레코드를 삭제했습니다.' || :old.name || ', ' || :old.age);  --> :old.컬럼명 -> 삭제된 행의 해당 컬럼 가져옴 > old참조시 for each now생략안됨
end trgMen;
/

select * from tblMen;
delete from tblMen where name ='조세호';
delete from tblMen; --8행 삭제 > for each row --생략 > begin 구현부 한번 실행됨 > 문장단위 트리거
                    --         > for each row 작성 > begin 구현부 행의 수만큼 실행됨 > 행단위 트리거
rollback;

--old 참조 : 사건 발생 전의 레코드 참조
--new 참조 : 사건 발생 후의 레코드 참조
-- after | before > 결과 동일
-- insert > :old(X), :new(O)
-- update > :old(O), :new(O)
-- delete > :old(O), :new(X)

create or replace trigger trgMen
--  after  
    before
--    update
--    insert
    delete
    on tblMen
    for each row
begin
    dbms_output.put_line('레코드를 수정했습니다.' || :old.name);
--    dbms_output.put_line('수정 전 나이' || :old.age);
--    dbms_output.put_line('수정 후 나이' || :new.age);
    dbms_output.put_line('전 여친 > ' || :old.couple);
    dbms_output.put_line('현 여친 > ' || :new.couple);
end trgMen;
/

update tblMen set age = age +1 where name = '홍길동';
update tblMen set couple = '장도연' where name = '홍길동';

insert into tblMen values ('강호동',30,180,90,'호호호'); --> old가 참조할 레코드가 없음 > new참조만 가능(insert 값 참조)

delete from tblMen where name ='강호동'; --> old 참조만 가능
select * from tblMen;



-- 퇴사 > 프로젝트 위임

select * from tblStaff;
select * from tblProject;

-- 데이터삭제방법
-- 1. delete from tblStaff;
-- 2. truncate table tblStaff;

delete from tblProject; --롤백 가능
truncate table tblProject; --롤백이 안됨
truncate table tblStaff;


insert into tblStaff (seq, name, salary, address) values (1, '홍길동',300,'서울시');
insert into tblStaff (seq, name, salary, address) values (2, '아무개',250,'인천시');
insert into tblStaff (seq, name, salary, address) values (3, '하하하',350,'부산시');

insert into tblProject (seq, project, staff_seq) values (1, '홍콩 수출',1); --홍길동
insert into tblProject (seq, project, staff_seq) values (2, 'TV 광고',2); --아무개
insert into tblProject (seq, project, staff_seq) values (3, '매출 분석',3); --하하하
insert into tblProject (seq, project, staff_seq) values (4, '노조 협상',1); --홍길동
insert into tblProject (seq, project, staff_seq) values (5, '대리점 분양',2); -- 아무개

commit;
rollback;


create or replace trigger trgDeleteStaff
    before           --3. 하기 전에
    delete          --2. 퇴사
    on tblStaff     --1. 직원 테이블에서
    for each row    --4. 해당 직원 정보
begin
    --5. 사용 > 위임
    update tblProject set staff_seq = 3
        where staff_seq = :old.seq; -- 퇴사하는 직원 번호
end;
/

select * from tblStaff;
select * from tblProject;

-- 회원 테이블 + 게시판 테이블
-- 포인트 정책
-- 1. 글 작성 > 포인트 + 100
-- 2. 글 삭제 > 포인트 - 50

--1.테이블 생성
create table tblUser(
    id varchar2(30) not null,
    point number not null

);

--2.제약사항
alter table tblUser
    add constraint tbl_user_id_pk primary key(id);

create table tblBoard(
    seq number not null,
    subject varchar2(2000) not null,
    id varchar2(30) not null
);

alter table tblBoard
    add constraint tblboard_seq_pk primary key(seq);
    
alter table tblBoard add constraint tblboard_id_fk foreign key(id) references tblUser(id);

create sequence seqBoard;
drop sequence seqBoard;


--3.
insert into tblUser values ('hong', 1000);

-- a. 글을쓴다.( c. 삭제한다)
-- b. 포인트를 누적한다.( d. 차감한다.)

--> case 1. harding coding
-- 개발자직접제어 > ansi-sql
--1.a 글쓰기
insert into tblBoard values (seqBoard.nextVal, '게시판입니다.','hong');

--1.b 포인트 누적하기
update tblUser set point = point + 100 where id = 'hong';

--1.c 글삭제하기
delete from tblBoard where seq = '1';

--1.d 포인트 차감하기
update tblUser set point = point - 50 where id = 'hong';

select * from tblBoard;
select * from tblUser;

--case2. 프로시저
-- 글작성 프로시저 생성
create or replace procedure procAddBoard(
    pid varchar2,
    psubject varchar2
)
is
begin
    --2.a 글쓰기
    insert into tblBoard values (seqBoard.nextVal, psubject,pid);
    --2.b 포인트 누적하기
    update tblUser set point = point + 100 where id = pid;
end procAddBoard;
/

-- 글삭제 프로시저 생성
create or replace procedure procDeleteBoard(
    pseq number
)
is
    vid tblUser.id%type;
begin

    select id into vid from tblBoard where seq = pseq; --삭제하려는 글의 작성자 아이디를 호출하고 프로시저 변수에 저장한다.
    
    --2.c 글삭제하기
    delete from tblBoard where seq = pseq;
    
    --2.d 포인트 차감하기
    update tblUser set point = point - 50 where id = vid;

end procDeleteBoard;
/

-- 호출
begin
--글작성 프로시저 호출
--    procAddBoard('hong','안녕하세요');
--글삭제 프로시저 호출
    procDeleteBoard(21); --삭제할게시판 번호
end;
/
select * from tblBoard;


--Case 3. 트리거 + 사건(ANSI-SQL)
--''트리거는 매개변수를 받을 수 없음 -> 특정사건에 대해 예약한 행동을 구현하거나, 사건의 특정 컬럼을 받아오는 것만 할 수 있음(by. new,old 참조)
--''
--1. 포인트 누적/차감 트리거 생성
create or replace trigger trgBoard
    after
    insert or delete
    on tblBoard
    for each row
begin
    if inserting then
        update tblUser set point = point + 100 where id = :new.id;
    elsif deleting then
        update tblUser set point = point - 50 where id = :old.id;     
    end if;    
end trgBoard;
/
--글 작성
insert into tblBoard values (seqBoard.nextVal, '금요일입니다.','hong');
select * from tblBoard; --22	금요일입니다.	hong
select * from tblUser; -- hong	1200

--글 삭제
delete tblBoard where seq = 22;
select * from tblUser; -- hong	1150
















