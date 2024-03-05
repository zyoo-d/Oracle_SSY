--상태정보 테이블

--tblComSize.기업규모
--drop table tblComSize;

create table tblComSize (
 	sizepk number primary key,
 	comsize varchar2(20) NOT NULL
);
--CREATE sequence seqComSize;

--tblComCategory.기업분류
--drop table tblComCategory;

create table tblComCategory (
 	catepk number primary key,
 	category varchar2(30) NOT NULL
);
--CREATE sequence seqComCategory;

--tblComIndustry.기업산업
--drop table tblComIndustry;

create table tblComIndustry (
    idstpk number primary key,
 	industry varchar2(30) NOT NULL
);
--CREATE sequence seqComIndustry;

--tblComLocation.기업소재지
--drop table tblComLocation;

create table tblComLocation (
 	locpk number primary key,
 	location varchar2(30) NOT NULL
);
--CREATE sequence seqComLocation;

--tblAdminStatus.관리자 재직 상태
--drop table tblAdminStatus;

create table tblAdminStatus (
 	admstspk number primary key,
 	admstatus varchar2(6) NOT NULL --재직(1)/휴직(2)/퇴사(3)
);
--CREATE sequence seqAdminStatus;

--tblTeacherStatus.교사의 재직상태 및 강의상태
--drop table tblTeacherStatus;

create table tblTeacherStatus (
	tstspk number primary key,
	tstatus varchar2(30) NOT NULL --강의예정,강의중,대기중,휴직,퇴사
);

--CREATE sequence seqTeacherStatus;

--tblStudentStatus.학생상태
--drop table tblStudentStatus;

create table tblStudentStatus (
 	stustspk number primary key,
 	stustatus varchar2(30) NOT NULL --수강예정/수강중/중도탈락/수료/취업/재수강/재취업지원/재취업지원완료
);
--CREATE sequence seqStudentStatus;
--tblOpenCourseStatus.개설과정상태
--drop table tblOpenCourseStatus;

create table tblOpenCourseStatus (
	ocspk number primary key,
	ocstatus varchar2(15) NOT NULL --개설예정/과정진행중/과정종료
);
--CREATE sequence seqOpenCourseStatus;

--tblHoliday.공휴일정보
--drop table tblHoliday;

create table tblHoliday (
	holpk number primary key,
 	holiday varchar2(50) NOT NULL,
 	holidate date NOT NULL
);
--CREATE sequence seqHoliday;

--tblAttendStandard.출석 상태별 기준 시간
--drop table tblAttendStandard;

create table tblAttendStandard (
 	attstdpk number primary key,
 	attstdtime date NOT NULL
);
--CREATE sequence seqAttendStandard;
--tblAttendStatus.출석상태
--drop table tblAttendStatus;

create table tblAttendStatus (
	attstspk number primary key,
	attstatus varchar2(30) NOT NULL
);
--CREATE sequence seqAttendStatus;

--사용자정보


--tblUser. 유저기본정보
--drop table tblUser;

create table tblUser (
	userpk number primary key,
	role varchar2(10) NOT NULL,
	name varchar2(10) NOT NULL,
	bdate date NOT NULL,
	tel number NOT NULL,
	id varchar2(50) NOT NULL unique,
	pw varchar2(100) NOT NULL, --최초등록시 pw는 주민번호 뒷자리
	regdate date default sysdate
);
ALTER TABLE tblUser ADD CONSTRAINT role_check CHECK (role IN ('관리자','교사','학생'));
--CREATE sequence seqUser;

--tblAdmin.관리자
--drop table tblAdmin;

create table tblAdmin (
 	admpk number primary key,
 	admstspk number default 1 --재직
);

ALTER table tblAdmin ADD CONSTRAINT FK_tblUser_TO_tblAdmin FOREIGN KEY (admpk)
REFERENCES tblUser (userpk);

ALTER table tblAdmin ADD CONSTRAINT FK_tblAdminStatus_TO_tblAdmin FOREIGN KEY (admstspk)
REFERENCES tblAdminStatus (admstspk);
--CREATE sequence seqAdmin;

--tblTeacher. 강사정보
--drop table tblTeacher;

create table tblTeacher (
	tpk number primary key,
	tstspk number NOT NULL
);
ALTER table tblTeacher ADD CONSTRAINT FK_tblUser_TO_tblTeacher FOREIGN KEY (tpk)
REFERENCES tblUser (userpk);

