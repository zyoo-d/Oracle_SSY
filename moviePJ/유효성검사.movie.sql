
--2 
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





-- 9. 네티즌 리뷰가 가장 많이 달린 순으로 가져오시오.
desc tblUserReview;
desc tblCineUser;

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
                
