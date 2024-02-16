-- ex11_casting_function.sql

/*
    형변환
    
    1. varchar2 to_char(숫자) : 숫자 > 문자 (*)
    2. varchar2 to_char(날짜) : 날짜 > 문자 (*****)
    3. number to_number(문자형):문자 > 숫자 (거의 안씀)
    4. date to_date(문자형)   : 문자 > 날짜 (***)

    1. varchar2 to_char(숫자[, 형식문자열]) : 숫자 > 문자
    
    형식문자열 구성요소
    a. 9: 숫자 1개를 문자 1개로 바꾸는 역할. 빈자리는 공백으로 치환 ''> ex 99999(= %5d) -> 5자리 문자열로 반환
    b. 0: 숫자 1개를 문자 1개로 바꾸는 역할. 빈자리는 0으로 치환 ''> ex 00000(= %05d) -> 5자리 문자열로 반환
    c. $: 통화기호
    d. L: 현지 통화 기호
    e. .: 소숫점
    f. ,: 천단위 표기

*/
--1.varchar2 to_char(숫자)
select 
    basicpay as aaaaaaaaaaaaaaaaaaaa, --''숫자: 테이블 오른쪽 정렬
    to_char(basicpay) as aaaaaaaaaaaaaaaaaaa --''문자: 테이블 왼쪽 정렬
from tblInsa;
--1.varchar2 to_char(숫자[, 형식문자열])
select
    weight,
    '@'|| to_char(weight) ||'@',
    '@'|| to_char(weight, '99999') ||'@', --@    64@ (부호비트자리 1개) + 5자리
    '@'|| to_char(weight, '00000') ||'@', --@ 00064@
    '@'|| to_char(-weight, '99999') ||'@', --@   -64@
    '@'|| to_char(-weight, '00000') ||'@', --@-00064@
from tblComedian;


select
--형식문자 $
    100,
    to_char(100,'$999'), -- $100
    to_char(100) ||'달라', --100달라
--형식문자 L
    to_char(100, 'L999') --w100 : 현지 통화
from dual;
    
select
--형식문자 .
    3.14,
    to_char(3.14, '99.9'),  --  3.1
    to_char(3.14, '9.99'),   -- 3.14
    --반올림함
    to_char(3.15, '99.9'),  --  3.2
    to_char(3.15, '9.99'),   -- 3.15
--형식문자 ,    
    1000000,
    to_char(1000000,'9,999,999'), -- 1,000,000
    to_char(1000000,'9999,9999') --  100,0000 
from dual;


/*
    중요
    2. varchar2 to_char(날짜 [, 형식문자열]) : 날짜 > 문자
    
    형식문자열 구성요소
    a. yyyy
    b. yy
    c. month
    d. mon
    e. mm
    f. day
    g. dy
    h. ddd
    i. dd
    j. d
    k. hh
    l. hh24
    m. mi
    n. ss
    o. am(pm)
*/
--sysdate 현재시간을 반환하는 함수 -> 매개변수가 없는 경우 () 작성 안함 / 시분초 정보까지 같이 포함하고 있고, dump를 yy/mm/dd로 함
select sysdate from dual; --24/02/15
select to_char(sysdate) from dual; --24/02/15

select to_char(sysdate, 'yyyy') from dual;  --2024  > 년(4자리)
select to_char(sysdate, 'yy') from dual;    --24    > 년(2자리)
select to_char(sysdate, 'month') from dual; --2월   > 월(풀네임)
select to_char(sysdate, 'mon') from dual;   --2월   > 월(약어)
select to_char(sysdate, 'mm') from dual;    --02    > 월(2자리)
select to_char(sysdate, 'day') from dual;   --목요일> 요일(풀네임)
select to_char(sysdate, 'dy') from dual;    --목    > 요일(약어)
select to_char(sysdate, 'ddd') from dual;   --046   > 일(올해의 며칠) day of year
select to_char(sysdate, 'dd') from dual;    --15    > 일(이번달의 며칠) day of month
select to_char(sysdate, 'd') from dual;     --5     > 일(이번주의 며칠,요일) day of week (일요일:1 - 토요일:7)
select to_char(sysdate, 'hh') from dual;    --02    > 시(12시)
select to_char(sysdate, 'hh24') from dual;  --14    > 시(24시)
select to_char(sysdate, 'mi') from dual;    --38    > 분
select to_char(sysdate, 'ss') from dual;    --07    > 초
select to_char(sysdate, 'am') from dual;    --오후  > 오전/오후
select to_char(sysdate, 'pm') from dual;    --오후  > 오전/오후

