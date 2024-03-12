--User정보 중복확인 트리거
create or replace trigger trgDupUser
    before           
    insert            
    on tblUser        
    for each row
declare
    vcnt number;
begin  
    --등록하는 주민등록번호가 기존에 등록됐는지 확인
    select count(*) into vcnt from tblUser where ssn = :new.ssn;
    --기존에 등록된 정보면 강제 에러 발생
    if  vcnt > 0  then
        raise_application_error(-20001, '이미 등록된 사용자 정보 입니다.');
    --기존에 정보가 없다면 정상적으로 정보 등록됨
    else
        null;
    end if; 

EXCEPTION
    WHEN OTHERS THEN
        raise_application_error(-20001, '이미 등록된 사용자 정보 입니다.');
end trgDupUser;
/ 
--
--rollback;
----INSERT INTO tblUser (userpk,role,name,ssn,tel,id,pw,regdate) VALUES ((SELECT NVL(MAX(userpk),0) + 1 FROM tblUser where role = '관리자'),'관리자','문시찬','801122-2755251', '01125660607', 'wriwy90','2353192',SYSDATE );	
--commit;