ALTER table tblTeacher ADD CONSTRAINT FK_tblTeacherStatus_TO_tblTeacher FOREIGN KEY (tstspk)
REFERENCES tblTeacherStatus (tstspk);

--CREATE sequence seqTeacher;

--tblStudent.학생정보
--drop table tblStudent;

create table tblStudent (
	stupk number primary key,
	grade number NULL, --총점만 성적테이블에서 함수로반환
	attrate number NULL,
	stustspk number NOT NULL
);
ALTER table tblStudent ADD CONSTRAINT FK_tblUser_TO_tblStudent FOREIGN KEY (stupk)
REFERENCES tblUser (userpk);

ALTER table tblStudent ADD CONSTRAINT FK_tblStudentStatus_TO_tblStudent FOREIGN KEY (stustspk)
REFERENCES tblStudentStatus (stustspk);

--CREATE sequence seqStudent;

--tblSubject.과목정보
--drop table tblSubject;

create table tblSubject (
 	subpk number primary key,
 	subname varchar2(50) NOT NULL unique,
 	subdetail varchar2(1000) NOT NULL,
 	subhour number NOT NULL,
 	essential varchar2(1) NOT NULL
);
ALTER TABLE tblSubject ADD CONSTRAINT essential_check CHECK (essential IN ('Y', 'N'));
--CREATE sequence seqSubject;
--comment ON COLUMN tblSubject.subdetail IS '한 줄로 간단하게 요약하여 작성';
--comment ON COLUMN tblSubject.subhour IS '120시간 > 120으로 입력';

--tblPosSub.강의과목-강사정보
--drop table tblPosSub;

create table tblPosSub (
	pspk number primary key,
	subpk number NOT NULL,
	tpk number NOT NULL
);
ALTER table tblPosSub ADD CONSTRAINT FK_tblSubject_TO_tblPosSub FOREIGN KEY (subpk)
REFERENCES tblSubject (subpk);

ALTER table tblPosSub ADD CONSTRAINT FK_tblTeacher_TO_tblPosSub FOREIGN KEY (tpk)
REFERENCES tblTeacher (tpk);

--CREATE sequence seqPosSub;


--tblTextbook.
--drop table tblTextbook;

create table tblTextbook (
	bookpk number primary key,
	tbname varchar2(100) NOT NULL,
	writer varchar2(10) NOT NULL,
	publisher varchar2(100) NOT NULL
);
--CREATE sequence seqTextbook;


--tblSubjectTextbook.과목별교재
--drop table tblSubjectTextbook;

create table tblSubjectTextbook (
 	subookpk number primary key,
 	subpk number NOT NULL,
 	bookpk number NOT NULL
);
ALTER table tblSubjectTextbook ADD CONSTRAINT FK_tblSubject_TO_tblSubjectTextbook FOREIGN KEY (subpk)
REFERENCES tblSubject (subpk);

ALTER table tblSubjectTextbook ADD CONSTRAINT FK_tblTextbook_TO_tblSubjectTextbook FOREIGN KEY (bookpk)
REFERENCES tblTextbook (bookpk);
--CREATE sequence seqSubjectTextbook;

--tblClassroom.강의실 정보
--drop table tblClassroom;

create table tblClassroom (
	crpk number primary key,
	crname number NOT NULL,
	crcapacity number NOT NULL,
	crpossible varchar(1) NOT NULL
);

ALTER TABLE tblClassroom ADD CONSTRAINT crpossible_check CHECK (crpossible IN ('Y', 'N'));
--CREATE sequence seqClassroom;

--tblCourse.과정정보
--drop table tblCourse;

create table tblCourse (
	crspk number primary key,
	crsname varchar2(100) NOT NULL,
	crsduration number NOT NULL --훈련일수(ex.180일)
);
--CREATE sequence seqCourse;

--tblOnGoingSubject.과정별(개설)과목
--drop table tblOnGoingSubject;

create table tblOnGoingSubject (
	ogsubpk number primary key,
	crspk number NOT NULL,
	subpk number NOT NULL
);

ALTER table tblOnGoingSubject ADD CONSTRAINT FK_tblCourse_TO_tblOnGoingSubject FOREIGN KEY (crspk)
REFERENCES tblCourse (crspk);

ALTER table tblOnGoingSubject ADD CONSTRAINT FK_tblSubject_TO_tblOnGoingSubject FOREIGN KEY (subpk)
REFERENCES tblSubject (subpk);

--CREATE sequence seqOnGoingSubject;



--tblOpenCourse.개설된 과정의 정보
--drop table tblOpenCourse;

