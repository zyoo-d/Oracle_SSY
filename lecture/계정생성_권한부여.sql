--계정생성 및 권한 부여
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;
create user DBproject identified by java1234;
grant connect, resource, dba to  DBproject; 