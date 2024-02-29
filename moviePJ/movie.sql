delete from tblAllCountry;
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