create table tblOpenCourse (
	ocpk number primary key,
	ocname varchar2(100) NOT NULL, --ex. 과정이름 || (A)
	regdate date NOT NULL,
	field number NOT NULL, --인원: 지원자 중 합격자수
	cospk number NOT NULL,
	crpk number NOT NULL,
	tpk number NOT NULL,
	ocspk number default 1
);
ALTER table tblOpenCourse ADD CONSTRAINT FK_tblCourse_TO_tblOpenCourse FOREIGN KEY (cospk)
REFERENCES tblCourse (crspk);

ALTER table tblOpenCourse ADD CONSTRAINT FK_tblClassroom_TO_tblOpenCourse FOREIGN KEY (crpk)
REFERENCES tblClassroom (crpk);

ALTER table tblOpenCourse ADD CONSTRAINT FK_tblTeacher_TO_tblOpenCourse FOREIGN KEY (tpk)
REFERENCES tblTeacher (tpk);

ALTER table tblOpenCourse ADD CONSTRAINT FK_tblOpenCourseStatus_TO_tblOpenCourse FOREIGN KEY (ocspk)
REFERENCES tblOpenCourseStatus (ocspk);

--comment ON COLUMN tblOpenCourse.tpk IS '강의과목의강사';
--comment ON COLUMN tblOpenCourse.ocspk IS 'default:개설예정(1)';

--CREATE sequence seqOpenCourse;

--tblRecruit.지원자정보
--drop table tblRecruit;

create table tblRecruit (
 	recpk number primary key,
 	recname varchar2(20) NOT NULL,
 	ssn varchar2(100) NOT NULL,
 	rectel varchar2(50) NOT NULL,
 	result varchar2(1) NULL, --check(P/F) 대기:null
 	ocpk number NOT NULL
);
ALTER TABLE tblRecruit ADD CONSTRAINT result_check CHECK (result IN ('P', 'F')); 
ALTER table tblRecruit ADD CONSTRAINT FK_tblOpenCourse_TO_tblRecruit FOREIGN KEY (ocpk)
REFERENCES tblOpenCourse (ocpk);
--CREATE sequence seqRecruit;

--tblCourseParticipants.과정 참여자 정보
--drop table tblCourseParticipants;

create table tblCourseParticipants (
 	cptpk number primary key,
 	stupk number NOT NULL,
 	ocpk number NOT NULL
);

ALTER table tblCourseParticipants ADD CONSTRAINT FK_tblStudent_TO_tblCourseParticipants FOREIGN KEY (stupk)
REFERENCES tblStudent (stupk);

ALTER table tblCourseParticipants ADD CONSTRAINT FK_tblOpenCourse_TO_tblCourseParticipants FOREIGN KEY (ocpk)
REFERENCES tblOpenCourse (ocpk);

--CREATE sequence seqCourseParticipants;

--과정&&강사&&학생
--tblExamInfo.시험정보
--drop table tblExamInfo;

create table tblExamInfo (
	exinfopk number primary key,
	examdate date NOT NULL,
	examtype varchar2(10) NOT NULL,
	wt number NOT NULL,
	subpk number NOT NULL,
	ocpk number NOT NULL
);

ALTER table tblExamInfo ADD CONSTRAINT FK_tblSubject_TO_tblExamInfo FOREIGN KEY (subpk)
REFERENCES tblSubject (subpk);
ALTER table tblExamInfo ADD CONSTRAINT FK_tblOpenCourse_TO_tblExamInfo FOREIGN KEY (ocpk)
REFERENCES tblOpenCourse (ocpk);

--CREATE sequence seqExamInfo;

--tblExam. 시험문제
--drop table tblExam;

create table tblExam (
	expk number primary key,
	exam varchar2(1000) NOT NULL,
 	exinfopk number NOT NULL
);
ALTER table tblExam ADD CONSTRAINT FK_tblExamInfo_TO_tblExam FOREIGN KEY (exinfopk)
REFERENCES tblExamInfo (exinfopk);

--CREATE sequence seqExam;

--tblExamDone.학생시험답안정보
--drop table tblExamDone;

create table tblExamDone (
 	edpk number primary key,
 	exanswer varchar2(4000) NOT NULL,
 	cptpk number NOT NULL, --tblCourseParticipants과정참여자순서
	expk number NOT NULL
);
ALTER table tblExamDone ADD CONSTRAINT FK_tblCourseParticipants_TO_tblExamDone FOREIGN KEY (cptpk)
REFERENCES tblCourseParticipants (cptpk);

