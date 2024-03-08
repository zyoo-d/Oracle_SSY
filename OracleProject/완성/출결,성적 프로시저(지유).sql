--출결,성적 프로시저(지유)
--특정 과정 학생 출결 조회
select * from vwAllAttend;

create or replace procedure procAttByCrs(
    pocpk number
)
is
    cursor vcursor is select * from vwAllAttend where ocpk = pocpk and ocname is not null;
    vocname vwAllAttend.ocname%type;
begin
    select distinct ocname into vocname from vwAllAttend where ocpk=pocpk;
        dbms_output.put_line('========'||vocname||'수강생 출결현황'||'========');
    for vrow in vcursor loop

              dbms_output.put_line('  |일자:  '||vrow.regdate||'  |  '||vrow.name||'  |IN:  '||nvl(to_char(vrow.checkin,'hh24:mi:ss'),'XX:XX:XX')||'  |OUT:  '||nvl(to_char(vrow.checkout,'hh24:mi:ss'),'XX:XX:XX')||'  |  '||vrow.status||'  |  '||vrow.ocname);

    end loop;
end;
/

begin
    procAttByCrs(2);
end;
/
--특정 기간 출결조회
create or replace procedure procAttByDate(
    pstart number,
    pend number
)
is
    cursor vcursor is select * from vwAllAttend where to_number(to_char(regdate, 'yymmdd')) between pstart and pend and ocname is not null;
begin
        dbms_output.put_line('================================'||pstart||'-'||pend||'수강생 출결'||'================================');
    for vrow in vcursor loop
            dbms_output.put_line('  |일자:  '||vrow.regdate||'  |  '||vrow.name||'  |IN:  '||nvl(to_char(vrow.checkin,'hh24:mi:ss'),'XX:XX:XX')||'  |OUT:  '||nvl(to_char(vrow.checkout,'hh24:mi:ss'),'XX:XX:XX')||'  |  '||vrow.status||'  |  '||vrow.ocname);


    end loop;
end;
/

begin
    procAttByDate(240101,240222);
end;
/



--학생별 출결 조회
create or replace procedure procAttByDate(
    pstupk number
)
is
    vname vwAllAttend.name%type;
    cursor vcursor is select * from vwAllAttend where stupk = pstupk;
begin
    select distinct name into vname from vwAllAttend where stupk = pstupk;
        dbms_output.put_line('================================================'||vname||'수강생 출결현황'||'================================================');
    for vrow in vcursor loop
            dbms_output.put_line('  |일자:  '||vrow.regdate||'  |  '||vname||'  |IN:  '||nvl(to_char(vrow.checkin,'hh24:mi:ss'),'XX:XX:XX')||'  |OUT:  '||nvl(to_char(vrow.checkout,'hh24:mi:ss'),'xx:xx:xx')||'  |  '||vrow.status||'  |  '||vrow.ocname);
    end loop;
end;
/
call procAttByDate(202);

--(년/월/일) 출석 조회
--procAttByYMD('YEAR',2024);
--procAttByYMD('MONTH',202402);
--procAttByYMD('DAY',20240205);
CALL procAttByYMD('DAY',20240205);

create or replace procedure procAttByYMD(
    pstandard varchar2,
    pnumber number  
)
is
    vfirst number;
    vlast number;
    vstart date;
    vend date;
    vrow vwAllAttend%rowtype;
    cursor vcursor is select * from vwAllAttend;

begin
    vfirst:= pnumber||'0101';
    vlast := pnumber||'1231';

        dbms_output.put_line('==============================================='||pnumber||pstandard||'수강생 출결'||'===============================================');

    if pstandard like '%YEAR%' then
        vstart := to_date(vfirst,'yyyymmdd');
        vend:= to_date(vlast,'yyyymmdd');
    elsif pstandard like '%MONTH%'then
        vstart := to_date(pnumber,'yyyymm');
        vend:= last_day(to_date(pnumber,'yyyymm'));
    elsif pstandard like '%DAY%' then
        vstart := to_date(pnumber,'yyyymmdd');
        vend:= to_date(pnumber,'yyyymmdd');
    else
        null;
    end if;
    
    open vcursor;
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        if vrow.regdate between vstart and vend and vrow.ocname is not null then   
                    dbms_output.put_line('  |일자:  '||vrow.regdate||'  |  '||vrow.name||'  |IN:  '||nvl(to_char(vrow.checkin,'hh24:mi:ss'),'XX:XX:XX')||'  |OUT:  '||nvl(to_char(vrow.checkout,'hh24:mi:ss'),'xx:xx:xx')||'  |  '||vrow.status||'  |  '||vrow.ocname);

        else
            null;
        end if;
    end loop;
    close vcursor;
end;
/
--학생별 총점계산함수(시험+출결)
create or replace function fnTotalGrade(
    pstupk number,
    pocpk number
)return number
is
begin
    return fnTotalScore(pstupk,pocpk)*0.8+fnTotalAttScore(pstupk,pocpk)*0.2;
end;
/

declare
    vresult number;
begin
    vresult := fnTotalGrade(91,4);
    dbms_output.put_line(vresult);
end;
/
--학생별 시험계산 함수
create or replace function fnTotalScore(
    pstupk number,
    pocpk number
)return number
is
    vrow vwAllExamResult%rowtype;
    cursor vcursor is select * from vwAllExamResult;
    vscore number;
    vwt number;
begin
    vscore := 0;
    vwt := 0;
    open vcursor;

    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        if vrow.stupk = pstupk and vrow.ocpk = pocpk then
            vscore:= vscore + vrow.wt*vrow.score;
            vwt:= vwt + vrow.wt;
        else
        null;
    end if;
    end loop;
    close vcursor;
    return round(vscore/vwt,2);
end;
/

declare
    vresult number;
begin
    vresult := fnTotalScore(8,1);
    dbms_output.put_line(vresult);
end;
/

--학생별 출석률
create or replace function fnTotalAttScore(
    pstupk number,
    pocpk number
)return number
is
    vrow vwAllAttend%rowtype;
    cursor vcursor is select * from vwAllAttend;
    vattdate number;
    valldate number;
begin
    
    select crsduration into valldate from tblCourse where crspk = (select distinct crspk from vwAllAttend where ocpk = pocpk);
    
    vattdate:= 0;
    
    open vcursor;
    loop
        fetch vcursor into vrow;
        exit when vcursor%notfound;
        
        if vrow.stupk = pstupk and vrow.ocpk = pocpk and vrow.status='출석' then
           vattdate:= vattdate + 1;
        else
            null;
        end if;
    end loop;
    close vcursor;
    return round(vattdate/valldate*100,2);
end;
/


