--create or replace view vwAT
--as
--select * from user_tables;
--select * from vwAT;
--drop view vwAllStudent;

----3. 교육생 정보 출력시 교육생 이름, 생년월일, 전화번호, 등록일, 수강(신청)횟수,상담일지건수를 출력한다. 
----횟수 반환 함수
--
--create or replace function fnCntCP(
--    pstupk number
--) return number
--is
--declare
--    vcnt number;
--begin
--    return
--        select count(*) into vcnt from tblCourseParticipants where = pstupk;
--end fnCnt;
--/


--전체학생 view
create or replace view vwAllStudent
as
select
    s.stupk as stupk,
    u.name as name,
    u.bdate as bdate,
    u.tel as tel,
    u.regdate as regdate,
    cp.ocpk as ocpk
from tblUser u right outer join tblStudent s
                            on u.userpk = s.stupk 
                right outer join tblCourseParticipants cp
                            on s.stupk = cp.stupk;
select * from vwAllStudent;

--전체선생 뷰
create or replace view vwAllTeacher
as
select
    t.tpk as tpk,
    u.name as name,
    u.bdate as bdate,
    u.tel as tel,
    u.regdate as regdate,
    oc.cospk as cospk
from tblUser u right outer join tblTeacher t
                            on u.userpk = t.tpk
                right outer join tblopencourse oc
                            on t.tpk = oc.tpk;
select * from vwAllStudent;

--전체 출석 view
create or replace view vwAllAtt
as
select
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
select  alls.name,
        alls.ocpk,
        alla.attenddate,
        alla.checkin,
        alla.checkout,
        alla.attstatus
        from vwAllStudent alls
    right outer join vwAllAtt alla on alla.stupk = alls.stupk
    order by alla.attenddate desc;

--특정과정의 교육생의 출결조회
create or replace view vwStuAttByCrs
as
select  alls.name,
        alls.ocpk,
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

--select * from vwStuAttByDate;
--select * from vwAllStuAtt;
--select * from vwStuAttByCrs;

--함수 (년/월/일) 선택시 비교 날짜를 반환하는 함수