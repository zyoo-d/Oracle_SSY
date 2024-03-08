--DDL지유



--tblAdminStatus;		INSERT INTO tblAdminStatus (admstspk, admstatus) VALUES ((SELECT NVL(MAX(admstspk), 0) + 1 FROM tblAdminStatus), '상태');
select * from tblAdminStatus;
INSERT INTO tblAdminStatus (admstspk, admstatus) VALUES ((SELECT NVL(MAX(admstspk), 0) + 1 FROM tblAdminStatus), '재직');
INSERT INTO tblAdminStatus (admstspk, admstatus) VALUES ((SELECT NVL(MAX(admstspk), 0) + 1 FROM tblAdminStatus), '휴직');
INSERT INTO tblAdminStatus (admstspk, admstatus) VALUES ((SELECT NVL(MAX(admstspk), 0) + 1 FROM tblAdminStatus), '퇴직');

--tblAttendStatus;		INSERT INTO tblAttendStatus (attstspk, attstatus) VALUES ((SELECT NVL(MAX(attstspk), 0) + 1 FROM tblAttendStatus), '출결상태');
--결석은 다른 테이블에서 출석일자가 null인경우 반영
select * from tblAttendStatus;
INSERT INTO tblAttendStatus (attstspk, attstatus) VALUES ((SELECT NVL(MAX(attstspk), 0) + 1 FROM tblAttendStatus), '출석');
INSERT INTO tblAttendStatus (attstspk, attstatus) VALUES ((SELECT NVL(MAX(attstspk), 0) + 1 FROM tblAttendStatus), '지각');
INSERT INTO tblAttendStatus (attstspk, attstatus) VALUES ((SELECT NVL(MAX(attstspk), 0) + 1 FROM tblAttendStatus), '조퇴');
INSERT INTO tblAttendStatus (attstspk, attstatus) VALUES ((SELECT NVL(MAX(attstspk), 0) + 1 FROM tblAttendStatus), '결석');
INSERT INTO tblAttendStatus (attstspk, attstatus) VALUES ((SELECT NVL(MAX(attstspk), 0) + 1 FROM tblAttendStatus), '병결(출석인정)');
INSERT INTO tblAttendStatus (attstspk, attstatus) VALUES ((SELECT NVL(MAX(attstspk), 0) + 1 FROM tblAttendStatus), '면접(출석인정)');
INSERT INTO tblAttendStatus (attstspk, attstatus) VALUES ((SELECT NVL(MAX(attstspk), 0) + 1 FROM tblAttendStatus), '시험(출석인정)');



--tblOpenCourseStatus;		INSERT INTO tblOpenCourseStatus (ocspk, ocstatus) VALUES ((SELECT NVL(MAX(ocspk), 0) + 1 FROM tblOpenCourseStatus), '개설예정/과정진행중/과정종료');
select * from tblOpenCourseStatus;
INSERT INTO tblOpenCourseStatus (ocspk, ocstatus) VALUES ((SELECT NVL(MAX(ocspk), 0) + 1 FROM tblOpenCourseStatus), '강의예정');
INSERT INTO tblOpenCourseStatus (ocspk, ocstatus) VALUES ((SELECT NVL(MAX(ocspk), 0) + 1 FROM tblOpenCourseStatus), '과정진행중');
INSERT INTO tblOpenCourseStatus (ocspk, ocstatus) VALUES ((SELECT NVL(MAX(ocspk), 0) + 1 FROM tblOpenCourseStatus), '과정종료');


--tblStudentStatus;		INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '수강예정/수강중/중도탈락/수료/취업/다수과정수강/재취업지원신청/재취업지원완료');
select * from tblStudentStatus;
INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '수강예정');
INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '수강중');
INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '중도탈락');
INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '수료');
INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '취업');
INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '다수과정수강');
INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '재취업지원신청');
INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '재취업지원종료');

--tblTeacherStatus;		INSERT INTO tblTeacherStatus (tstspk, tstatus) VALUES ((SELECT NVL(MAX(tstspk), 0) + 1 FROM tblTeacherStatus), '강의예정(재직),강의중,대기중,휴직,퇴사');
select * from tblTeacherStatus;
INSERT INTO tblTeacherStatus (tstspk, tstatus) VALUES ((SELECT NVL(MAX(tstspk), 0) + 1 FROM tblTeacherStatus), '강의예정(재직)');
INSERT INTO tblTeacherStatus (tstspk, tstatus) VALUES ((SELECT NVL(MAX(tstspk), 0) + 1 FROM tblTeacherStatus), '강의중(재직)');
INSERT INTO tblTeacherStatus (tstspk, tstatus) VALUES ((SELECT NVL(MAX(tstspk), 0) + 1 FROM tblTeacherStatus), '대기중(재직)');
INSERT INTO tblTeacherStatus (tstspk, tstatus) VALUES ((SELECT NVL(MAX(tstspk), 0) + 1 FROM tblTeacherStatus), '휴직');
INSERT INTO tblTeacherStatus (tstspk, tstatus) VALUES ((SELECT NVL(MAX(tstspk), 0) + 1 FROM tblTeacherStatus), '퇴사');


