-- ex27_hierarchical.sql

/*
    계층형 쿼리, Hierarchical Query
    - 오라클 전용 쿼리
    - 레코드의 관계가 서로 간의 상하 수직 구조인 경우에 사용한다.
    - (보편적으로) 자기 참조를 하는 테이블에서 사용(셀프 조인)
    - 자바 (=트리구조)
    
    ex.tblSelf
    홍사장
        -김부장
            -박과장
                -최대리  
                    -정사원
        -이부장
        .
        .
        .
        


*/
--자기참조
create table tblComputer (
    seq number primary key,                         --
    name varchar2(50) not null,                     --
    qyt number not null,                            --
    pseq number null references tblComputer(seq)    --부모부품(FK)
);


select * from tblComputer;

-- 직원 가져오기 + 상사명
-- 부품 가져오기 + 부모 부품의 정보

--self join
select
    c2.name as 부품명,
    c1.name as 부모부품명
from tblComputer c1             --부모부품(부모테이블)
    inner join tblComputer c2   --부품(자식테이블)
        on c1.seq = c2.pseq;



-- 계층형 쿼리
-- 1. start with 절 + connect by 절
-- 2. 계층형 쿼리에서만 사용한 가능한 의사 컬럼들
--      a. prior: 자신과 연관되 보모 레코드를 참조하는 객체
--      b. level: 세대수 or depth
--prior: 부모 레코드 참조
--connect_by_root: 최상위 레코드 참조
--connect_by_isleaf: 말단 노드 (1 - 자식노드 없음 / 0 - 자식노드 있음)
--sys_connect_by_path(컬럼명,'(특수)문자')


-- ''주의) order by 사용 X -> 'order siblings by'로 사용!

select
    seq as 번호,
    lpad(' ',(level-1)*5)|| name as 부품명, --''자기자신의 name
    prior name as 부모부품명,               --''자기자신과 연결된 부모의 name
    level,
    connect_by_root name,
    connect_by_isleaf,
    sys_connect_by_path(name,'▶') --''전체 경로 리턴: ex.▶컴퓨터▶모니터▶모니터클리너
from tblComputer
--    start with seq = 1         -- 루트 레코드 지정(최상위 레코드 참조)
--    start with seq = 2         -- '' 1 이외에도 다른 tbl의 pk지정 가능
--    start with seq = (select seq from tblComputer where name = '컴퓨터') --(최상위 레코드 참조)
    start with pseq is null      -- (최상위 레코드 참조)
        connect by prior seq = pseq -- 현재 레코드와 부모 레코드를 연결하는 조건 > ''self join과 비교해보기
            order siblings by name asc;
        
        
        
        
 select
    lpad(' ',(level-1)*2) || name as 직원명
from tblSelf
    start with super is null
        connect by super = prior seq;
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        


