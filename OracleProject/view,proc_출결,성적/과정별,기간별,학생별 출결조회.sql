--특정 과정 학생 출결 조회 procedure
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
--특정 기간 조회


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


select * from vwAllAttend;
--학생별 출결 조회
create or replace procedure procAttByDate(
    pstupk number
)
is
    vname vwAllAttend.name%type;
    cursor vcursor is select * from vwAllAttend where stupk = pstupk and ocname is not null;
begin
    select distinct name into vname from vwAllAttend where stupk = pstupk;
        dbms_output.put_line('================================================'||vname||'수강생 출결현황'||'================================================');
    for vrow in vcursor loop
            dbms_output.put_line('  |일자:  '||vrow.regdate||'  |  '||vrow.name||'  |IN:  '||nvl(to_char(vrow.checkin,'hh24:mi:ss'),'XX:XX:XX')||'  |OUT:  '||nvl(to_char(vrow.checkout,'hh24:mi:ss'),'xx:xx:xx')||'  |  '||vrow.status||'  |  '||vrow.ocname);
    end loop;
end;
/
call procAttByDate(202);
