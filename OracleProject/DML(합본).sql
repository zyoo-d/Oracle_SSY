--tblComLocation.
select * from tblComLocation;
INSERT INTO tblComLocation (locpk, location) VALUES ((SELECT NVL(MAX(locpk), 0) + 1 FROM tblComLocation), '서울특별시');
INSERT INTO tblComLocation (locpk, location) VALUES ((SELECT NVL(MAX(locpk), 0) + 1 FROM tblComLocation), '부산광역시');
INSERT INTO tblComLocation (locpk, location) VALUES ((SELECT NVL(MAX(locpk), 0) + 1 FROM tblComLocation), '대구광역시');
INSERT INTO tblComLocation (locpk, location) VALUES ((SELECT NVL(MAX(locpk), 0) + 1 FROM tblComLocation), '인천광역시');
INSERT INTO tblComLocation (locpk, location) VALUES ((SELECT NVL(MAX(locpk), 0) + 1 FROM tblComLocation), '광주광역시');
INSERT INTO tblComLocation (locpk, location) VALUES ((SELECT NVL(MAX(locpk), 0) + 1 FROM tblComLocation), '대전광역시');
INSERT INTO tblComLocation (locpk, location) VALUES ((SELECT NVL(MAX(locpk), 0) + 1 FROM tblComLocation), '울산광역시');
INSERT INTO tblComLocation (locpk, location) VALUES ((SELECT NVL(MAX(locpk), 0) + 1 FROM tblComLocation), '세종특별자치시');
INSERT INTO tblComLocation (locpk, location) VALUES ((SELECT NVL(MAX(locpk), 0) + 1 FROM tblComLocation), '경기도');
INSERT INTO tblComLocation (locpk, location) VALUES ((SELECT NVL(MAX(locpk), 0) + 1 FROM tblComLocation), '충청북도');
INSERT INTO tblComLocation (locpk, location) VALUES ((SELECT NVL(MAX(locpk), 0) + 1 FROM tblComLocation), '충청남도');
INSERT INTO tblComLocation (locpk, location) VALUES ((SELECT NVL(MAX(locpk), 0) + 1 FROM tblComLocation), '전라남도');
INSERT INTO tblComLocation (locpk, location) VALUES ((SELECT NVL(MAX(locpk), 0) + 1 FROM tblComLocation), '경상북도');
INSERT INTO tblComLocation (locpk, location) VALUES ((SELECT NVL(MAX(locpk), 0) + 1 FROM tblComLocation), '경상남도');
INSERT INTO tblComLocation (locpk, location) VALUES ((SELECT NVL(MAX(locpk), 0) + 1 FROM tblComLocation), '제주특별자치도');
INSERT INTO tblComLocation (locpk, location) VALUES ((SELECT NVL(MAX(locpk), 0) + 1 FROM tblComLocation), '강원특별자치도');
INSERT INTO tblComLocation (locpk, location) VALUES ((SELECT NVL(MAX(locpk), 0) + 1 FROM tblComLocation), '전북특별자치도');

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

--tblSubject. INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential)     VALUES ((SELECT NVL(MAX(subpk), 0), 과목명, 과목 설명, 과목시간, 필수여부);
--select * from tblSubject;
-- 도커 (Docker)
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), '도커 (Docker)', '도커는 컨테이너화된 응용 프로그램을 개발, 배포 및 실행하기 위한 오픈 소스 플랫폼입니다.', 30, 'N');

-- 자바 (Java)
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), '자바 (Java)', '자바는 객체 지향 프로그래밍 언어로, 다양한 플랫폼에서 실행할 수 있습니다. 자바는 강력하고 유연한 언어로 널리 사용됩니다.', 130, 'Y');

-- 딥러닝 (Deep Learning)
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), '딥러닝 (Deep Learning)', '딥러닝은 인공 신경망을 사용하여 복잡한 패턴을 학습하는 기계 학습의 한 분야입니다.', 100, 'N');

-- 빅데이터 (Big Data)
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), '빅데이터 (Big Data)', '빅데이터는 대규모의 데이터 세트를 의미하며, 이러한 데이터를 분석하여 인사이트를 추출하는 기술과 방법을 의미합니다.', 100, 'N');

-- 자바스크립트 (JavaScript)
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), '자바스크립트 (JavaScript)', '자바스크립트는 웹 개발에서 가장 널리 사용되는 프로그래밍 언어 중 하나로, 동적인 웹 페이지를 만들기 위해 사용됩니다.', 80, 'Y');

-- AWS (Amazon Web Services)
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), 'AWS (Amazon Web Services)', 'Amazon Web Services(AWS)는 클라우드 컴퓨팅 플랫폼으로, 다양한 클라우드 기반 서비스를 제공합니다.', 80, 'Y');

-- 오라클 (Oracle)
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), '오라클 (Oracle)', '오라클은 관계형 데이터베이스 관리 시스템(RDBMS)의 한 종류로, 기업에서 데이터를 관리하고 처리하기 위해 사용됩니다.', 40, 'Y');