ALTER table tblExamDone ADD CONSTRAINT FK_tblExam_TO_tblExamDone FOREIGN KEY (expk)
REFERENCES tblExam (expk);

--CREATE sequence seqExamDone;

--tblGrade.시험별 학생 점수
--drop table tblGrade;

create table tblGrade (
 	gradepk number primary key,
 	score number NOT NULL,
 	stuseq number NOT NULL,
 	edpk number NOT NULL
);
ALTER table tblGrade ADD CONSTRAINT FK_tblStudent_TO_tblGrade FOREIGN KEY (stuseq)
REFERENCES tblStudent (stupk);

ALTER table tblGrade ADD CONSTRAINT FK_tblExamDone_TO_tblGrade FOREIGN KEY (edpk)
REFERENCES tblExamDone (edpk);
--CREATE sequence seqGrade;

--tblTask.과제정보
--drop table tblTask;

create table tblTask (
 	taskpk number primary key,
 	task varchar2(1000) NOT NULL,
 	taskanswer varchar2(1000) NOT NULL,
 	tpk number NOT NULL
);
ALTER table tblTask ADD CONSTRAINT FK_tblTeacher_TO_tblTask FOREIGN KEY (tpk)
REFERENCES tblTeacher (tpk);

--CREATE sequence seqTask;

--tblTaskSubmit.과제제출정보
--drop table tblTaskSubmit;

create table tblTaskSubmit (
 	tspk number primary key,
	tsanswer varchar2(1000) NOT NULL,
	correct varchar2(1) NULL,
	taskpk number NOT NULL,
	cptpk number NOT NULL
);
ALTER TABLE tblTaskSubmit ADD CONSTRAINT correct_check CHECK (correct IN ('Y', 'N'));
ALTER table tblTaskSubmit ADD CONSTRAINT FK_tblTask_TO_tblTaskSubmit FOREIGN KEY (taskpk)
REFERENCES tblTask (taskpk);

ALTER table tblTaskSubmit ADD CONSTRAINT FK_tblCourseParticipants_TO_tblTaskSubmit FOREIGN KEY (cptpk)
REFERENCES tblCourseParticipants (cptpk);

--CREATE sequence seqTaskSubmit;

--추가기능
--tblData.자료실(교사업로드)
--drop table tblData;

create table tblData (
	datapk number primary key,
	datatitle varchar2(50) NOT NULL,
	datadetail varchar2(2000) NOT NULL,
	regdate date NOT NULL,
	tpk number NOT NULL
);

ALTER table tblData ADD CONSTRAINT FK_tblTeacher_TO_tblData FOREIGN KEY (tpk)
REFERENCES tblTeacher (tpk);

--CREATE sequence seqData;

--tblBoard. 게시판
--drop table tblBoard;

create table tblBoard (
	boardpk number primary key,
	boardtype varchar2(10) NOT NULL,
	regdate date NOT NULL,
	boardtitle varchar2(100) NOT NULL,
	boardpost varchar2(2000) NOT NULL,
	userpk number NOT NULL
);

ALTER table tblBoard ADD CONSTRAINT FK_tblUser_TO_tblBoard FOREIGN KEY (userpk)
REFERENCES tblUser (userpk);
ALTER TABLE tblBoard ADD CONSTRAINT boardtype_check CHECK (boardtype IN ('자유게시판', '질문게시판'));

--CREATE sequence seqBoard;

--tblComment.게시글에 대한 댓글
--drop table tblComment;

create table tblComment (
	cmmpk number primary key,
	cmmpost varchar2(1000) NOT NULL,
	userpk number NOT NULL,
	boardpk number NOT NULL
);
ALTER table tblComment ADD CONSTRAINT FK_tblUser_TO_tblComment FOREIGN KEY (userpk)
REFERENCES tblUser (userpk);

ALTER table tblComment ADD CONSTRAINT FK_tblBoard_TO_tblComment FOREIGN KEY (boardpk)
REFERENCES tblBoard (boardpk);

--CREATE sequence seqComment;

--tblConsulting.학생상담정보
--drop table tblConsulting;

create table tblConsulting (
 	cltpk number primary key,
 	cltdate date NOT NULL,
 	cltdiary varchar2(1000) NULL,
 	tpk number NOT NULL,
 	stupk number NOT NULL
);
ALTER table tblConsulting ADD CONSTRAINT FK_tblTeacher_TO_tblConsulting FOREIGN KEY (tpk)
REFERENCES tblTeacher (tpk);