select
    sysdate,--24/02/15
    to_char(sysdate, 'yyyy-mm-dd'), --024-02-15
    to_char(sysdate, 'hh24:mi:ss'), --14:45:50
    to_char(sysdate, 'yyyy-mm-dd hh24:mi:ss'), --2024-02-15 14:45:50
    to_char(sysdate, 'day am hh:mi:ss') --목요일 오후 02:46:50
from dual;

select
    name,
    to_char(ibsadate, 'yyyy-mm-dd') as ibsadate,
    to_char(ibsadate, 'day') as day,
    case
        when to_char(ibsadate,'d') in ('1','7') then '휴일 입사'
        else '평일 입사'
    end
from tblInsa;

--요일별 입사 인원수?
select
    --case절 사용
    count(case
        when to_char(ibsadate, 'd') = '1' then 1
    end) as 일요일,
    -- decode 사용
    count(decode(to_char(ibsadate, 'd'), '2', 1)) as 월요일,
    count(decode(to_char(ibsadate, 'd'), '3', 1)) as 화요일,
    count(decode(to_char(ibsadate, 'd'), '4', 1)) as 수요일,
    count(decode(to_char(ibsadate, 'd'), '5', 1)) as 목요일,
    count(decode(to_char(ibsadate, 'd'), '6', 1)) as 금요일,
    count(decode(to_char(ibsadate, 'd'), '7', 1)) as 토요일
from tblInsa;


--tblInsa. 2010년도 입사한 직원?
--아래의 코드는 문자형이 날짜형으로 암시적 형변환이 일어난다. 이때 시분초는 0시0분0초로 변환된다.
select * from tblInsa
    where ibsadate >= '2010-01-01' and ibsadate <= '2010-12-31'; --오답

select * from tblInsa
    where ibsadate between '2010-01-01' and '2010-12-31'; --오답
    
--시분초를 직접 설정하면, 명시적 변환 자체가 불가능하다.
select * from tblInsa
    where ibsadate >= '2010-01-01 00:00:00' and ibsadate <= '2010-12-31 23:59:59'; --01861. 00000 -  "literal does not match format string"
    

--정답   
select * from tblInsa
    where to_char(ibsadate, 'yyyy') = '2010';
    
/*
    3. number to_number(문자형):문자 > 숫자
    --안씀 (문자형이 숫자형으로 암시적 형변환 됨)


*/

select
    '123' * 2,
    to_number('123') *2
from dual;

/*
    4. date to_date(문자형, 형식문자열)   : 문자 > 날짜
    ''문자형이 날짜형으로 암시적 형변환이 일어나지 않는 경우에는 형식문자열을 작성하여 명시적으로 알려줘야함.
*/

select
    '2024-02-15', --문자
    to_date('2024-02-15'), --날짜
--    to_date('2024-02-15 15:14:45'),
    to_date('2024-02-15 15:14:45','yyyy-mm-dd hh24:mi:ss'),
    to_date('2024-02-15', 'yyyy-mm-dd'), --오라클한테 형식문자열을 작성해서 해당 형식으로 문자형을 작성했다고 명시적으로 알려줌.
    to_date('20240215'),
    to_date('20240215', 'yyyymmdd'),
    to_date('02152024', 'mmddyyyy')
from dual;

select * from tblInsa
where ibsadate >= to_date('2010-01-01 00:00:00', 'yyyy-mm-dd hh24:mi:ss')
    and ibsadate <= to_date('2010-12-31 23:59:59', 'yyyy-mm-dd hh24:mi:ss');
    
    