select * from tblrecruit;
drop TRIGGER recruit_to_max;


CREATE OR REPLACE TRIGGER recruit_to_user
after update ON tblRecruit
FOR EACH ROW
DECLARE
    v_userpk tblUser.userpk%TYPE;
    v_existing_user NUMBER;
BEGIN
    -- result가 'P'로 변경되었을 때만 작동
    IF :NEW.result = 'P' THEN
        -- 이미 존재하는지 확인
        SELECT COUNT(*)
        INTO v_existing_user
        FROM tblUser
        WHERE ssn = :NEW.ssn;

        -- 이미 사용자가 있는 경우 중복 방지
        IF v_existing_user = 0 THEN
            -- tblUser에 삽입
            INSERT INTO tblUser (userpk, role, name, ssn, tel, id, pw, regdate)
            VALUES (
                (SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser),
                '학생', -- 역할
                :NEW.recname, -- 이름
                :NEW.ssn, -- 주민등록번호
                :NEW.rectel, -- 전화번호
                DBMS_RANDOM.STRING('A', 8),
                SUBSTR(:NEW.ssn, 8, 15), -- 임시 PW (주민등록번호 뒷자리)
                SYSDATE -- 등록일자
            )
            RETURNING userpk INTO v_userpk; -- 삽입된 사용자의 기본키를 저장

            -- tblStudent에 삽입
            INSERT INTO tblStudent (stupk, grade, attrate, stustspk)
            VALUES (
                v_userpk, 
                NULL,
                NULL,
                1
            );

            -- tblCourseParticipants에 삽입 (예시 데이터)
            INSERT INTO tblCourseParticipants (stupk, ocpk)
            VALUES (v_userpk, :NEW.ocpk);
            
            ELSIF v_existing_user = 1 THEN
                SELECT userpk INTO v_userpk FROM tblUser where ssn = :New.ssn;
                INSERT INTO tblCourseParticipants (stupk, ocpk)
                                VALUES (v_userpk, :NEW.ocpk);
                UPDATE tblStudent set stustspk = 6 where stupk = v_userpk;
    END IF;
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        NULL; -- 오류 발생 시 아무 작업도 수행하지 않음
END;
/

CREATE OR REPLACE PROCEDURE procChangeCheckOut
IS
    v_attpk tblAttendance.attpk%TYPE;
    v_checkin TIMESTAMP; 
BEGIN
    
    -- 아직 체크아웃이 되지 않은 레코드를 가져옵니다.
    FOR rec IN (SELECT attpk FROM tblAttendance WHERE checkout IS NULL AND attenddate <> TRUNC(SYSDATE)) LOOP

        v_attpk := rec.attpk; -- attpk 값을 가져옵니다.

        -- 체크아웃 시간 업데이트
        UPDATE tblAttendance 
        SET attstspk = 4
        WHERE attpk = v_attpk;
        
    END LOOP;

    dbms_output.put_line('업데이트되었습니다.');
EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line('에러 발생: ' || SQLERRM);
END;
/
set SERVEROUTPUT on;
commit;
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백진수', '900928-1117657', '01003297551','F', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '이성지', '970111-1676112', '01068601270', default, 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '김승원', '990406-1618963', '01081591180', default, 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '정영석', '910923-2235719', '01012424387', default, 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '박민성', '910716-1011236', '01041653869', default, 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백진현', '990107-1919550', '01059326405', default, 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '송진영', '971202-2141824', '01060767821', default, 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '한은숙', '910220-2855513', '01026048658', default, 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '윤승수', '930830-2245369', '01021325898', 'F', 10);

update tblRecruit set result = 'P' where recpk = 238;
update tblRecruit set result = 'P' where recpk = 239;
update tblRecruit set result = 'P' where recpk = 240;
update tblRecruit set result = 'P' where recpk = 241;
update tblRecruit set result = 'P' where recpk = 242;
update tblRecruit set result = 'P' where recpk = 243;
update tblRecruit set result = 'P' where recpk = 244;
update tblRecruit set result = 'P' where recpk = 245;
update tblRecruit set result = 'P' where recpk = 246;
rollback;

delete tblRecruit where recpk = 238;
delete tblRecruit where recpk = 239;
delete tblRecruit where recpk = 240;
delete tblRecruit where recpk = 241;
delete tblRecruit where recpk = 242;
delete tblRecruit where recpk = 243;
delete tblRecruit where recpk = 244;
delete tblRecruit where recpk = 245;
delete tblRecruit where recpk = 246;

select * from tblcourseparticipants where ocpk = 10;
select * from tblOpenCourse;
select * from vwcourse;
ROLLBACK;
select * from tblRecruit;
