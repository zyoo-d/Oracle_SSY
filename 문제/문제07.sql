-- ### subquery ###################################
select
    e.first_name || ' ' || e.last_name as 직원명,
    d.department_name as 부서명,
    l.city as 도시명,
    c.country_name as 국가명,
    r.region_name as 대륙명,
    j.job_title as 직업명
from employees e
    inner join departments d
        on d.department_id = e.department_id
            inner join locations l
                on l.location_id = d.location_id
                    inner join countries c
                        on c.country_id = l.country_id
                            inner join regions r
                                on r.region_id = c.region_id
                                    inner join jobs j
                                        on j.job_id = e.job_id;

-- 1. employees. 'Munich' 도시에 위치한 부서에 소속된 직원들 명단?
select * from employees;
-- 2. tblMen. tblWomen. 서로 짝이 있는 사람 중 남자와 여자의 정보를 모두 가져오시오.
--    [남자]        [남자키]   [남자몸무게]     [여자]    [여자키]   [여자몸무게]
--    홍길동         180       70              장도연     177        65
--    아무개         175       null            이세영     163        null
--    ..
select * from tblMen;
select * from tblWomen;

select m.name,
    m.height,
    m.weight
from tblMen
    while (select name from tblWomen where name = m.couple);


-- 3. tblAddressBook. 가장 많은 사람들이 가지고 있는 직업은 주로 어느 지역 태생(hometown)인가?


-- 4. tblAddressBook. 이메일 도메인들 중 평균 아이디 길이가 가장 긴 이메일 사이트의 도메인은 무엇인가?


-- 5. tblAddressBook. 평균 나이가 가장 많은 출신(hometown)들이 가지고 있는 직업 중 가장 많은 직업은?


-- 6. tblAddressBook. 남자 평균 나이보다 나이가 많은 서울 태생 + 직업을 가지고 있는 사람들을 가져오시오.


-- 7. tblAddressBook. gmail.com을 사용하는 사람들의 성별 > 세대별(10,20,30,40대) 인원수를 가져오시오.


-- 8. tblAddressBook. 가장 나이가 많으면서 가장 몸무게가 많이 나가는 사람과 같은 직업을 가지는 사람들을 가져오시오.


-- 9. tblAddressBook.  동명이인이 여러명 있습니다. 이 중 가장 인원수가 많은 동명이인의 명단을 가져오시오.(모든 이도윤)


-- 10. tblAddressBook. 가장 사람이 많은 직업의(332명) 세대별 비율을 구하시오.
--    [10대]       [20대]       [30대]       [40대]
--    8.7%        30.7%        28.3%        32.2%

