create table tblAllCountry(
    seq number primary key,
    country varchar2(30) not null,
    abb varchar2(10) default '미등록'
);

create table tblMovieCounty(
    seq number primary key,
    cseq number not null references tblAllCountry(seq),
    mseq number not null references tblMovie(mseq)
);

create table tblActor(
    seq number primary key,
    name varchar2(50) not null,
    masterpiece varchar2(100) default '미등록'
);


create table tblMovieActor(
    seq number primary key,
    role varchar2(50) not null,
    aseq number not null references tblActor(seq),
    mseq number not null references tblMovie(mseq)
);

create table tblDirector(
    seq number primary key,
    name varchar2(50) not null,
    masterpiece varchar2(100) default '미등록'
);

create table tblMovieDirector(
    seq number primary key,
    dseq number not null references tblDirector(seq),
    mseq number not null references tblMovie(mseq)
);

create table tblTitle(
    seq number primary key,
    kr varchar2(100) not null,
    eng varchar2(100),
    etc varchar2(100)
);
create table tblMovieTitle(
    seq number primary key,
    tseq number not null references tblTitle(seq),
    mseq number not null references tblMovie(mseq)
);
