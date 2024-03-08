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