--tblComSize;		INSERT INTO tblComSize (sizepk, comsize) VALUES ((SELECT NVL(MAX(sizepk), 0) + 1 FROM tblComSize), '기업규모');
select * from tblComSize;
INSERT INTO tblComSize (sizepk, comsize) VALUES ((SELECT NVL(MAX(sizepk), 0) + 1 FROM tblComSize), '대기업');
INSERT INTO tblComSize (sizepk, comsize) VALUES ((SELECT NVL(MAX(sizepk), 0) + 1 FROM tblComSize), '중견기업');
INSERT INTO tblComSize (sizepk, comsize) VALUES ((SELECT NVL(MAX(sizepk), 0) + 1 FROM tblComSize), '강소기업');
INSERT INTO tblComSize (sizepk, comsize) VALUES ((SELECT NVL(MAX(sizepk), 0) + 1 FROM tblComSize), '중소기업');
INSERT INTO tblComSize (sizepk, comsize) VALUES ((SELECT NVL(MAX(sizepk), 0) + 1 FROM tblComSize), '스타트업');
INSERT INTO tblComSize (sizepk, comsize) VALUES ((SELECT NVL(MAX(sizepk), 0) + 1 FROM tblComSize), '공공기관');
INSERT INTO tblComSize (sizepk, comsize) VALUES ((SELECT NVL(MAX(sizepk), 0) + 1 FROM tblComSize), '공공협회');



--tblComCategory;		INSERT INTO tblComCategory (catepk, category) VALUES ((SELECT NVL(MAX(catepk), 0) + 1 FROM tblComCategory), '기업분야');
select * from tblComCategory;
INSERT INTO tblComCategory (catepk, category) VALUES ((SELECT NVL(MAX(catepk), 0) + 1 FROM tblComCategory), '서비스업');
INSERT INTO tblComCategory (catepk, category) VALUES ((SELECT NVL(MAX(catepk), 0) + 1 FROM tblComCategory), '금융업');
INSERT INTO tblComCategory (catepk, category) VALUES ((SELECT NVL(MAX(catepk), 0) + 1 FROM tblComCategory), '정보통신업');
INSERT INTO tblComCategory (catepk, category) VALUES ((SELECT NVL(MAX(catepk), 0) + 1 FROM tblComCategory), '판매유통업');
INSERT INTO tblComCategory (catepk, category) VALUES ((SELECT NVL(MAX(catepk), 0) + 1 FROM tblComCategory), '제조업');
INSERT INTO tblComCategory (catepk, category) VALUES ((SELECT NVL(MAX(catepk), 0) + 1 FROM tblComCategory), '생산업');
INSERT INTO tblComCategory (catepk, category) VALUES ((SELECT NVL(MAX(catepk), 0) + 1 FROM tblComCategory), '화학업');
INSERT INTO tblComCategory (catepk, category) VALUES ((SELECT NVL(MAX(catepk), 0) + 1 FROM tblComCategory), '교육업');
INSERT INTO tblComCategory (catepk, category) VALUES ((SELECT NVL(MAX(catepk), 0) + 1 FROM tblComCategory), '건설업');
INSERT INTO tblComCategory (catepk, category) VALUES ((SELECT NVL(MAX(catepk), 0) + 1 FROM tblComCategory), '의료제약업');
INSERT INTO tblComCategory (catepk, category) VALUES ((SELECT NVL(MAX(catepk), 0) + 1 FROM tblComCategory), '미디어광고업');
INSERT INTO tblComCategory (catepk, category) VALUES ((SELECT NVL(MAX(catepk), 0) + 1 FROM tblComCategory), '디자인업');

