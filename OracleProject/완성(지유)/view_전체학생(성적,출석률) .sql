--view_전체학생(성적,출석률) 
CREATE OR REPLACE VIEW VWGRADE
AS
SELECT s.STUPK as 학생번호, u.name as 학생명, nvl(fnTotalGrade(s.STUPK,p.OCPK),0) as 총성적, nvl(round(fnTotalAttScore(s.STUPK,p.OCPK),0),0) as 출석률,
p.ocpk as 참여과정번호 FROM TBLSTUDENT s RIGHT OUTER JOIN tblcourseparticipants p on s.stupk = p.stupk left outer join tblUser u on u.userpk = s.stupk ;

select * from VWGRADE;


















--하는중
--특정 과정 정보 조회시 교육생별 과목성적 및 총점을 출력할 수 있다. 
select * from tblOpenCourse;
create or replace procedure procSearchScoreSTU(
 pocpk number;
)
is
  cursor vcursor is select * from tblExamDone where ocpk = pocpk;
  vwrow VWGRADE%rowtype;
  
  
begin
    select * into vwrow from VWGRADE where 참여과정번호 = pocpk;
    for examrow in vcursor loop    
        if vrow
        dbms_output.put_line(vwrow.학생명 || ',' || vwrow.총성적);   
    end loop;



end;
/

declare
    
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