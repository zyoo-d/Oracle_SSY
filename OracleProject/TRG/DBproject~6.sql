set serveroutput on;
SELECT TO_TIMESTAMP('09:10:59', 'HH24:MI:SS') FROM DUAL; 
SELECT TO_CHAR(09:10:59, 'HH24:MI:SS') FROM DUAL;

create or replace function fnAttSts(
    pcheckin timestamp,
    pcheckout timestamp
)return number
is
    vDuration number;
begin
    select cast(extract( hour from att )-1 hours),number) t into vduration from (select pcheckout - pcheckin as att from dual);
    
    return
    case 
        when TO_CHAR(pcheckin,'HH24:MI:SS') <= '09:10:59' and pcheckout is null THEN 1
        when TO_CHAR(pcheckin,'HH24:MI:SS') between '09:11:00' AND '13:00:00'pcheckout is null THEN 2
        when pcheckin is not null and pcheckout is not null and vDuration >= 4 then 3
        when pcheckin is not null and pcheckout is not null and vDuration <4 then 4
        else 4
    end status;
exception 
    when others then
        dbms_output.put_line('예외처리');
end fnAttSts;
/


declare
    vresult number;
begin
    vresult := fnAttSts(TO_TIMESTAMP('09:10:59', 'HH24:MI:SS'),'');
    dbms_output.put_line(vresult);
end;
/

