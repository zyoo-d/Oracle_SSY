--합격자정원 체크 트리거

CREATE OR REPLACE TRIGGER trgCheckMaxRec
BEFORE INSERT
ON tblCourseParticipants
FOR EACH ROW
DECLARE
    v_pass_cnt NUMBER;
    v_cr_capacity NUMBER;
    v_rec NUMBER;
BEGIN

    SELECT COUNT(*) into v_pass_cnt from tblRecruit where ocpk = :NEW.OCPK and result = 'P';
    SELECT crcapacity into v_cr_capacity From tblClassRoom cr 
                    right outer join tblOpenCourse oc on oc.crpk = cr.crpk where oc.ocpk = :NEW.OCPK;
    IF v_pass_cnt > v_cr_capacity then
        select Max(recpk) into v_rec from tblRecruit where ocpk = :NEW.OCPK;
        update tblRecruit set result ='미정' where ocpk = :NEW.OCPK and recpk = v_rec;
        dbms_output.put_line('합격자는 강의실의 정원을 초과할 수 없습니다.');
        dbms_output.put_line(v_rec ||'님의 합격 합격 상태를 ''미정''로 변경합니다.');
    ELSE
        NULL;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line('에러 발생: ' || SQLERRM);
END trgCheckMaxRec;
/