ALTER table tblConsulting ADD CONSTRAINT FK_tblStudent_TO_tblConsulting FOREIGN KEY (stupk)
REFERENCES tblStudent (stupk);

--CREATE sequence seqConsulting;

--tblAttendance.출석정보
--drop table tblAttendance;

create table tblAttendance (
	attpk number primary key,
	attenddate date NOT NULL,
	checkin timestamp NULL,
	checkout timestamp NULL,
	attstspk number NOT NULL,
	stupk number NOT NULL
);
ALTER table tblAttendance ADD CONSTRAINT FK_tblAttendStatus_TO_tblAttendance FOREIGN KEY (attstspk)
REFERENCES tblAttendStatus (attstspk);

ALTER table tblAttendance ADD CONSTRAINT FK_tblStudent_TO_tblAttendance FOREIGN KEY (stupk)
REFERENCES tblStudent (stupk);

--CREATE sequence seqAttendance;

--tblCompany. 기업정보
--drop table tblCompany;

create table tblCompany (
	compk number primary key,
	comname varchar2(100) NOT NULL,
	sizepk number NOT NULL,
	catepk number NOT NULL,
    idstpk number NOT NULL,
	locpk number NOT NULL
);

ALTER table tblCompany ADD CONSTRAINT FK_tblComSize_TO_tblCompany FOREIGN KEY (sizepk)
REFERENCES tblComSize (sizepk);

ALTER table tblCompany ADD CONSTRAINT FK_tblComCategory_TO_tblCompany FOREIGN KEY (catepk)
REFERENCES tblComCategory (catepk);
ALTER table tblCompany ADD CONSTRAINT FK_tblComIndustry_TO_tblCompany FOREIGN KEY (idstpk)
REFERENCES tblComIndustry (idstpk);
ALTER table tblCompany ADD CONSTRAINT FK_tblComLocation_TO_tblCompany FOREIGN KEY (locpk)
REFERENCES tblComLocation (locpk);

--CREATE sequence seqCompany;

--tblItrsCompany.학생별관심기업
--drop table tblItrsCompany;


create table tblItrsCompany ( --복합키compk+stupk
 	compk number references tblCompany(compk),
 	stupk number references tblStudent(stupk),

	CONSTRAINT tblItrsCompany_PK PRIMARY KEY (compk, stupk)
);

--CREATE sequence seqItrsCompany;

--취업후
--tblEmployedStd.취업한학생
--drop table tblEmployedStd;

create table tblEmployedStd (
	stupk number primary key ,
	regdate date NOT NULL,
	comname varchar2(50) NOT NULL,
	insurance varchar2(1) NULL
);
ALTER table tblEmployedStd ADD CONSTRAINT FK_tblStudent_TO_tblEmployedStd FOREIGN KEY (stupk)
REFERENCES tblStudent (stupk);
ALTER TABLE tblEmployedStd ADD CONSTRAINT insurance_check CHECK (insurance IN ('Y', 'N'));

--CREATE sequence seqEmployedStd;

--tblReSupport.재취업지원
--drop table tblReSupport;

create table tblReSupport (
 	stupk number primary key,
 	regdate date NOT NULL,
 	extperiod number default 0, -- 0일 or 90일
 	enddate date NOT NULL,
 	memo varchar2(200) NULL
);
ALTER table tblReSupport ADD CONSTRAINT FK_tblEmployedStd_TO_tblReSupport FOREIGN KEY (stupk)
REFERENCES tblEmployedStd (stupk);

--CREATE sequence seqReSupport;


