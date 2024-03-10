--선생님 휴직/퇴사시 배정 과목 여부 확인 후 다른 강사에게 위임 절차

--대기중 상태인 교사 명단 테이블
CREATE TABLE tblStandByTeacher AS SELECT * FROM tblTeacher where tstspk = 3;
--배정과정 위임 트리거
CREATE OR REPLACE TRIGGER trgUpdateTeacher
    before update of tstspk
    ON tblTeacher
    FOR EACH ROW
DECLARE
    vtpk tblTeacher.tpk%type;
    vocpk tblOpenCourse.ocpk%type;
BEGIN
    
    --1:강의예정,2:강의중에서 4:휴직, 5:퇴사로 변경시에만 작동함
    IF :OLD.tstspk in (1,2) and :NEW.tstspk in (4,5) THEN
        
        -- 위임할 과목 번호
        select ocpk into vocpk from tblOpenCourse where tpk = :NEW.tpk;
        --상태변경하는 강사의 배정강의 번호
        select tpk into vtpk from tblStandByTeacher where rownum =1;
 
       --과목위임
        update tblOpenCourse set tpk = vtpk where ocpk = vocpk;
        delete tblStandByTeacher where tpk = vtpk;
        if :NEW.tstspk = 3 then
        
            insert into tblStandByTeacher Values (:NEW.tpk,3);
        
        ELSE
            NULL;
        END IF;
            dbms_output.put_line('정상적으로 강의를 위임했습니다.');
    END IF;

EXCEPTION
    WHEN OTHERS THEN
    dbms_output.put_line('에러 발생: ' || SQLERRM);
    raise_application_error(-20002, '교사 상태 UPDATE 오류 발생');
END;
/


--update tblTeacher set tstspk = 3 where tpk = 212;

