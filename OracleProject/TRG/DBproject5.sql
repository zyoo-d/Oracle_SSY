set serveroutput on;
SELECT TO_TIMESTAMP('09:10:59', 'HH24:MI:SS') FROM DUAL; 
SELECT TO_CHAR(09:10:59, 'HH24:MI:SS') FROM DUAL;

CREATE OR REPLACE TRIGGER trgInAtt
after
INSERT ON tblAttendance
FOR EACH ROW
DECLARE
    vattstspk number;
    vcheckin tblAttendance.checkin%type;
    vcheckout tblAttendance.checkout%type;
    vattpk number;
BEGIN
    -- 체크인 시간 가져오기
--    SELECT checkin INTO vcheckin FROM tblAttendance WHERE attpk = :new.attpk;
--    vattstspk:= 0;
--    select TO_TIMESTAMP(checkin, 'HH23:MI:SS') from tblAttendance;
--    IF TO_TIMESTAMP(vcheckin, 'HH24:MI:SS')  <= TO_TIMESTAMP('09:10:59', 'HH24:MI:SS') THEN
        IF TO_CHAR(:new.checkin,'HH24:MI:SS')  <= '09:10:59' THEN
        vattstspk := 1; 
--        old.attstspk := 1; 

        dbms_output.put_line('출석 완료');

--    ELSIF TO_TIMESTAMP(vcheckin, 'HH24:MI:SS') between TO_TIMESTAMP('09:11:00', 'HH24:MI:SS') AND TO_TIMESTAMP('13:00:00', 'HH24:MI:SS') THEN
    ELSIF TO_CHAR(:new.checkin,'HH24:MI:SS') between '09:11:00' AND '13:00:00' THEN

        dbms_output.put_line('지각');
        vattstspk := 2;
--        old.attstspk := 2; 

    ELSE
        vattstspk := 4;
--        old.attstspk := 4; 

        dbms_output.put_line('결석처리');

    END IF;
    -- 출석 상태 업데이트
     dbms_output.put_line(vattstspk);
    IF INSERTING THEN
         dbms_output.put_line(vattstspk);
    dbms_output.put_line(:NEW.attpk);
    dbms_output.put_line(:old.attpk);
        UPDATE tblAttendance SET attstspk = vattstspk WHERE attpk = :NEW.attpk;
    else
    null;
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        null;
END;
/

desc tblAttendance;
INSERT INTO tblAttendance (attpk, attenddate, checkin, stupk) VALUES ((SELECT NVL(MAX(attpk), 0) + 1 FROM tblAttendance), SYSDATE, TO_TIMESTAMP('09:10:59', 'HH24:MI:SS'),  91);
select * from tblAttendance order by attpk desc;