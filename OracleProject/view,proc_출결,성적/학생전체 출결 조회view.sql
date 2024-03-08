--학생 전체 출결 조회 (휴일반영)
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
--select * from vwAllStuAtt;
