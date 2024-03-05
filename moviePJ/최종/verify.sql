[씨네 21 + 일주일 + 영화 50개] 

-- 1. 누적 관객수 순서대로 가져오시오.
select t.kr as 영화명, m.cumulativeaudience as 누적관객수  
    from tblMovie m 
        inner join tblMovieTitle mt 
            on m.mseq = mt.mseq 
                inner join tblTitle t
                    on t.seq = mt.tseq
                       order by cumulativeaudience desc;

-- 2. '유해진' 배우가 출연한 영화를 가져오시오.
select 
    t.kr as 제목,
    a.name as 출연배우,
    d.name as 감독,
    m.FIRSTRELEASE as 최초개봉,
    m.KOREARELEASE as 한국개봉,
    m.RUNNINGTIME as 상영시간,
    m.PERIODAUDIENCE as 조회기간관람객,
    m.CUMULATIVEAUDIENCE as 누적관람객
from tblMovie m
    inner join tblMovieActor mv
        on m.mseq = mv.mseq
            inner join tblActor a
                on a.seq = mv.aseq
                    inner join tblMovieDirector md
                        on m.mseq = md.mseq
                            inner join tblDirector d
                                on d.seq = md.dseq
                                 inner join tblMovieTitle mt
                                     on m.mseq = mt.mseq
                                         inner join tblTitle t
                                              on t.seq = mt.tseq
                                                 where a.name = '유해진';
-- 3. '김용균' 감독이 제작한 영화를 가져오시오.
select 
    distinct(t.kr)as 제목,
    d.name as 감독,
    m.FIRSTRELEASE as 최초개봉,
    m.KOREARELEASE as 한국개봉,
    m.RUNNINGTIME as 상영시간,
    m.PERIODAUDIENCE as 조회기간관람객,
    m.CUMULATIVEAUDIENCE as 누적관람객
from tblMovie m
    inner join tblMovieActor mv
        on m.mseq = mv.mseq
            inner join tblActor a
                on a.seq = mv.aseq
                    inner join tblMovieDirector md
                        on m.mseq = md.mseq
                            inner join tblDirector d
                                on d.seq = md.dseq
                                 inner join tblMovieTitle mt
                                     on m.mseq = mt.mseq
                                         inner join tblTitle t
                                              on t.seq = mt.tseq
                                                 where d.name = '김용균';
-- 4. 씨네 21 평점 6.0 이상 + 네티즌 평점 6.0 이상  받은 영화를 가져오시오.
select 
    t.kr 
from tblTitle t
    inner join tblMovie m
        on t.seq = m.mseq
            where 
                m.mseq in (select  mseq from tblExpertReview group by mseq having avg(grade) >= 6.0) 
                    or mseq in (select mseq from tblUserReview group by mseq having avg(grade) >= 6.0);
-- 5. 등록된 50개의 영화 중 가장 많은 영화에 참여한 배우와 영화를 가져오시오.
select 
  a.name as 배우, t.kr as 영화
from 
    tblActor a
        left outer join tblMovieActor r
            on r.aseq = a.seq
                left outer join tblmovie m
                    on m.mseq = r.mseq
                        left outer join tblMovieTitle mt 
                            on m.mseq = mt.mseq 
                                left outer join tblTitle t
                                    on t.seq = mt.tseq
                                        where r.aseq = (select aseq from tblMovieActor group by aseq having count(*) = (select max(count(*)) from tblMovieActor group by aseq)); 
-- 6. 장르 중 '드라마'와 '액션'을 동시에 속한 영화를 가져오시오.
select t.kr from tblTitle t
    inner join (select * from tblMovie m where mseq in 
        ((select * from    
            (select mseq from tblMovieGenre
                where gseq in (select seq from tblGenre21 where genre = '드라마'))
                    where mseq in (select mseq from tblMovieGenre
                        where gseq in (select seq from tblGenre21 where genre = '액션'))))) m
    on t.seq = m.mseq;
    
-- 7. 상영시간이 120분 미만인 영화를 가져오시오.
select t.kr from tblTitle t
    inner join (select * from tblMovie where runningTime < 120) m
        on t.seq = m.mseq;
-- 8. 15세 이상 관람가 영화를 가져오시오.
select t.kr from tblTitle t
    inner join (select * from tblMovie where agelimit = (select seq from tblAgeLimit al where al.name like '15%')) m
        on t.seq = m.mseq;
-- 9. 네티즌 리뷰가 가장 많이 달린 순으로 가져오시오.
select
t.kr
from tblMovie m
    join tblUserReview ur
        on m.mseq = ur.mseq
            join tblCineUser cu
                on cu.seq = ur.useq
                 inner join tblMovieTitle mt
                                     on m.mseq = mt.mseq
                                         inner join tblTitle t
                                              on t.seq = mt.tseq
                group by m.mseq, t.kr
                order by count(*) desc;
-- 10. 네티블 리뷰를 가장 많이 작성한 네티즌의 아이디를 가져오시오.
select 
    id
from 
    tblCineUser 
        where seq is not null and seq =(select useq from tblUserReview  
            group by useq
                having count(*) = (select max(count(*)) 
                        from tblUserReview 
                        where useq is not null
                                group by useq));

-- 11. 전문가 별점에 가장 많이 참여한 전문가의 이름을 가져오시오.
select 
    name
from 
    tblExpert 
        where seq = (select eseq from tblExpertReview
            group by eseq
                having count(*) = (select max(count(*)) 
                        from tblExpertReview
                        where eseq is not null
                                group by eseq));