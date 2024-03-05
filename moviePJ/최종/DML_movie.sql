--DML_movie
set serveroutput on;

--배우정보 중복확인 트리거
create or replace trigger trgDuplActor
    before           
    insert            
    on tblActor         
    for each row
declare
    pcntActor number;
begin  
    select count(*) into pcntActor from tblActor where name = :new.name;
    
    if  pcntActor > 0  then
        raise_application_error(-20001, '이미 등록된 배우정보 입니다.');
    end if; 
end trgDuplActor;
/ 

--감독정보 중복확인 트리거
create or replace trigger trgDuplDirector   
    before           
    insert            
    on tblDirector         
    for each row
declare
    pcntDirector number;
begin  
    select count(*) into pcntDirector from tblDirector where name = :new.name;
    
    if  pcntDirector > 0  then
        raise_application_error(-20001, '이미 등록된 감독정보 입니다.');
    end if; 
end trgDuplDirector;
/ 
alter trigger trgDuplActor disable;
--alter trigger trgDuplActor enable;
alter trigger trgDuplDirector disable;


--tblAllCountry(seq number primary key,country varchar2(30) not null);
insert into tblAllCountry(seq, country) values ((select nvl(max(seq),0)+1 from tblAllCountry), '미국');
insert into tblAllCountry(seq, country) values ((select nvl(max(seq),0)+1 from tblAllCountry), '한국');
insert into tblAllCountry(seq, country) values ((select nvl(max(seq),0)+1 from tblAllCountry), '일본');
insert into tblAllCountry(seq, country) values ((select nvl(max(seq),0)+1 from tblAllCountry), '영국');
insert into tblAllCountry(seq, country) values ((select nvl(max(seq),0)+1 from tblAllCountry), '이탈리아');
insert into tblAllCountry(seq, country) values ((select nvl(max(seq),0)+1 from tblAllCountry), '스페인');
insert into tblAllCountry(seq, country) values ((select nvl(max(seq),0)+1 from tblAllCountry), '프랑스');
insert into tblAllCountry(seq, country) values ((select nvl(max(seq),0)+1 from tblAllCountry), '중국');
insert into tblAllCountry(seq, country) values ((select nvl(max(seq),0)+1 from tblAllCountry), '홍콩');
insert into tblAllCountry(seq, country) values ((select nvl(max(seq),0)+1 from tblAllCountry), '태국');
insert into tblAllCountry(seq, country) values ((select nvl(max(seq),0)+1 from tblAllCountry), '캐나다');
insert into tblAllCountry(seq, country) values ((select nvl(max(seq),0)+1 from tblAllCountry), '벨기에');


--tblMovieCountry(seq number primary key,cseq number not null references tblAllCountry(seq),mseq number not null references tblMovie(mseq));
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 1, 1);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 2, 2);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 3, 3);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 2, 4);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 2, 5);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 2, 6);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 1, 7);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 1, 8);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 2, 9);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 4, 10);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 5, 11);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 6, 11);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 7, 12);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 2, 13);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 1, 14);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 8, 15);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 2, 16);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 3, 17);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 7, 18);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 9, 19);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 2, 20);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 9, 21);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 7, 21);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 10, 21);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 3, 22);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 3, 23);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 2, 24);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 3, 25);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 9, 26);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry),11, 27);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry),4, 27);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry),1, 27);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 2, 28);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 2, 29);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 2, 30);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 7, 31);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 1, 31);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 2, 32);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 3, 33);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 3, 34);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 4, 35);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 1, 35);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 7, 36);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 4, 36);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 12, 36);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 2, 37);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 1, 38);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 3, 39);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 3, 40);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 2, 41);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 1, 42);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 1, 43);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 2, 44);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 1, 45);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 2, 46);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 3, 47);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 2, 48);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 3, 49);
insert into tblMovieCountry(seq, cseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieCountry), 3, 50);


--tblActor(seq number primary key,name varchar2(50) not null,masterpiece varchar2(100) default '미등록');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '티모테 샬라메', '듄: 파트2');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '칼라 레인', default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '올리비아 콜맨', '장화신은 고양이: 끝내주는 모험');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '톰 데이비스', default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '휴 그랜트', '던전 앤 드래곤: 도적들의 명예');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '샐리 호킨스', '스펜서');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '데이빗 필즈', default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '이호', default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '하나에 나츠키', '귀멸의 칼날: 상현집결, 그리고 도공 마을로');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '키토 아카리', '귀멸의 칼날: 상현집결, 그리고 도공 마을로');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '하나자와 카나', '스즈메의 문단속');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '카와니시 켄고',default );

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '라미란', '정직한 후보2');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '공명', '한산 리덕스');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '염혜란', '웅남이');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '박병은', '이상한 나라의 수학자');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '장윤주', '세자매');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '이무생', '노량: 죽음의 바다');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '안은진', '올빼미');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '정지호', default);

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '나문희', '룸 쉐어링');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '김영옥', '말임씨를 부탁해');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '박근형', '아들의 이름으로');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '류승수', '딥');

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '윤여정', '미나리');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '유해진', '야당');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '김윤진', '자백');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '정성화', '영웅');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '김서형', '비닐하우스');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '다니엘 헤니', '공조2: 인터내셔날');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '이현우', '드림');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '탕준상', '오마주');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor), '윤채나', default);


insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'장예나','핑크퐁 시네마 콘서트 3: 진저브레드맨을 잡아라');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'전태열','극장판 우당탕탕 은하안전단: 진정한 용기!');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'희승',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'제이',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'제이크',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'성훈',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'성우',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'정원',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'니키',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'쓰복만',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'씨엘',default);

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'제임스 카비젤','인피델');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'빌 캠프','조커');

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'조진웅','경관의 피');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'김희애','보통의 가족');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'이수경','기적');

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'헨리 카빌','잭 스나이더의 저스티스 리그');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'브라이스 댈러스 하워드','쥬라기 월드: 도미니언');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'샘 록웰','배드 가이즈');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'브라이언 크랜스톤','애스터로이드 시티');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'캐서린 오하라','A.C.O.D');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'두아 리파','바비');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'아리아나 데보스','위시');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'존 시나','분노의 질주: 라이드 오어 다이');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'사무엘 L. 잭슨','가필드: 우유 원정대');

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'조니 뎁','잔 뒤 바리');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'김대중',default);

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'산드라 휠러','엘리자벳과 나');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'스완 아를로','신의 은총으로');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'밀로 마차도 그라너','');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'앙투안 라이나르츠','퍼펙트 내니');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'사뮤엘 테이','파티 걸');


insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'김새해','핑크퐁 시네마 콘서트 3: 진저브레드맨을 잡아라');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'조경이','핑크퐁 시네마 콘서트 3: 진저브레드맨을 잡아라');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'황창영','거신: 바람의 아이');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'이소은','핑크퐁 시네마 콘서트 3: 진저브레드맨을 잡아라');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'박준형','극장판 파워레인저 캡틴포스: 지구를 위한 싸움');

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'폴 지아마티','건파우더 밀크셰이크');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'더바인 조이 랜돌프','장화신은 고양이: 끝내주는 모험');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'도미닉 세사',default);

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'서약함',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'이문한',default);

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'제니퍼 러브 휴이트','카페');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'폴 니콜스','브리짓 존스의 일기2 : 열정과 애정');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'톰 윌킨슨','데드 위크: 인생마감 7일전');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'루시 대븐포트',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'다이아나 하드캐슬','더 보이');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'로이 샘슨',default);

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'안도 사쿠라','한 남자');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'나가야마 에이타','마이 프렌드 에이');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'쿠로카와 소야',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'히이라기 히나타',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'타카하타 미츠키','캐릭터');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'카쿠타 아키히로',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'나카무라 시도','캐릭터');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'다나카 유코','나는 나대로 혼자서 간다');

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'석승훈','꼬마돼지 베이브의 바다 대모험');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'정해은','이빨요정 비올레타: 요정나라로 돌아갈래!');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'장병관','특수요원 빼꼼');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'박시윤','몬스터 신부: 101번째 프로포즈');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'김용','이빨요정 비올레타: 요정나라로 돌아갈래!');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'김다올','극장판 피노키오 위대한 모험');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'서정익','치킨래빗: 잃어버린 보물을 찾아서');

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'임청하','동사서독 리덕스');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'양조위','무명');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'왕페이','대성소사');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'금성무','태평륜 완결편');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'주가령','마영정');

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'황정민','교섭');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'정우성','헌트');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'이성민','대외비');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'박해준','야당');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'김성균','타겟');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'정만식','헌트');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'정해인','언프레임드');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'이준혁','범죄도시3');

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'장만옥','동사서독 리덕스');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'소병림','2046 리마스터링');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'반적화','');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'뇌진','');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'손가군','하드코어 코미디');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'장요양','조조 - 황제의 반란');

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'미치에다 슌스케','461개의 도시락');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'후쿠모토 리코','극장판 전생했더니 슬라임이었던 건에 대하여: 홍련의 인연편');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'후루카와 코토네','메타모르포제의 툇마루');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'마츠모토 호노카','은밀한 공범');

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'바이쇼 치에코','남자는 괴로워 - 어서와 토라');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'이소무라 하야토','도쿄 리벤저스');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'카와이 유미','백화');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'스테파니 아리안',default);

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'카리나',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'지젤',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'윈터',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'닝닝',default);

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'장국영','동사서독 리덕스');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'장첸','듄');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'그레고리 데이튼','탱고 레슨');

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'라이언 고슬링','스턴트맨');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'해리슨 포드','인디아나 존스: 운명의 다이얼');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'아나 데 아르마스','발레리나');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'실비아 혹스','거미줄에 걸린 소녀');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'자레드 레토','헌티드 맨션');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'맥켄지 데이비스','해피스트 시즌');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'로빈 라이트','랜드');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'데이브 바티스타','똑똑똑');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'레니 제임스','거리의 보안관');

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'크리스 파인','전 앤 드래곤: 도적들의 명예');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'알란 터딕','알라딘');

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'박나은',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'박효주',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'김희원','탈출: PROJECT SILENCE');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'김지훈','은하수');

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'김대중','존경하고 사랑하는 국민 여러분');

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'쿠마일 난지아니','이터널스');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'엘리자베스 뱅크스','콜 제인');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'아콰피나','이프: 상상의 친구');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'키건 마이클 키','슈퍼 마리오 브라더스');

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'류준열','올빼미');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'김태리','외계+인 1부');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'김우빈','외계+인 1부');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'이하늬','유령');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'염정아','인생은 아름다워');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'조우진','하얼빈');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'김의성','외계+인 1부');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'진선규','아마존 활명수');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'신정근','외계+인 1부');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'윤경호','정직한 후보2');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'이시훈',default);

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'쿠로키 하루','키리에의 노래');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'이케마츠 소스케','저스트 리멤버링');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'칸이치로','달의 영휴');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'마키 쿠로도','클럽 진주군');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'사토 코이치','사일런트 도쿄');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'이시바시 렌지','천공의 벌');

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'킬리언 머피','콰이어트 플레이스 2');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'에밀리 블런트','스턴트맨');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'맷 데이먼','에어');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'로버트 다우니 주니어','어벤져스: 엔드게임');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'플로렌스 퓨','듄: 파트2');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'조쉬 하트넷','스파이 코드명 포춘');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'케이시 애플렉','더 월드 투 컴');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'라미 말렉','암스테르담');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'케네스 브래너','베니스 유령 살인사건');

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'데이브 터너',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'에블라 마리',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'로렌조 맥거번 자이니',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'데비 허니우드','미안해요, 리키');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'트레버 폭스',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'콜 테이트',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'크리스 고츠',default);

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'동방우','장사리 : 잊혀진 영웅들');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'지대한','파이프라인');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'이혁',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'공정환','사회인');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'김병옥','B컷');

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'나탈리 포트만','토르: 러브 앤 썬더');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'줄리안 무어','스피릿');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'찰스 멜튼',default);

insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'오노 켄쇼','기동전사 건담: 섬광의 하사웨이');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'하타노 와타루','지저귀는 새는 날지 않는다');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'호시 소이치로','신 테니스의 왕자 효테이 vs 릿카이 : 게임 오브 퓨처 전편');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'히로세 유야',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'마스다 토시키',default);
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'시라이 유스케','극장판 사사키와 미야노 - 졸업편');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'요나가 츠바사','흐린하늘에웃다 외전 결별, 야마이누의 맹세');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'켄','경계의 저편 : I''LL BE HERE -과거편-');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'아베 아츠시','예스, 노 또는 반반');
insert into tblActor(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblActor),'에구치 타쿠야','극장판 스파이 패밀리 코드 : 화이트');

insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'나카무라 슈고',default);
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'카사마 준',default);
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'카미오 신이치로',default);
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'키무라 스바루','금의 나라 물의 나라');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'미야케 켄타','나의 히어로 아카데미아 더 무비: 두 명의 히어로');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'엄상현','쿵푸팬더4');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'장민혁','기기괴괴 성형수');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'신용우','퍼피 구조대: 더 마이티 무비');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'강수진','원피스: 로맨스 던');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'최낙윤','극장판 도라에몽: 진구와 하늘의 유토피아');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'소연',default);

insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'마이크 보겔','더 케이스 포 크라이스트');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'에리카 크리스텐슨','더 케이스 포 크라이스트');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'페이 더너웨이','더 케이스 포 크라이스트');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'로버트 포스터','왓 데이 해드');

insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'임윤찬','크레센도');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'안나 게뉴시네','크레센도');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'드미트리 초니','크레센도');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'마린 알솝','크레센도');

insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'김윤석','모가디슈');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'백윤식','명당');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'정재영','기묘한 가족');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'허준호','검은 수녀들');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'김성규','한산 리덕스');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'이규형','해피 뉴 이어');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'최덕문','리미트');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'안보현','2시의 데이트');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'박명훈','왕을 찾아서');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'박훈',default);
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'문정희',default);

insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'하야시바라 메구미','명탐정코난: 흑철의 어영');

insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'정이랑','귀신');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'박성진',default);
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'이유준','빈틈없는 사이');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'육미라',default);
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'박혜진','소풍같이');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'이상훈','오장군의 발톱');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'김건하','초미의 관심사');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'테리스 브라운',default);
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'김영빈',default);

insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'후치가미 마이','걸즈 앤 판처 최종장 제3화');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'카야노 아이','아리아: 더 베네디지오네');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'오자키 마미','걸즈 앤 판처 최종장 제3화');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'나카가미 이쿠미','걸즈 앤 판처 최종장 제3화');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'이구치 유카','걸즈 앤 판처 최종장 제3화');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'후쿠엔 미사토','미소녀 전사 세일러문 이터널');


insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'박성영','바다 탐험대 옥토넛 어보브 앤 비욘드: 버드, 옥토경보를 울려라!');
insert into tblActor(seq, name, masterpiece)values ((select nvl(max(seq),0)+1 from tblActor),'전숙경','퍼피 구조대 더 무비');



--tblMovieActor(seq number primary key,role varchar2(50) null,aseq number not null references tblActor(seq),mseq number not null references tblMovie(mseq));
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), '윌리 웡카 역', 1, 1);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), null, 2, 1);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), null, 3, 1);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), null, 4, 1);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), null, 5, 1);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), null, 6, 1);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), '본인 역', 7, 2);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), '본인 역', 8, 2);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), '탄지로 목소리 역', 9, 3);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), '네즈코 목소리 역', 10, 3);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), '미츠리 목소리 역', 11, 3);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), '무이치로 목소리 역', 12, 3);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), '덕희 역', 13, 4);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), '재민 역', 14, 4);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), '봉림 역', 15, 4);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), null, 16, 4);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), '숙자 역', 17, 4);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), null, 18, 4);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), null, 19, 4);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), null, 20, 4);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), '고은심 역', 21, 5);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), '진금순 역', 22, 5);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), '정태호 역', 23, 5);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), '송해웅 역', 24, 5);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), '여정 역', 25, 6);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), '민상 역', 26, 6);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), '정아 역', 27, 6);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), '선용 역', 28, 6);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), '진영 역', 29, 6);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), null, 30, 6);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), '현 역', 31, 6);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), '진우 역', 32, 6);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor), null, 33, 6);


insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,34,7);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,35,7);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,36,7);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,37,7);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,38,7);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,39,7);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,40,7);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,41,7);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,42,7);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,43,7);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,44,7);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,45,8);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,46,8);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,47,9);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,48,9);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,49,9);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,50,10);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,51,10);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,52,10);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,53,10);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,54,10);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,55,10);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,56,10);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,57,10);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,58,10);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,59,11);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,60,11);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'산드라 역',61,12);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'뱅상 역',62,12);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'다니엘 역',63,12);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'아보카 역',64,12);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'사무엘 역',65,12);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'담비 역',66,13);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'담식 역',67,13);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'맷돼이먼/쾌룡이 역',68,13);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'쾡이 역',69,13);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'무적 역',70,13);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'폴 허넘 역',71,14);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'매리 램 역',72,14);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'앵거스 털리 역',73,14);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'위쟈오양 역',74,15);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'주찬 역',75,15);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'사만다 역',76,16);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'이안 역',77,16);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'택시 기사 역',78,16);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'로티 역',79,16);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'클레어 역',80,16);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'던바 역',81,16);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'무기노 사오리 역',82,17);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'호리 미치토시 역',83,17);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'무기노 미나토 역',84,17);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'호시카와 요리 역',85,17);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'스즈무라 히로나 역',86,17);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'쇼다 후미아키 역',87,17);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'호시카와 키요타카 역',88,17);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'후시미 마키코 역',89,17);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'모리스 (한국어 목소리 역) 역',90,18);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'카밀리아 (한국어 목소리 역) 역',91,18);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'길버트 (한국어 목소리 역) 역',92,18);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'바트리샤 (한국어 목소리 역) 역',93,18);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'미겔 (한국어 목소리 역) 역',94,18);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'앨버트 (한국어 목소리 역) 역',95,18);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'페피토 (한국어 목소리 역) 역',96,18);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'금발의 여인 역',97,19);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'경찰 663 역',98,19);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'아비 역',99,19);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'하지무 역',100,19);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,101,19);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,102,20);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,103,20);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,104,20);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,105,20);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,106,20);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,107,20);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,108,20);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,109,20);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'수 리첸, 소려진, 蘇麗珍 역',110,21);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'초 모완, 주모운, 周慕雲 역',98,21);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'아핑 역',111,21);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'쑨 부인 역',112,21);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'하 선생 역',113,21);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'차우 부인 역',114,21);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'천 선생 역',115,21);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'카미야 토루 역',116,22);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'히노 마오리 역',117,22);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'와타야 이즈미 역',118,22);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'카미야 사나에 역',119,22);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'',120,23);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'',121,23);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'',122,23);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'',123,23);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'본인 역',124,24);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'본인 역',125,24);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'본인 역',126,24);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'본인 역',127,24);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'보영 역',128,26);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'아휘 역',98,26);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'창 역',129,26);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'',130,26);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'K 역',131,27);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'릭 데커드 역',132,27);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'조이 역',133,27);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'러브 역',134,27);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'니안더 월레스 역',135,27);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'마리에트 역',136,27);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'조시 역',137,27);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'사퍼 모튼 역',138,27);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'미스터 코튼 역',139,27);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'매그니피코 왕 목소리 역',140,28);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'발렌티노 목소리 역',141,28);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'에이샤 목소리 역',56,28);


insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'',142,29);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'',143,29);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'',144,29);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'',145,29);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'',146,30);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'',147,31);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'',148,31);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'',149,31);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'',150,31);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'',151,32);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'',152,32);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'',153,32);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'',154,32);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'',155,32);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'',156,32);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'',157,32);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'',158,32);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'',159,32);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'',160,32);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'',161,32);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'오키쿠 역',162,33);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,163,33);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,164,33);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,165,33);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,166,33);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,167,33);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'J. 로버트 오펜하이머 역',168,35);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'캐서린 오펜하이머 역',169,35);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'레슬리 그로브스 역',170,35);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'루이스 스트라우스 역',171,35);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'진 태틀록 역',172,35);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'어니스트 로렌스 역',173,35);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,174,35);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,175,35);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'닐스 보어 역',176,35);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'TJ 밸런타인 역',177,36);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'야라 역',178,36);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'라이언 (목소리) 역',179,36);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'타니 역',180,36);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'찰리 역',181,36);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'에디 역',182,36);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'자파 역',183,36);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,184,37);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,185,37);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,186,37);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,187,37);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),null,188,37);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'엘리자베스 역',189,38);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'그레이시 역',190,38);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'조 역',191,38);

insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'나나세 리쿠 (목소리) 역',192,39);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'야오토메 가쿠 (목소리) 역',193,39);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'모모 (목소리) 역',194,39);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'이스미 하루카 (목소리) 역',195,39);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'이즈미 이오리 (목소리) 역',196,39);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'니카이도 야마토 (목소리) 역',197,39);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'이즈미 미츠키 (목소리) 역',198,39);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'요츠바 타마키 (목소리) 역',199,39);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'오사카 소고 (목소리) 역',200,39);
insert into tblMovieActor(seq, role, aseq,mseq) values ((select nvl(max(seq),0)+1 from tblMovieActor),'로쿠야 나기 (목소리) 역',201,39);

insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'미야기 료타 역',202,40);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'미츠이 히사시 역',203,40);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'루카와 카에데 역',204,40);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'사쿠라기 하나미치 역',205,40);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'아카기 타케노리 역',206,40);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'송태섭 (한국어 목소리)역',207,40);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'정대만 (한국어 목소리)역',208,40);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'서태웅 (한국어 목소리)역',209,40);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'강백호 (한국어 목소리)역',210,40);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'채치수 (한국어 목소리)역',211,40);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),null,212,40);

insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),null,213,42);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),null,214,42);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),null,215,42);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),null,216,42);

insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),null,217,43);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),null,218,43);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),null,219,43);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),null,220,43);


insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),null,221,46);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),null,222,46);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),null,223,46);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),null,224,46);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),null,225,46);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),null,226,46);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),null,227,46);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),null,228,46);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),null,229,46);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),null,230,46);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),null,231,46);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),null,232,47);

insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'용자 역',233,48);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'성진 역',234,48);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'용자오빠 역',235,48);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'용자엄마 역',236,48);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'할머니 역',237,48);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'할아버지 역',238,48);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'익태 역',239,48);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'존슨 역',240,48);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'진만 역',241,48);

insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'니시즈미 미호 (목소리) 역',242,49);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'타케베 사오리 (목소리) 역',243,49);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'이스즈 하나 (목소리) 역',244,49);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'아키야마 유카리 (목소리) 역',245,49);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'레이제이 마코 (목소리) 역',246,49);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'카도타니 안즈 (목소리) 역',247,49);

insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'(한국어 목소리) 역',248,50);
insert into tblMovieActor(seq, role, aseq,mseq)values ((select nvl(max(seq),0)+1 from tblMovieActor),'(한국어 목소리) 역',249,50);


--tblDirector(seq number primary key,name varchar2(50) not null,masterpiece varchar2(100) default '미등록');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '폴킹', '패딩턴 2');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '김덕영', '김일성의 아이들');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '소토자키 하루오', '귀멸의 칼날: 상현집결, 그리고 도공 마을로');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '김덕영', '김일성의 아이들');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '박영주', '선희와 슬기');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '김용균', '괴담만찬');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '김덕민', default);
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '알란 포맨', default);
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '알레한드로 몬테베르드', '리틀 보이');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '하준원', '원 파인 데이');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '매튜 본', '킹스맨: 퍼스트 에이전트');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '네스토르 F. 데니스', default);
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '쥐스틴 트리에','시빌');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '홍인표','목욕탕');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '알렉산더 페인','다운사이징');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '루오 루오','아현재상애: 나 이제 사랑하고 싶어');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '길 정거','지니어스 독');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '고레에다 히로카즈','브로커');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '로랑 브루',default);
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '야닉 물랑',default);
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '브누와 솜빌',default);
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '왕가위','화양연화 리마스터링');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '김성수','아수라');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '미키 타카히로','너의 눈이 말하고 있어');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '하야카와 치에','10년');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '김지선',default);
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '조현정',default);
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '오네 히토시','써니');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '드니 빌뇌브','듄: 파트2');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '크리스 벅','겨울왕국 2');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '폰 비라선손',default);
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '김다민','웅비와 인간 아닌 친구들');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '민환기','청춘 선거');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '벤자민 레너','어네스트와 셀레스틴');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '최동훈','외계+인 1부');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '사카모토 준지','어나더 월드');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '크리스토퍼 놀란','테넷');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '켄 로치','미안해요, 리키');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '최이현',default);
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '토드 헤인즈','다크 워터스');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '니시키오리 히로시','극장판 몬스터 스트라이크: 하늘의 저편');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '야마모토 켄스케',default);
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '이노우에 다케히코',default);
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '윤제완','뽀로로 극장판 드래곤캐슬 대모험');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '김성민',default);
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '존 건','더 케이스 포 크라이스트');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '헤더 윌크','크레센도');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '김상철','아버지의 마음');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '매들린 개빈',default);
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '김한민','한산 리덕스');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '안노 히데아키','신 에반게리온 극장판');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '정하용','귀신');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '미즈시마 츠토무','걸즈 앤 판처 최종장 제3화');
insert into tblDirector(seq, name, masterpiece) values ((select nvl(max(seq),0)+1 from tblDirector), '오오모리 타카히로','나츠메우인장 이시오코시와 수상한 방문자');


--tblMovieDirector(seq number primary key,dseq number not null references tblDirector(seq),mseq number not null references tblMovie(mseq));
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 1, 1);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 2, 2);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 3, 3);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 4, 4);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 5, 5);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 6, 6);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 7, 7);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 8, 8);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 9, 9);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 10, 10);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 11, 11);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 12, 12);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 13, 13);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 14, 14);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 15, 15);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 16, 16);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 17, 17);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 18, 18);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 19, 18);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 20, 18);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 21, 19);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 22, 20);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 21, 21);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 23, 22);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 24, 23);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 25, 24);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 26, 24);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 27, 25);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 21, 26);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 28, 27);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 29, 28);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 30, 28);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 31, 29);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 32, 30);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 33, 31);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 34, 32);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 35, 33);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 36, 35);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 37, 36);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 38, 37);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 39, 38);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 40, 39);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 41, 39);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 42, 40);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 43, 41);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 44, 41);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 45, 42);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 46, 43);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 47, 44);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 48, 45);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 49, 46);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 50, 47);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 51, 48);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 52, 49);
insert into tblMovieDirector(seq, dseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieDirector), 53, 50);