----------------------------------
----DROP sequence
--DROP sequence seqComIndustry;
--DROP sequence seqAdmin;
--DROP sequence seqAdminStatus;
--DROP sequence seqAttendance;
--DROP sequence seqAttendStatus;
--DROP sequence seqAttendStandard;
--DROP sequence seqBoard;
--DROP sequence seqClassroom;
--DROP sequence seqComCategory;
--DROP sequence seqComLocation;
--DROP sequence seqComment;
--DROP sequence seqCompany;
--DROP sequence seqComSize;
--DROP sequence seqConsulting;
--DROP sequence seqCourse;
--DROP sequence seqCourseParticipants;
--DROP sequence seqData;
--DROP sequence seqEmployedStd;
--DROP sequence seqExam;
--DROP sequence seqExamDone;
--DROP sequence seqExamInfo;
--DROP sequence seqGrade;
--DROP sequence seqHoliday;
--DROP sequence seqItrsCompany;
--DROP sequence seqOnGoingSubject;
--DROP sequence seqOpenCourse;
--DROP sequence seqOpenCourseStatus;
--DROP sequence seqPosSub;
--DROP sequence seqRecruit;
--DROP sequence seqReSupport;
--DROP sequence seqStudent;
--DROP sequence seqStudentStatus;
--DROP sequence seqSubject;
--DROP sequence seqSubjectTextbook;
--DROP sequence seqTask;
--DROP sequence seqTaskSubmit;
--DROP sequence seqTeacher;
--DROP sequence seqTeacherStatus;
--DROP sequence seqTextbook;
--DROP sequence seqUser;
--
----SELECT 'DROP TABLE "' || TABLE_NAME || '" CASCADE CONSTRAINTS;' FROM user_tables;
--
--DROP TABLE "TBLCOMSIZE" CASCADE CONSTRAINTS;
--DROP TABLE "TBLCOMCATEGORY" CASCADE CONSTRAINTS;
--DROP TABLE "TBLCOMINDUSTRY" CASCADE CONSTRAINTS;
--DROP TABLE "TBLCOMLOCATION" CASCADE CONSTRAINTS;
--DROP TABLE "TBLADMINSTATUS" CASCADE CONSTRAINTS;
--DROP TABLE "TBLTEACHERSTATUS" CASCADE CONSTRAINTS;
--DROP TABLE "TBLSTUDENTSTATUS" CASCADE CONSTRAINTS;
--DROP TABLE "TBLOPENCOURSESTATUS" CASCADE CONSTRAINTS;
--DROP TABLE "TBLATTENDSTATUS" CASCADE CONSTRAINTS;
--DROP TABLE "TBLUSER" CASCADE CONSTRAINTS;
--DROP TABLE "TBLTEACHER" CASCADE CONSTRAINTS;
--DROP TABLE "TBLSTUDENT" CASCADE CONSTRAINTS;
--DROP TABLE "TBLSUBJECT" CASCADE CONSTRAINTS;
--DROP TABLE "TBLCLASSROOM" CASCADE CONSTRAINTS;
--DROP TABLE "TBLCOURSE" CASCADE CONSTRAINTS;
--DROP TABLE "TBLOPENCOURSE" CASCADE CONSTRAINTS;
--DROP TABLE "TBLCOURSEPARTICIPANTS" CASCADE CONSTRAINTS;
--DROP TABLE "TBLEXAMDONE" CASCADE CONSTRAINTS;
--DROP TABLE "TBLTASK" CASCADE CONSTRAINTS;
--DROP TABLE "TBLBOARD" CASCADE CONSTRAINTS;
--DROP TABLE "TBLCOMPANY" CASCADE CONSTRAINTS;
--DROP TABLE "TBLEMPLOYEDSTD" CASCADE CONSTRAINTS;
--DROP TABLE "TBLHOLIDAY" CASCADE CONSTRAINTS;
--DROP TABLE "TBLATTENDSTANDARD" CASCADE CONSTRAINTS;
--DROP TABLE "TBLRECRUIT" CASCADE CONSTRAINTS;
--DROP TABLE "TBLADMIN" CASCADE CONSTRAINTS;
--DROP TABLE "TBLPOSSUB" CASCADE CONSTRAINTS;
--DROP TABLE "TBLTEXTBOOK" CASCADE CONSTRAINTS;
--DROP TABLE "TBLSUBJECTTEXTBOOK" CASCADE CONSTRAINTS;
--DROP TABLE "TBLONGOINGSUBJECT" CASCADE CONSTRAINTS;
--DROP TABLE "TBLEXAMINFO" CASCADE CONSTRAINTS;
--DROP TABLE "TBLEXAM" CASCADE CONSTRAINTS;
--DROP TABLE "TBLGRADE" CASCADE CONSTRAINTS;
--DROP TABLE "TBLTASKSUBMIT" CASCADE CONSTRAINTS;
--DROP TABLE "TBLDATA" CASCADE CONSTRAINTS;
--DROP TABLE "TBLCOMMENT" CASCADE CONSTRAINTS;
--DROP TABLE "TBLCONSULTING" CASCADE CONSTRAINTS;
--DROP TABLE "TBLATTENDANCE" CASCADE CONSTRAINTS;
--DROP TABLE "TBLITRSCOMPANY" CASCADE CONSTRAINTS;
--DROP TABLE "TBLRESUPPORT" CASCADE CONSTRAINTS;
