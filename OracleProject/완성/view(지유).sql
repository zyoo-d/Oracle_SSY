--view(지유)
--전체학생 view
create or replace view vwAllStudent
as
select
    s.stupk as stupk,
    u.name as name,
    u.ssn as ssn,
    u.tel as tel,
    u.regdate as regdate,
    cp.ocpk as ocpk,
    oc.ocname as ocname,
    oc.crspk as crspk
from tblUser u right outer join tblStudent s
                            on u.userpk = s.stupk 
                right outer join tblCourseParticipants cp
                            on s.stupk = cp.stupk
                    left outer join tblOpenCourse oc
                            on cp.ocpk = oc.ocpk;
select * from vwAllStudent;

--전체선생 뷰
create or replace view vwAllTeacher
as
select
    t.tpk as tpk,
    u.name as name,
    u.ssn as ssn,
    u.tel as tel,
    u.regdate as regdate,
    oc.crspk as crspk
from tblUser u right outer join tblTeacher t
                            on u.userpk = t.tpk
                right outer join tblopencourse oc
                            on t.tpk = oc.tpk;
select * from vwAllTeacher;

--전체 출석 view
create or replace view vwAllAtt
as
select
    a.attpk as attpk,
    a.stupk as stupk,
    a.attenddate as attenddate,
    a.checkin as checkin,
    a.checkout as checkout,
    ats.attstatus as attstatus
from tblAttendance a
    left outer join tblAttendStatus ats
        on a.attstspk = ats.attstspk
    order by a.attenddate desc;
select * from vwAllAtt;


-- 모든 교육생 출결조회
create or replace view vwAllStuAtt
as
select  
        alla.attpk,
        alls.stupk,
        alls.name,
        alls.ocpk,
        alls.ocname,
        alla.attenddate,
        alla.checkin,
        alla.checkout,
        alla.attstatus,
        alls.crspk
        from vwAllStudent alls
    right outer join vwAllAtt alla on alla.stupk = alls.stupk
    order by alla.attenddate desc;

--특정과정의 교육생의 출결조회
create or replace view vwStuAttByCrs
as
select  
alla.attpk,
alls.name,
        alls.ocpk,
         alls.ocname,
        alla.attenddate,
        alla.checkin,
        alla.checkout,
        alla.attstatus
from vwAllStudent alls
    right outer join vwAllAtt alla on alla.stupk = alls.stupk
        where alls.ocpk = 6
        order by alla.attenddate desc;
        
--기간별 전체 출석현황 조회
create or replace view vwStuAttByDate
as
select
 *
from vwAllStuAtt 
    where attenddate between to_date(20240201,'yyyymmdd') and to_date(20240301,'yyyymmdd');
    
    --휴일반영전체출결VIEW
create or replace view vwAllAttend
as
select
    ds.regdate,
    s.stupk,
    s.name,
    s.ocpk,
    s.ocname,
    s.checkin,
    s.checkout,
    s.crspk,
    case
        when ds.status <> '평일' then ds.status
        when s.attstatus is null and s.attpk is null then '결석'
        else s.attstatus
    end as status
from vwAllDateStatus ds
        left outer join vwAllStuAtt s
            on to_char(ds.regdate,'yyyy-mm-dd') = to_char(s.attenddate,'yyyy-mm-dd')
            order by ds.regdate desc;

-- 모든 날짜
create or replace view vwAllDate
as
select 
    to_date('2022-06-27','yyyy-mm-dd') + level - 1 as regdate
from dual
    connect by level <= (sysdate-to_date('2022-06-27','yyyy-mm-dd')+1);
    
--휴일상태반영 날짜별 상태
create or replace view vwAllDateStatus
as
select 
    d.regdate,
    case
        when to_char(d.regdate,'d') = '1' then '일요일'
        when to_char(d.regdate,'d') = '7' then '토요일'
        when  to_char(d.regdate,'yyyy-mm-dd') = to_char(h.holidate,'yyyy-mm-dd') then h.holiday
        else '평일'
    end as status
from vwAllDate d
    left outer join tblHoliday h
            on to_char(d.regdate,'yyyy-mm-dd') = to_char(h.holidate,'yyyy-mm-dd');

--모든 시험 관련 정보
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

--과목별시험성적
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
--학생별시험성적 
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