--tblComIndustry;	INSERT INTO tblComIndustry (idstpk, industry) VALUES ((SELECT NVL(MAX(idstpk), 0) + 1 FROM tblComIndustry), 'SI/솔루션/서비스/컨설팅/SM/기타');
select * from tblComIndustry;
INSERT INTO tblComIndustry (idstpk, industry) VALUES ((SELECT NVL(MAX(idstpk), 0) + 1 FROM tblComIndustry), 'SI');
INSERT INTO tblComIndustry (idstpk, industry) VALUES ((SELECT NVL(MAX(idstpk), 0) + 1 FROM tblComIndustry), '솔루션');
INSERT INTO tblComIndustry (idstpk, industry) VALUES ((SELECT NVL(MAX(idstpk), 0) + 1 FROM tblComIndustry), '서비스');
INSERT INTO tblComIndustry (idstpk, industry) VALUES ((SELECT NVL(MAX(idstpk), 0) + 1 FROM tblComIndustry), '컨설팅');
INSERT INTO tblComIndustry (idstpk, industry) VALUES ((SELECT NVL(MAX(idstpk), 0) + 1 FROM tblComIndustry), 'SM');
INSERT INTO tblComIndustry (idstpk, industry) VALUES ((SELECT NVL(MAX(idstpk), 0) + 1 FROM tblComIndustry), '기타');

--tblAttendStandard		INSERT INTO tblAttendStandard (attstdpk, attstdtime) VALUES ((SELECT NVL(MAX(attstdpk), 0) + 1 FROM tblAttendStandard), to_date('09:10:00','hh24:mi:ss'));
select attstdpk, to_char(attstdtime, 'hh24:mi:ss') from tblAttendStandard;
INSERT INTO tblAttendStandard (attstdpk, attstdtime) VALUES ((SELECT NVL(MAX(attstdpk), 0) + 1 FROM tblAttendStandard), to_date('09:10:00','hh24:mi:ss'));--09:10:00까지 정상출석/09:10:01 지각
INSERT INTO tblAttendStandard (attstdpk, attstdtime) VALUES ((SELECT NVL(MAX(attstdpk), 0) + 1 FROM tblAttendStandard), to_date('14:00:00','hh24:mi:ss'));--14:00:00 이전 조퇴시 결석처리
INSERT INTO tblAttendStandard (attstdpk, attstdtime) VALUES ((SELECT NVL(MAX(attstdpk), 0) + 1 FROM tblAttendStandard), to_date('17:50:00','hh24:mi:ss'));--17:50:00이후 정상하교/17:49:59 이전 퇴실 조퇴


--tblHoliday;		INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), 'Holiday Name', TO_DATE('holidate','YYYY-MM-DD'));
select * from tblHoliday;
--2023년 휴일
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '신정', TO_DATE('20230101','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '설연휴', TO_DATE('20230121','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '설연휴', TO_DATE('20230122','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '설연휴', TO_DATE('20230123','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '설(대체)', TO_DATE('20230124','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '삼일절', TO_DATE('20230301','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '근로자의날', TO_DATE('20230501','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '어린이날', TO_DATE('20230505','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '석가탄신일', TO_DATE('20230527','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '석가탄신일(대체)', TO_DATE('20230529','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '현충일', TO_DATE('20230606','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '광복절', TO_DATE('20230815','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '추석연휴', TO_DATE('20230928','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '추석연휴', TO_DATE('20230929','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '추석연휴', TO_DATE('20230930','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '임시공휴일', TO_DATE('20231002','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '개천절', TO_DATE('20231003','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '한글날', TO_DATE('20231009','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '크리스마스', TO_DATE('20231225','YYYY-MM-DD'));
--2024년 휴일
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '신정', TO_DATE('20240101','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '설연휴', TO_DATE('20240109','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '설연휴', TO_DATE('20240110','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '설연휴', TO_DATE('20240111','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '설(대체)', TO_DATE('20240112','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '삼일절', TO_DATE('20240301','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '22대 국회의원 선거', TO_DATE('20240410','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '근로자의날', TO_DATE('20240501','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '어린이날', TO_DATE('20240505','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '어린이날(대체)', TO_DATE('20240506','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '석가탄신일', TO_DATE('20240515','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '현충일', TO_DATE('20240606','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '광복절', TO_DATE('20240815','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '추석연휴', TO_DATE('20240916','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '추석연휴', TO_DATE('20240917','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '추석연휴', TO_DATE('20240918','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '개천절', TO_DATE('20241003','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '한글날', TO_DATE('20241009','YYYY-MM-DD'));
INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), '크리스마스', TO_DATE('20241225','YYYY-MM-DD'));


--tblCompany;		INSERT INTO tblCompany (compk, comname, sizepk, catepk, idstpk, locpk) VALUES ((SELECT NVL(MAX(compk), 0) + 1 FROM tblCompany), '회사명', sizepk.fk, catepk.fk, idstpk.fk, locpk.fk);