-- MYSQL
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), 'MYSQL', 'MYSQL은 오픈 소스 관계형 데이터베이스 관리 시스템(RDBMS)으로, 다양한 웹 응용 프로그램에서 사용됩니다.', 40, 'Y');

-- MongoDB
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), 'MongoDB', 'MongoDB는 NoSQL 데이터베이스로, 유연하고 확장 가능한 데이터 저장 및 관리 솔루션을 제공합니다.', 40, 'N');

-- MariaDB
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), 'MariaDB', 'MariaDB는 MySQL의 포크로 시작된 오픈 소스 관계형 데이터베이스 관리 시스템(RDBMS)입니다.', 40, 'N');

-- 파이썬 (Python)
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), '파이썬 (Python)', '파이썬은 간결하고 읽기 쉬운 문법으로 인기 있는 프로그래밍 언어 중 하나입니다.', 130, 'Y');

-- C++
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), 'C++', 'C++는 C 언어를 기반으로 한 객체 지향 프로그래밍 언어로, 시스템 프로그래밍 및 게임 개발에 널리 사용됩니다.', 130, 'N');

-- Kotlin
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), 'Kotlin', 'Kotlin은 자바 가상 머신(Java Virtual Machine, JVM)에서 실행되는 정적 타입 지정 언어로, 안드로이드 앱 개발에 사용됩니다.', 90, 'N');

-- PHP
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), 'PHP', 'PHP는 서버 측 웹 개발에 사용되는 인기 있는 프로그래밍 언어 중 하나입니다.', 80, 'N');

-- C#
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), 'C#', 'C#은 Microsoft에서 개발한 객체 지향 프로그래밍 언어로, .NET 프레임워크에서 주로 사용됩니다.', 120, 'N');

-- 운영체제 (Operating System)
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), '운영체제 (Operating System)', '운영체제는 컴퓨터 하드웨어와 응용 프로그램 간의 인터페이스를 제공하는 소프트웨어입니다.', 100, 'Y');

-- 자료구조와 알고리즘 (Data Structures and Algorithms)
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), '자료구조와 알고리즘', '자료구조와 알고리즘은 컴퓨터 과학에서 중요한 개념으로, 데이터 조직화 및 처리에 관한 것입니다.', 100, 'Y');

-- Node.js
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), 'Node.js', 'Node.js는 서버 측 JavaScript 실행 환경으로, 빠르고 확장 가능한 네트워크 응용 프로그램을 구축하는 데 사용됩니다.', 90, 'Y');

-- Django
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), 'Django', 'Django는 파이썬으로 작성된 무료 오픈 소스 웹 애플리케이션 프레임워크입니다.', 90, 'N');

-- 오픈소스 (Open Source)
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), '오픈소스', '오픈소스 소프트웨어는 라이선스에 따라 소스 코드를 무료로 사용, 수정, 및 배포할 수 있는 소프트웨어입니다.', 50, 'N');

-- JSP (JavaServer Pages)
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), 'JSP (JavaServer Pages)', 'JSP는 자바 웹 애플리케이션 개발을 위한 서버측 스크립트 언어입니다. 동적 웹 페이지를 만드는 데 사용됩니다.', 50, 'N');

-- 스프링 (Spring Framework)
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), '스프링 (Spring Framework)', '스프링 프레임워크는 자바 엔터프라이즈 애플리케이션을 개발하기 위한 애플리케이션 프레임워크입니다. 의존성 주입, 관점 지향 프로그래밍 등을 지원합니다.', 80, 'Y');

-- 젠킨스 (Jenkins)
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), '젠킨스 (Jenkins)', '젠킨스는 지속적 통합 및 지속적 배포를 자동화하는 오픈 소스 자동화 도구입니다. 소프트웨어 개발 프로세스를 자동화하여 품질을 향상시킵니다.', 40, 'N');

-- 깃 (Git)
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), '깃 (Git)', '깃은 분산 버전 관리 시스템으로, 소스 코드를 효과적으로 관리하고 협업하는 데 사용됩니다.', 40, 'Y');

-- R
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), 'R', 'R은 통계 및 데이터 분석을 위한 프로그래밍 언어 및 소프트웨어 환경입니다. 데이터 시각화, 통계 분석, 머신 러닝 등에 사용됩니다.', 70, 'N');

-- 스위프트 (Swift)
INSERT INTO tblSubject (subpk, subname, subdetail, subhour, essential) 
    VALUES ((SELECT NVL(MAX(subpk), 0) + 1 FROM tblSubject), '스위프트 (Swift)', '스위프트는 애플이 개발한 다목적 프로그래밍 언어로, iOS 및 macOS 앱을 개발하기 위해 사용됩니다. 안전하고 빠른 코드를 작성할 수 있도록 설계되었습니다.', 50, 'N');