--tblTitle(seq number primary key,kr varchar2(100) not null,eng varchar2(100),etc varchar2(100));
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '웡카','Wonka','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '건국전쟁','The Birth of Korea','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '귀멸의 칼날: 인연의 기적, 그리고 합동 강화 훈련으로','Demon Slayer: Kimetsu no Yaiba To The Hashira Training','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '시민덕희','Citizen of a Kind','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '소풍','Picnic','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '도그데이즈','Dog Days','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '아기상어 극장판: 사이렌 스톤의 비밀','Baby Shark’s Big Movie','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '사운드 오브 프리덤','Sound of Freedom','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '데드맨','Dead Man','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '아가일','Argylle','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '스노우 퍼핀즈','Johnny Puff: Secret Mission','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '추락의 해부','Anatomy of a Fall','Anatomie d''une chute');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), 'DMZ 동물 특공대','','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '바튼 아카데미','The Holdovers','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '우견니','Almost Love','遇见你');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '이프 온리','If Only','If Only');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '괴물','Monster','怪物');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '정글번치 : 월드투어','','Les As de la Jungle 2 - Operation Tour du Monde');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '중경삼림 리마스터링','Chungking Express','重慶森林');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '서울의 봄','12.12: THE DAY','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '화양연화 리마스터링','In The Mood For Love','花樣年華');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '오늘 밤, 세계에서 이 사랑이 사라진다 해도','Even If This Love Disappears from the World Tonight','今夜、世界からこの恋が消えても');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '플랜 75','Plan 75','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '에스파: 마이 퍼스트 페이지','aespa: MY First page','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '신차원! 짱구는 못말려 더 무비 초능력 대결전 ~날아라 수제김밥~','New Dimension! Crayon Shinchan the Movie: Battle of Supernatural Powers ~Flying Sushi~','しん次元！クレヨンしんちゃんTHE MOVIE 超能力大決戦 ～とべとべ手巻き寿司～');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '해피 투게더 리마스터링','Happy Together','春光乍洩');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '블레이드 러너 2049','Blade Runner 2049','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '위시','Wish','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '막걸리가 알려줄거야','FAQ','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '길위에 김대중','','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '인투 더 월드','Migration','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '외계+인 2부','','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '오키쿠와 세계','Okiku and the World','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '극장판 아이돌리쉬 세븐; LIVE 4bit BEYOND THE PERiOD DAY 2','IDOLiSH7 Movie: LIVE 4bit - BEYOND THE PERiOD DAY 2','劇場版アイドリッシュセブン LIVE 4bit BEYOND THE PERiOD');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '오펜하이머','Oppenheimer','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '나의 올드 오크','The Old Oak','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '장인과 사위','','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '메이 디셈버','May December','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '극장판 아이돌리쉬 세븐; LIVE 4bit BEYOND THE PERiOD DAY 1','Movie: LIVE 4bit - BEYOND THE PERiOD DAY 1','劇場版アイドリッシュセブン LIVE 4bit BEYOND THE PERiOD');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '더 퍼스트 슬램덩크','The First Slam Dunk','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '뽀로로 극장판 슈퍼스타 대모험','','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '예수는 역사다','The Case for Christ','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '크레센도 반 클라이번 콩쿠르 실황','Crescendo Live from the Cliburn','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '부활 그 소망','','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '비욘드 유토피아','Beyond Utopia','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '노량: 죽음의 바다','Noryang: Deadly Sea','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '엔드 오브 에반게리온','Neon Genesis Evangelion: The End of Evangelion','新世紀エヴァンゲリオン The End of Evangelion');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '아네모네','Anemone: A Fairy Tale for No Kids','');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '걸즈 앤 판처 최종장 제4화','Girls und Panzer das Finale: Part IV','ガールズ＆パンツァー 最終章 第４話');
insert into tblTitle(seq, kr,eng,etc) values ((select nvl(max(seq),0)+1 from tblTitle), '영화 스미코구라시-푸른 달밤의 마법의 아이','Sumikkogurashi: The Little Wizard in the Blue Moonlight','');


--tblMovieTitle(seq number primary key,tseq number not null references tblTitle(seq),mseq number not null references tblMovie(mseq));
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieTitle), 1, 1);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieTitle), 2, 2);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieTitle), 3, 3);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieTitle), 4, 4);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieTitle), 5, 5);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieTitle), 6, 6);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq),0)+1 from tblMovieTitle), 7, 7);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),8,8);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),9,9);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),10,10);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),11,11);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),12,12);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),13,13);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),14,14);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),15,15);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),16,16);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),17,17);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),18,18);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),19,19);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),20,20);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),21,21);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),22,22);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),23,23);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),24,24);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),25,25);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),26,26);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),27,27);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),28,28);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),29,29);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),30,30);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),31,31);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),32,32);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),33,33);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),34,34);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),35,35);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),36,36);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),37,37);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),38,38);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),39,39);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),40,40);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),41,41);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),42,42);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),43,43);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),44,44);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),45,45);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),46,46);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),47,47);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),48,48);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),49,49);
insert into tblMovieTitle(seq, tseq, mseq) values ((select nvl(max(seq), 0)+1 from tblMovieTitle),50,50);




--tblExpertReview
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'팀 버튼 카카오에 스필버그 흑설탕을 듬뿍',(select seq from tblExpert where name= '박평식'),1);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7 ,'그의 노래, 그의 초콜릿이 주는 행복감에 취한다',(select seq from tblExpert where name= '이용철'),1);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),5 ,'단 초콜릿 위에 더 단 토핑이 잔뜩',(select seq from tblExpert where name= '허남웅'),1);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7 ,'로알드 달보다는 폴 킹의 인장이 강한, 무해한 낙관의 세계',(select seq from tblExpert where name= '임수연'),1);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'달콤하지만 하늘에 뜰 정도는 아닌',(select seq from tblExpert where name= '김철홍'),1);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7 ,'뒷모습에 빛이 내릴 때, 옆모습에 어둠이 드리울 때 증명되는',(select seq from tblExpert where name= '이우빈'),1);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7 ,'낯선 문화를 향한 관용과 연대를 녹인 폴 킹의 달콤한 낙관',(select seq from tblExpert where name= '정재현'),1);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'결국 ‘읽을 줄 아는 사람’이 되는 노동자들의 낙관과 전략,',(select seq from tblExpert where name= '이자연'),1);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7 ,'<패딩턴> 사단이 제조한 MZ세대를 위한 초콜릿',(select seq from tblExpert where name= '김혜리'),1);

insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'걸림돌을 제거하고 추진력 있게 나아간다',(select seq from tblExpert where name= '이유채'),4);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),5 ,'쉼표 없이 분출하기 바쁜 감정의 레이스',(select seq from tblExpert where name= '허남웅'),4);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'각자도생해야 하는 시민의 나라, 그래서 눈물겨운 해피엔딩',(select seq from tblExpert where name= '이용철'),4);

insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),5 ,'석양을 붙잡고 추억을 꺼내다',(select seq from tblExpert where name= '박평식'),5);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'애틋함과 서러움, 유머와 결기를 오가는 생사의 로드무비',(select seq from tblExpert where name= '김소미'),5);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'삶과 죽음 사이 60년의 세월을 겸허히 돌아본다',(select seq from tblExpert where name= '조현나'),5);

insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),5 ,'보들보들 따스하나 ‘개밥에 도토리’도',(select seq from tblExpert where name= '박평식'),6);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),5 ,'견공의 압박, ‘행복해야 돼!’',(select seq from tblExpert where name= '이용철'),6);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'JK필름의 김치찌개에, 강아지라는 치트키',(select seq from tblExpert where name= '임수연'),6);

insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'세심한 관계성과 중독성 강한 노래. 어른 관객도 홀릴 만하다',(select seq from tblExpert where name= '조현나'),7);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'<아기상어>의 강점이 무엇인지 명확히 아는 뮤직버스터 세계관',(select seq from tblExpert where name= '이자연'),7);

insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),5 ,'타이틀백과 클로징 자막이 더 소름끼쳐',(select seq from tblExpert where name= '박평식'),8);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),4 ,'흥행의 불가사의',(select seq from tblExpert where name= '이용철'),8);

insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),5 ,'이름은 선명하지만 번호는 흐릿한 명함',(select seq from tblExpert where name= '박수용'),9);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),5 ,'공들인 세계를 좀더 펼쳐 보였다면',(select seq from tblExpert where name= '이유채'),9);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),5 ,'앞다퉈 질주하는 전투 속에 반박자씩 느리게 오는 쾌감',(select seq from tblExpert where name= '이자연'),9);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),5 ,'다소 어수선한 이름 석자 지키기',(select seq from tblExpert where name= '정재현'),9);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),5 ,'더 흥미로울 소재가 스테레오타입의 주인공으로 어떻게 평범해지는가',(select seq from tblExpert where name= '허남웅'),9);

insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'급가속과 급변속으로 농락하네',(select seq from tblExpert where name= '박평식'),10);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'원작이 <만주인 후보>인가?',(select seq from tblExpert where name= '이용철'),10);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'반전의 연막탄을 색색으로 남발한다',(select seq from tblExpert where name= '허남웅'),10);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'제임스 본드와 제이슨 본을 아우르려는 감독의 야심',(select seq from tblExpert where name= '조현나'),10);

insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7 ,'눈보라에 갇혀 살점을 뜯기다',(select seq from tblExpert where name= '박평식'),12);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),8 ,'멀고 길게 돌아가나 그 길은 의혹을 전제한 게 아니다',(select seq from tblExpert where name= '이용철'),12);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),8 ,'증명하려 들수록 미궁에 빠지는 인간 감정의 진실 혹은 아이러니',(select seq from tblExpert where name= '허남웅'),12);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),9 ,'진실공방을 표방해 자기 서사 쓰기의 버거움과 고립감을 그린다',(select seq from tblExpert where name= '김소미'),12);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'인간 주관의 불완정성에 대한 선처를 바라는 n번째 상소',(select seq from tblExpert where name= '김철홍'),12);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),8 ,'사운드와 이미지가 어긋난 진실에 관하여',(select seq from tblExpert where name= '오진우'),12);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7 ,'탈진실의 뉘앙스를 법정물에 적용하는 편의성엔 점차 의문이',(select seq from tblExpert where name= '이우빈'),12);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),8 ,'진술로 은유하는 시네마의 고유 미학',(select seq from tblExpert where name= '정재현'),12);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7 ,'콘텍스트로 꿰어낸 텍스트',(select seq from tblExpert where name= '유선아'),12);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),8 ,'정교한 카메라를 따라 관계의 피부를 절개하는 의심의 칼날',(select seq from tblExpert where name= '박수용'),12);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),9 ,'사실과 진실의 포물선이 교차할 때',(select seq from tblExpert where name= '김혜리'),12);

insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7 ,'인간이 미안해. 터전을 지키려는 동물들의 착한 작당',(select seq from tblExpert where name= '이우빈'),13);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'평화를 불원하는 자들에 대한 재미있는 은유',(select seq from tblExpert where name= '이용철'),13);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7 ,'‘공존의 인간학’에 웃다가도 울컥',(select seq from tblExpert where name= '박평식'),14);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),9 ,'재회의 시간: 뉴아메리칸시네마, 아버지, 캣 스티븐스, 할 애슈비',(select seq from tblExpert where name= '이용철'),14);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7 ,'F학점을 받아야만 배울 수 있는 것이 있다',(select seq from tblExpert where name= '김철홍'),14);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),9 ,'결함뿐인 삶에 비탄이 몰아쳐도, 오늘은 내 곁의 약한 이를 지키리',(select seq from tblExpert where name= '정재현'),14);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),9 ,'닭장의 횃대 같은 삶에도 왼쪽 눈을 알아보는 친구가 주어진다. 앙트레 누',(select seq from tblExpert where name= '이자연'),14);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),9 ,'다른 이의 삶을 섣불리 재단 않고 천천히 알아가면 달라지는 것들',(select seq from tblExpert where name= '유선아'),14);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),9 ,'실망에 대한 가장 따뜻한 연구',(select seq from tblExpert where name= '김혜리'),14);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),8 ,'<샤이닝>의 무대에서 <죽은 시인의 사회>의 인물들이 펼치는 <미스 리틀 선샤인>',(select seq from tblExpert where name= '허남웅'),14);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),5 ,'또 왔구나, 가사만 바꾼 할리우드 배뱅이굿',(select seq from tblExpert where name= '박평식'),16);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7 ,'너희에겐 벽과 덤불과 프리즘이었어',(select seq from tblExpert where name= '박평식'),17);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7 ,'전쟁터에선 누구나 괴물이 된다, 지금은 학교가 그곳이다',(select seq from tblExpert where name= '이용철'),17);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),9 ,'소수자 문제를 드러내는 영리한 플롯과 있는 그대로를 인정하는 따뜻한 시선',(select seq from tblExpert where name= '임수연'),17);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),9 ,'베테랑의 쇄신과 역동을 목도하는 감흥이 엔딩만큼 눈부시다',(select seq from tblExpert where name= '김소미'),17);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),9 ,'절벽의 끝에, 우리만의 빛',(select seq from tblExpert where name= '조현나'),17);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),9 ,'인간의 한계를 드러내는 빼어난 구성. 감독의 새로운 걸작',(select seq from tblExpert where name= '배동미'),17);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),8 ,'잘하는 걸 재차 잘해내버리는 거장의 괴력',(select seq from tblExpert where name= '김철홍'),17);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),9 ,'모두가 행복할 수 없기에 괴물로 보이는 둘만의 세계',(select seq from tblExpert where name= '오진우'),17);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),9 ,'각본은 두드러지고 연출은 스며들어 결국 완벽해지다',(select seq from tblExpert where name= '이유채'),17);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),8 ,'나의 원형으로 돌아갈 시간, 지난밤 비가 온 줄도 모르게',(select seq from tblExpert where name= '이자연'),17);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7 ,'가려진 무엇의 묵직한 무게, 오로지 그것의 힘',(select seq from tblExpert where name= '유선아'),17);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),5 ,'어느 동물도 혐오스럽지 않게, 바른 표현',(select seq from tblExpert where name= '이용철'),18);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7 ,'권력이 영원할 줄 아는 사악한 바보들에게',(select seq from tblExpert where name= '박평식'),20);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'검사의 봄에 되돌아보는, 뱀의 욕망이 낳은 탄식과 울분의 밤',(select seq from tblExpert where name= '이용철'),20);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7 ,'여러모로 아슬아슬하다',(select seq from tblExpert where name= '안시환'),20);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7 ,'‘어떻게 성공했지?’라는 궁금증과 하나회를 향한 분노가 왔다 갔다',(select seq from tblExpert where name= '임수연'),20);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7 ,'‘전두광 영화’가 되지 않았다는 점이 놀랍다',(select seq from tblExpert where name= '이유채'),20);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'바둑을 오셀로로 뒤집으려는 병법의 하룻밤',(select seq from tblExpert where name= '유선아'),20);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),5 ,'각설탕이 목에 걸린 기분',(select seq from tblExpert where name= '박평식'),22);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'허구는 힘이 세다, 그만큼 울어버렸다',(select seq from tblExpert where name= '이용철'),22);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),5 ,'익숙한 일본 감성으로 풀어낸 기억상실 로맨스',(select seq from tblExpert where name= '김수영'),22);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),5 ,'뭉툭하고 은근한 암시, 단호한 시선',(select seq from tblExpert where name= '유선아'),23);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'다큐에 버금가는 현실감, 고독의 공포',(select seq from tblExpert where name= '박평식'),23);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),8 ,'<소일렌트 그린>을 현실로 살아내야 할 줄이야, 하긴 그게 2022년이었으니',(select seq from tblExpert where name= '이용철'),23);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7 ,'자발적 선택으로 포장된 사회적 강요가 초래할 노년의 근미래, 아니 다가온 현재',(select seq from tblExpert where name= '허남웅'),23);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7 ,'고령화 시대의 미래, 그곳에 희망이 존재하냐고 묻는다면',(select seq from tblExpert where name= '조현나'),23);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),8 ,'신세란 무엇인가를 묻는 일본영화의 최선',(select seq from tblExpert where name= '김철홍'),23);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'담담해서 사무치는 노인들의 ‘사요나라’',(select seq from tblExpert where name= '정재현'),23);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'7년을 뛰어넘은 기술적 시도, 7년 전에 멈춘 농담들',(select seq from tblExpert where name= '이자연'),25);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),8 ,'드러냄과 감춤의 오묘한 리듬. 60년대 안토니오니에 버금가는 연출력',(select seq from tblExpert where name= '박평식'),26);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),8 ,'스스로를 아류화시키던 왕가위는 다시 자신의 영화세계를 구원한다',(select seq from tblExpert where name= '유지나'),26);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),9 ,'또 새로움! 왕가위의 스타일엔 유효기간이 없다',(select seq from tblExpert where name= '이명인'),26);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),8 ,'사랑할 때와 헤어질 때. 그 공기를 포착한 성숙한 영화',(select seq from tblExpert where name= '김영진'),26);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),8 ,'지구반바퀴를 돌아도 떨칠 수 없는, 이토록 간절한 사랑이여',(select seq from tblExpert where name= '황진미'),26);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),8 ,'인간이든 복제인간이든 옳은 행동만이 중요하다',(select seq from tblExpert where name= '김성훈'),27);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'잘 계승했으나 사유의 폭이 넓진 않다',(select seq from tblExpert where name= '박평식'),27);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7 ,'안드로이드는 양을 꿈꾸는가',(select seq from tblExpert where name= '이용철'),27);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),10 ,'죽기 전에 보아야 할 SF영화가 한편 늘었다',(select seq from tblExpert where name= '장영엽'),27);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),10 ,'35년간의 기다림, 마침내 응답받다',(select seq from tblExpert where name= '한동원'),27);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),9 ,'드니 빌뇌브는 포스트 리들리 스콧을 꿈꾸는가',(select seq from tblExpert where name= '허남웅'),27);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),5 ,'족보 깔고 목청 돋워 체면치레',(select seq from tblExpert where name= '박평식'),28);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),5 ,'100주년맞이 역사 바로 세우기 혹은 역사 지우기',(select seq from tblExpert where name= '이용철'),28);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7 ,'그들의 두 번째 100주년 영화를 보고 싶다는 소원이 생기다',(select seq from tblExpert where name= '김철홍'),28);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),5 ,'지난 세기 디즈니의 영광의 순간들을 모아',(select seq from tblExpert where name= '박수용'),28);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'11살 고뇌가 몽실몽실',(select seq from tblExpert where name= '박평식'),29);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'조용한 귀염둥이가 할 말은 다한다',(select seq from tblExpert where name= '이용철'),29);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),8 ,'김다민의 상상력 학원이 구해줄 거야',(select seq from tblExpert where name= '김철홍'),29);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),8 ,'이상함을 주저하지 않는 과감한 상상력의 역량',(select seq from tblExpert where name= '이우빈'),29);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'어린이의 자주성에 관한 흥미롭고 달큰한 접근',(select seq from tblExpert where name= '정재현'),29);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),8 ,'내 마음속에도 막걸리를 알아보던 동춘이가 있는데',(select seq from tblExpert where name= '이자연'),29);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'불덩이로 방패로 젖은 눈으로 걷다',(select seq from tblExpert where name= '박평식'),30);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6 ,'쉽게 굽히지 않고 쉽게 미끄러지지 않고 오직 전진',(select seq from tblExpert where name= '이자연'),30);


--31	인투 더 월드
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6,'못 먹어본 ‘더커로렌지’, 앞으로도 못 먹게 된',(select seq from tblExpert where name= '이용철'), 31);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),6,'생태주의적 유머로 그려낸 <오리 날다>',(select seq from tblExpert where name= '최현수'), 31);

--32	외계+인 2부
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),5,'엎질러진 물 다시 담기',(select seq from tblExpert where name= '박평식'), 32);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),5,'모두가 조증 증후군',(select seq from tblExpert where name= '이용철'), 32);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),5,'과유불급의 기획, 절치부심의 편집',(select seq from tblExpert where name= '허남웅'), 32);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7,'함께 리듬타긴 쉽지 않지만, 언젠가 다시 만나고 싶은 세계',(select seq from tblExpert where name= '김철홍'), 32);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),5,'과유불급의 기획, 절치부심의 편집',(select seq from tblExpert where name= '정재현'), 32);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),5,'모두가 조증 증후군',(select seq from tblExpert where name= '이자연'), 32);
insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),5,'엎질러진 물 다시 담기',(select seq from tblExpert where name= '유선아'), 32);


