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
        IF :new.checkin  <= TO_TIMESTAMP('09:10:59', 'HH24:MI:SS') THEN

        vattstspk := 1; 
        dbms_output.put_line(vattstspk);
        update tblAttendance set attstspk = vattstspk where attpk = :NEW.ATTPK;
--        old.attstspk := 1; 

        dbms_output.put_line('출석 완료');

--    ELSIF TO_TIMESTAMP(vcheckin, 'HH24:MI:SS') between TO_TIMESTAMP('09:11:00', 'HH24:MI:SS') AND TO_TIMESTAMP('13:00:00', 'HH24:MI:SS') THEN
    ELSIF :new.checkin between TO_TIMESTAMP('09:11:00', 'HH24:MI:SS') AND TO_TIMESTAMP('13:00:00', 'HH24:MI:SS') THEN

        dbms_output.put_line('지각');
        vattstspk := 2;
--        old.attstspk := 2; 
        update tblAttendance set attstspk = vattstspk where attpk = :new.attpk;

    ELSE
        vattstspk := 4;
--        old.attstspk := 4; 

        dbms_output.put_line('결석처리');
    update tblAttendance set attstspk = vattstspk where attpk = :new.attpk;
    END IF;
    -- 출석 상태 업데이트
EXCEPTION
    WHEN OTHERS THEN
        null;
END;
/

INSERT INTO tblAttendance (attpk, attenddate, checkin, checkout, attstspk, stupk) VALUES ((SELECT NVL(MAX(attpk), 0) + 1 FROM tblAttendance), TO_DATE('2024-03-07', 'YYYY-MM-DD'), TO_TIMESTAMP('2024-03-07 08:17:29', 'YYYY-MM-DD HH24:MI:SS'),'', '', 92);

select * from tblAttendance order by attenddate desc;