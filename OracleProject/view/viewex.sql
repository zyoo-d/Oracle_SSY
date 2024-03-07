--개설과정별
drop view vwAllExam;


create or replace view vwAllExamResult
as
select 
distinct
oc.ocpk as ocpk,
oc.ocname as ocname,
oc.regdate || ' ~ ' || (oc.regdate + c.crsduration) as crsduration,
cr.crname as crname,
oc.tpk as tpk,
allt.name as tname,
s.subname as subname,
ei.exinfopk as exinfopk,
ei.examdate as examdate,
ei.examtype as examtype,
ei.wt as wt,
alls.stupk as stupk,
alls.name as name,
ed.exanswer as exanswer,
g.score as score
from tblOpenCourse oc 
left outer join tblcourse c on c.crspk = oc.crspk
left outer join vwAllTeacher allt on oc.crspk = allt.crspk
left outer join tblExaminfo ei on ei.ocpk = oc.ocpk 
left outer join tblExam e on ei.exinfopk = e.exinfopk
left outer join tblSubject s on s.subpk = ei.subpk
left outer join tblExamdone ed on ed.expk = e.expk
left outer join tblGrade g on g.edpk = ed.edpk 
left outer join tblClassRoom cr on cr.crpk =  oc.crpk
left outer join vwAllStudent alls on alls.stupk = ed.stupk;

select * from vwAllExamResult;

--select * from tblopencourse;
--select * from tblCourse;
--desc tblclassroom;
--select * from vwAllExamResult where subname is null;
--select * from tblExaminfo;
--select * from tblsubject;
----select * from tblongoingsubject;
--select * from tblExaminfo;
--select * from tblExam;

select count(*),crspk from tblOnGoingSubject group by crspk;
select crspk, count(crspk) from tblOnGoingSubject group by crspk;

create or replace view vwExamBySub
as
select
distinct
ocname as 개설과정명,
crsduration as 개설기간,
crname ||'강의실' as 강의실명,
subname as 과목명,
tname as 교사명,
name as 교육생명,
examtype as 시험유형
from vwAllExamResult;
select * from vwExamBySub where 과목명 = '자바 (Java)';

create or replace view vwExamByStu
as
select
distinct
stupk as 학생번호,
name as 교육생명,
ocname as 수강과정명,
crsduration as 과정기간,
subname as 과목명,
examdate as 시험일,
tname as 교사명,
examtype as 시험유형
from vwAllExamResult;
-- 프로시저로 만들기
--select * from vwExamByStu where 학생번호 = '8';
--select * from tblStudent;