--33	오키쿠와 세계
   insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7,'풍자와 해학이 질퍼덕질퍼덕',(select seq from tblExpert where name= '박평식'), 33);
   insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),10,'세계를 인식해낸 자에게 무한한 배설의 축복이',(select seq from tblExpert where name= '김철홍'), 33);
   insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),8,'몇번의 컬러 전환으로 힐끔 보이는 사랑과 세계',(select seq from tblExpert where name= '오진우'), 33);
   insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),9,'사카모토 준지가 찍는 ‘얼굴’의 아름다움이 시대를 초월한다',(select seq from tblExpert where name= '이우빈'), 33);
   insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),9,'<일출> <라탈랑트> <인정 종이풍선> 그리고 <오키쿠와 세계>로구나',(select seq from tblExpert where name= '이용철'), 33);


--34	극장판 아이돌리쉬 세븐; LIVE 4bit BEYOND THE PERiOD DAY 2
--35	오펜하이머
   insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),8,'지성, 야심, 윤리의 빅뱅 그리고 잔해',(select seq from tblExpert where name= '박평식'), 35);
   insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),9,'보자마자 20자평 쓰는 게 너무 힘든 경우',(select seq from tblExpert where name= '이용철'), 35);
   insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7,'스펙터클 제로로 써내린 프로메테우스 탄원서',(select seq from tblExpert where name= '김철홍'), 35);
   insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),9,'강렬한 빛과 후폭풍 같은 그림자로 구성된 오펜하이머의 시간',(select seq from tblExpert where name= '오진우'), 35);
   insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),9,'작정하고 벼른 영화 작가의 펜촉, 비범한 잉크, 휘황한 필치',(select seq from tblExpert where name= '이우빈'), 35);

--36	나의 올드오크
   insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7,'''나눔과 투쟁''을 당부하며 떠나는 감독께 감사',(select seq from tblExpert where name= '박평식'), 36);
   insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),8,'함께하는 한끼가 디올 백보다 소중함을 모른다면, 인간 실격',(select seq from tblExpert where name= '이용철'), 36);
   insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7,'공감을 넘어 손잡고 행진하며 행동을 촉구하는 켄 로치의 여전한 저력',(select seq from tblExpert where name= '허남웅'), 36);
   insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),8,'어떤 직설은 그 자체로 슬픔을 자아낸다',(select seq from tblExpert where name= '김소미'), 36);
   insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),7,'어떤 비극의 순간에도 연대를 외치는 신념',(select seq from tblExpert where name= '조현나'), 36);
   insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview),8,'이렇게 살 수도, 그렇게 죽을 수도 없으므로',(select seq from tblExpert where name= '유선아'), 36);


--37	장인과 사위
--38	메이 디셈버
--39	극장판 아이돌리쉬 세븐; LIVE 4bit BEYOND THE PERiOD DAY 1

--40	슬램덩크
   insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview), 8,'너희 시간에만 가능한 로망, 걸작의 재확인',(select seq from tblExpert where name= '이용철'), 40);	
   insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview), 7,'꺾이지 않는 마음, 변하지 않는 감동. 움직이는 만화의 힘',(select seq from tblExpert where name= '송경원'), 40);	
   insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview), 8,'결과를 아는데도 이렇게 가슴 뛸 일이야!',(select seq from tblExpert where name= '허남웅'), 40);	


--41	뽀로로 극장판 슈퍼스타 대모험
   insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview), 7,'아동용을 넘어 가족용 영화로 거듭나신 뽀느님의 위엄',(select seq from tblExpert where name= '송경원'), 41);	
   insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview), 6,'슬랩스틱과 속도감이 살아 있는 글로벌 애니메이션',(select seq from tblExpert where name= '황진미'), 41);

--42	예수는 역사다
   insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview), 4,'답은 정해져 있으니 넌 예수만 믿으면 된다는 영화',(select seq from tblExpert where name= '김보연'), 42);

--43	크레센도 반 클라이번 콩쿠르 실황

--44	부활 그 소망(날짜이상)

--45	비욘드 유토피아
    insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview), 8,'유토피아란 허상을 스스로 건너뛴 사람들에게 슬픔이 그만 멎기를',(select seq from tblExpert where name= '이자연'), 45);


--46	노량
    insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview), 6,'교실에서 바다로, 장엄한 사족으로',(select seq from tblExpert where name= '박평식'), 46);
    insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview), 7,'서정과 역동의 무르익은 완급 조절',(select seq from tblExpert where name= '유선아'), 46);
    insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview), 7,'어쨌든 기념비적인 시리즈로 남을 듯',(select seq from tblExpert where name= '이용철'), 46);
    insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview), 6,'잊힐(힌) 얼굴들을 되살리는 선상의 백병전',(select seq from tblExpert where name= '이우빈'), 46);
    insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview), 7,'죽음을 끝내기 위해 더 많은 죽음을 택한 숭고의 딜레마',(select seq from tblExpert where name= '임수연'), 46);




--47	엔드 오브 에반게리온
    insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview), 7,'세기말을 여전히 유효하게 만드는 이름',(select seq from tblExpert where name= '이용철'), 47);
    insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview), 9,'애니메이션보다 큰 텍스트, 전세계 오타쿠의 마음을 LCL의 바다로',(select seq from tblExpert where name= '이우빈'), 47);


--48	아네모네
    insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview), 5,'재미난 설정과 지겨운 악다구니',(select seq from tblExpert where name= '박평식'), 48);
    insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview), 5,'끝까지 봐야 한다, 전작처럼',(select seq from tblExpert where name= '이용철'), 48);
    insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview), 4,'1차원적인 웃음을 꿋꿋이 이어나가는 정이랑',(select seq from tblExpert where name= '김현승'), 48);

--49	걸즈 앤 판처 최종장 제4화

--50	영화 스미코구라시-푸른 달밤의 마법의 아이

    insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview), 5,'소파에 누워 군것질하듯',(select seq from tblExpert where name= '박평식'), 50);
    insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview), 5,'정말 귀엽지만, 서사의 주인공으로서는 한계',(select seq from tblExpert where name= '이용철'), 50);
    insert into tblExpertReview (seq, grade, content, eseq, mseq) values ((select nvl(max(seq), 0) + 1 from tblExpertReview), 6,'꿈이라는 정체성, 몽글몽글 차오르는 행복',(select seq from tblExpert where name= '이유채'), 50);
