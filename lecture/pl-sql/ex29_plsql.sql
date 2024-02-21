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
        
        
    PL/SQL 프로시저 구조
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












