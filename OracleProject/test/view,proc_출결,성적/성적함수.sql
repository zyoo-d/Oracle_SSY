--
select * from tblGrade;
desc tblGrade;
desc tblExamdone;
select * from vwAllExamResult;
select * from vwAllExamResult where ocpk = 4 and stupk = 91;

select * from vwAllAttend where ocpk = 4 and stupk = 91;
select * from vwAllAttend;
select * from tblcourseparticipants;
select * from tblCourse;
select * from tblRecruit;
--학생별 총점계산함수
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

select * from vwAllAttend;


declare
    vresult number;
begin
    vresult := fnTotalAttScore(91,4);
    dbms_output.put_line(vresult);
end;
/