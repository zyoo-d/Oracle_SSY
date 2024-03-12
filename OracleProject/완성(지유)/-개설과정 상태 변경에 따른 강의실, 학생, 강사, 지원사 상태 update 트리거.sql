--개설과정 상태 변경에 따른 강의실, 학생, 강사, 지원사 상태 update 트리거
CREATE TABLE tblOnGoingCrs AS SELECT oc.ocpk, oc.crpk, oc.tpk,oc.ocspk,cp.stupk FROM tblOpencourse OC  left outer join tblcourseparticipants cp on oc.ocpk = cp.ocpk where ocspk = 2;

CREATE OR REPLACE TRIGGER trgChangeCRStatus_room
AFTER UPDATE OF ocspk ON tblOpencourse
FOR EACH ROW
DECLARE
    vClassroom number;
BEGIN
    select distinct crpk into vClassroom from tblOnGoingCrs where ocpk = :new.ocpk;
    IF :NEW.ocspk = 3 THEN
        update tblClassroom set crpossible = 'Y' where crpk = vClassroom;
        DELETE tblOnGoingCrs WHERE  ocpk = :new.ocpk;
        dbms_output.put_line('강의실이 사용 가능한 상태로 변경되었습니다.');
    ELSIF :NEW.ocspk = 2 THEN
        update tblClassroom set crpossible = 'N' where crpk = vClassroom;
        dbms_output.put_line('강의실이 사용 불가능한 상태로 변경되었습니다.');

    END IF;
EXCEPTION
    WHEN OTHERS THEN
    dbms_output.put_line('에러 발생: ' || SQLERRM);
END;
/

CREATE OR REPLACE TRIGGER trgChangeCRStatus_Teacher
BEFORE UPDATE OF ocspk ON tblOpencourse
FOR EACH ROW
DECLARE
    vTeacher number;
BEGIN
    select distinct tpk into vTeacher from tblOnGoingCrs where ocpk = :new.ocpk;
    IF :NEW.ocspk = 3 THEN
         update tblTeacher set tstspk = 3 where tpk = vTeacher;
         dbms_output.put_line('강사의 상태가 대기중으로 변경되었습니다.');
    ELSIF :NEW.ocspk = 2 THEN
        update tblTeacher set tstspk = 2 where tpk = vTeacher;
        
    END IF;
EXCEPTION
    WHEN OTHERS THEN
    dbms_output.put_line('에러 발생: ' || SQLERRM);
END;
/
SELECT * FROM tblOnGoingCrs;
CREATE OR REPLACE TRIGGER trgChangeCRStatus_Student
BEFORE UPDATE OF ocspk ON tblOpencourse
FOR EACH ROW
DECLARE
    vStudent number;
    cursor vcursor is select stupk from tblOnGoingCrs where ocpk = :new.ocpk;
BEGIN
open vcursor;
    loop
        FETCH vcursor INTO vStudent;
        EXIT WHEN vcursor%NOTFOUND;
    
        IF :NEW.ocspk = 3 THEN
            update tblStudent set stustspk = 4 where stupk = vStudent and stustspk in (2,6);

        ELSIF :NEW.ocspk = 2 THEN
            update tblStudent SET stustspk = 2 WHERE stupk = vStudent and stustspk = 1;

        END IF;
        END LOOP;
    close vcursor;
    dbms_output.put_line('학생의 상태가 정상적으로 변경되었습니다.');

EXCEPTION
    WHEN OTHERS THEN
    dbms_output.put_line('에러 발생: ' || SQLERRM);
END trgChangeCRStatus_Student;
/

CREATE OR REPLACE TRIGGER trgChangeCRStatus_recruit
BEFORE UPDATE OF ocspk ON tblOpencourse
FOR EACH ROW
DECLARE
    vRecruit number;
    cursor vcursor is select recpk from tblRecruit where ocpk = :new.ocpk;
BEGIN
    open vcursor;
    loop
        FETCH vcursor INTO vRecruit;
        EXIT WHEN vcursor%NOTFOUND;
        IF :NEW.ocspk = 2 THEN
            update tblRecruit set result = 'F' where recpk = vRecruit and result <> 'P';
        END IF;
        END LOOP;
    close vcursor;
    dbms_output.put_line('''미정''상태의 지원자의 상태가 ''F''로 변경 되었습니다.');
EXCEPTION
    WHEN OTHERS THEN
    dbms_output.put_line('에러 발생: ' || SQLERRM);
END trgChangeCRStatus_recruit;
/