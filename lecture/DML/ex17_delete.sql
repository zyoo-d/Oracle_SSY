-- ex17_delete.sql

/*

    delete
    - DML
    - 원하는 행을 삭제하는 명령어
    
    delete [from] 테이블명 [where절]
    
    ''**** update 등 다른 명령어는 각각의 데이터를 조작하는 명령어 -> 이전 판서 확인해서 정정해놓기~~  / 데이터값을 삭제하는 건 update를 통해서 그 값을 null값으로 바꾸는 것
    ''delete는 레코드(행)을 삭제함
*/

commit;
rollback;

select * from tblInsa;

delete from tblInsa where num = 1001;

delete from tblInsa where buseo = '총무부';

delete from tblInsa;

