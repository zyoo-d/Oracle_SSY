--create 
create table tblAllCountry(
    seq number primary key,
    country varchar2(30) not null
);

create table tblMovieCountry(
    seq number primary key,
    cseq number not null references tblAllCountry(seq),
    mseq number not null references tblMovie(mseq)
);

create table tblActor(
    seq number primary key,
    name varchar2(50) not null,
    masterpiece varchar2(1000) default '미등록'
);


create table tblMovieActor(
    seq number primary key,
    role varchar2(50),
    aseq number not null references tblActor(seq),
    mseq number not null references tblMovie(mseq)
);


create table tblDirector(
    seq number primary key,
    name varchar2(50) not null,
    masterpiece varchar2(1000) default '미등록'
);


create table tblMovieDirector(
    seq number primary key,
    dseq number not null references tblDirector(seq),
    mseq number not null references tblMovie(mseq)
);

create table tblTitle(
    seq number primary key,
    kr varchar2(1000) not null,
    eng varchar2(1000),
    etc varchar2(1000)
);


create table tblMovieTitle(
    seq number primary key,
    tseq number not null references tblTitle(seq),
    mseq number not null references tblMovie(mseq)
);

ALTER TABLE tblMovie
MODIFY (summary VARCHAR2(2500));

create table tblHiredWorker(
    seq number primary key,
    mseq number not null,
    wseq number not null,
    dseq number not null,
    constraint mseq_HiredWorker_FK foreign key(mseq) references tblMovie(mseq),
    constraint wseq_FK foreign key(wseq) references tblWorker(seq),
    constraint dseq_FK foreign key(dseq) references tbldepart(seq)
);

create table tblAgeLimit (
    seq number primary key,
    name varchar2(30) not null
);


create table tblCineUser (
    seq number primary key,
    id varchar2(30) not null
);



create table tblCine21Review (
    seq number primary key,
    review varchar2(4000) not null,                          --내용
    title varchar2(100) not null,                            --제목   
    eseq number references tblExpert(seq),                   --전문가 번호
    mseq number references tblMovie(mseq)                    --영화번호
);


create table tblExpert (
    seq number primary key,
    name varchar2(30) not null      
);

create table tblHiredWorker(
    seq number primary key,
    mseq number not null,
    wseq number not null,
    dseq number not null,
    constraint mseq_HiredWorker_FK foreign key(mseq) references tblMovie(mseq),
    constraint wseq_FK foreign key(wseq) references tblWorker(seq),
    constraint dseq_FK foreign key(dseq) references tbldepart(seq)
);

create or replace trigger trgDupUser
    before
    insert
    on tblCineUser
    for each row
declare
    pcntUser number;
begin
    select count(*) into pcntUser from tblCineUser where id = :new.id;

    if  pcntUser > 0  then
        raise_application_error(-20001, '이미 등록된 아이디입니다.');
    end if; 
end trgDupUser;
/
alter trigger trgDupUser disable;


--준섭님
create table tblCompany(
    seq number primary key,
    name varchar2(100) not null
);

create table tblCompanyDepart(
    seq number primary key,
    name varchar2(50) not null
);

create table tblHiredWorker(
    seq number primary key,
    mseq number not null,
    wseq number not null,
    dseq number not null,
    constraint mseq_HiredWorker_FK foreign key(mseq) references tblMovie(mseq),
    constraint wseq_FK foreign key(wseq) references tblWorker(seq),
    constraint dseq_FK foreign key(dseq) references tbldepart(seq)
);

create table tblUserReview (
    seq number primary key,
    grade number,                                                                    --별점
    name varchar2(2000) not null,                                                      --내용
    reviewdate date,                                                                  --날짜
    useq number,
    mseq number,
    foreign key (useq) references tblCineUser(seq),         
    foreign key (mseq) references tblMovie(mseq)              
);

drop table tblUserReview;
create table tblMovie(
    mseq number primary key,
    firstRelease number not null,
    koreaRelease date not null,
    runningTime number,
    cumulativeaudience number not null,
    periodaudience number not null,
    summary varchar2(2500) null,
    agelimit number not null,
    constraint agelimit_FK foreign key(agelimit) references tblAgeLimit(seq)
);

create table tblParticCompanies(
    seq number primary key,
    cseq number not null,
    dseq number not null,
    mseq number not null,
    constraint cseq_FK foreign key(cseq) references tblCompany(seq),
    constraint tblParticCompanies_dseq_FK foreign key(dseq) references tblCompanydepart(seq),
    constraint mseq_FK foreign key(mseq) references tblMovie(mseq)
);
create table tblOfficialWeb(
    seq number primary key,
    url varchar2(150) not null,
    mseq number not null,
    constraint web_mseq_FK foreign key(mseq) references tblMovie(mseq)
);

create table tblWorker(
    seq number primary key,
    name varchar2(50) not null
);

create table tblExpertReview (
    seq number primary key,
    grade number not null,                                                      --별점
    content varchar2(4000) not null,                                            --내용
    eseq number,                                                               --전문가 번호
    mseq number,                                                               --영화번호
    foreign key (eseq) references tblExpert(seq),
    foreign key (mseq) references tblMovie(mseq)
);

create table tblGenre21 (
    seq number primary key,
    genre varchar2(100) unique
);

create table tblMovieGenre (
    seq number primary key,
    mseq number references tblMovie(mseq),
    gseq references tblGenre21(seq)
);

create table tblNews (
    seq number primary key,
    newstitle varchar2(2000) unique
);

create table tblRelNews (
    seq number primary key,
    mseq number references tblMovie(mseq),
    nseq number references tblNews(seq)
);

create table tblProdNotes (
    seq number primary key,
    notes varchar2(4000) unique,
    mseq number references tblMovie(mseq)
);

create table tblRelTitle (
    seq number primary key,
    title varchar2(1000) unique
);

create table tblRelMovie (
    seq number primary key,
    mseq number references tblMovie(mseq),
    tseq number references tblRelTitle(seq)
);

