
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
    masterpiece varchar2(100) default '미등록'
);

drop table tblMovieActor;
create table tblMovieActor(
    seq number primary key,
    role varchar2(50),
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

ALTER TABLE tblTitle MODIFY kr VARCHAR2(150);
ALTER TABLE tblTitle MODIFY eng VARCHAR2(150);
ALTER TABLE tblTitle MODIFY etc VARCHAR2(150);

create table tblMovieTitle(
    seq number primary key,
    tseq number not null references tblTitle(seq),
    mseq number not null references tblMovie(mseq)
);
