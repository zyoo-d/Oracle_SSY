-- &연산자 삽입 가능 설정
SET ESCAPE ON;

--tblUser
--학생
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '성준희',TO_DATE('1995-03-15', 'YYYY-MM-DD'),  '01059006133',  'sungjun123', '2886781', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생','지은우',TO_DATE('1998-07-20', 'YYYY-MM-DD'), '01059055661', 'jiun456', '1214884',SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser),'학생','현수진', TO_DATE('1993-11-05', 'YYYY-MM-DD'), '01091016321', 'hyunsoo789','1820652',SYSDATE);
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ( (SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '민성호', TO_DATE('1990-12-25', 'YYYY-MM-DD'),'01059719890','min101', '1613393',SYSDATE);
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ( (SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser),'학생', '예은서',TO_DATE('1996-08-10', 'YYYY-MM-DD'),'01033841764','yeeun234', '1684167',SYSDATE);
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '정희진',TO_DATE('1994-04-01', 'YYYY-MM-DD'), '01027655794','junghui567','1664122',SYSDATE);
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ( (SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '지우진',TO_DATE('1997-02-18', 'YYYY-MM-DD'), '01016953507','jiwu890','1048092',SYSDATE);
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '영민호',TO_DATE('1992-06-30', 'YYYY-MM-DD'),'01063611375','youngmin678','2116267',SYSDATE);
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ( (SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '수아람', TO_DATE('1991-10-08', 'YYYY-MM-DD'), '01067960415', 'suaram345', '1017891',SYSDATE);
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ( (SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '다온윤', TO_DATE('1999-05-12', 'YYYY-MM-DD'), '01038075620', 'daon456', 'Password', SYSDATE);
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '양빛래',TO_DATE('1995-07-09', 'YYYY-MM-DD'),  '01054395044',  'yrwvix28', '2426826', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '전을헌',TO_DATE('1998-08-07', 'YYYY-MM-DD'),  '01056559822',  'nwghup85', '2739436', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '이철더',TO_DATE('1994-03-21', 'YYYY-MM-DD'),  '01068165821',  'vxepex68', '2747658', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '염은월',TO_DATE('1995-03-30', 'YYYY-MM-DD'),  '01097568874',  'axlltz49', '2046936', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '진혜박',TO_DATE('1993-06-30', 'YYYY-MM-DD'),  '01035169625',  'abxfru99', '1918684', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '양으후',TO_DATE('1990-09-11', 'YYYY-MM-DD'),  '01070449625',  'eynhaz9', '1433593', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '변유라',TO_DATE('1994-06-14', 'YYYY-MM-DD'),  '01026760543',  'qlojsn7', '2539181', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '길모연',TO_DATE('1993-05-01', 'YYYY-MM-DD'),  '01030369984',  'tdeggc25', '2419753', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '표인별',TO_DATE('1994-11-18', 'YYYY-MM-DD'),  '01005906386',  'urhhjs33', '2938477', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '손묵채',TO_DATE('1993-04-25', 'YYYY-MM-DD'),  '01018843155',  'qyahtw3', '2475351', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '맹휘기',TO_DATE('1996-11-23', 'YYYY-MM-DD'),  '01007830712',  'lviwww70', '1960049', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '설후량',TO_DATE('1994-11-04', 'YYYY-MM-DD'),  '01076511082',  'ivxwmz75', '2346461', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '도섬훈',TO_DATE('1997-03-18', 'YYYY-MM-DD'),  '01066894164',  'yzdgju84', '2118528', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '양부로',TO_DATE('1991-01-23', 'YYYY-MM-DD'),  '01070868721',  'ukkdob39', '2083961', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '은무탁',TO_DATE('2001-04-26', 'YYYY-MM-DD'),  '01033423742',  'lfolnt1', '3611550', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '신회휴',TO_DATE('1991-04-15', 'YYYY-MM-DD'),  '01007426789',  'owkjfr5', '1523770', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '구리환',TO_DATE('1997-05-30', 'YYYY-MM-DD'),  '01032266914',  'zbztyu4', '1560487', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '박익규',TO_DATE('1991-02-05', 'YYYY-MM-DD'),  '01078448814',  'xdexut51', '2316741', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '제의온',TO_DATE('1993-03-30', 'YYYY-MM-DD'),  '01016522642',  'kkbfuh27', '1772496', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '손규경',TO_DATE('1994-02-10', 'YYYY-MM-DD'),  '01028064331',  'covark3', '2819368', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '석솔범',TO_DATE('1998-05-14', 'YYYY-MM-DD'),  '01033063840',  'hypahz72', '1986616', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '민천명',TO_DATE('1997-11-04', 'YYYY-MM-DD'),  '01019371544',  'ecyjut33', '1347733', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '도식린',TO_DATE('1994-06-09', 'YYYY-MM-DD'),  '01015974344',  'nudkxe45', '1288343', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '민부창',TO_DATE('1998-05-12', 'YYYY-MM-DD'),  '01046604659',  'nnzoyb8', '1322281', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '송림소',TO_DATE('1998-06-27', 'YYYY-MM-DD'),  '01093718557',  'xnsjcy88', '2662987', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '방상욱',TO_DATE('1996-01-01', 'YYYY-MM-DD'),  '01042113378',  'qwjgat41', '2254785', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '제희정',TO_DATE('1992-07-22', 'YYYY-MM-DD'),  '01082238757',  'bdlkfx1', '1341065', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '인보공',TO_DATE('1993-08-10', 'YYYY-MM-DD'),  '01035468053',  'itvmap92', '2140141', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '선반설',TO_DATE('1995-08-17', 'YYYY-MM-DD'),  '01086677598',  'rggbzr34', '1814097', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '연양실',TO_DATE('1996-06-26', 'YYYY-MM-DD'),  '01012435059',  'syiggu78', '2443122', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '노문령',TO_DATE('2000-07-07', 'YYYY-MM-DD'),  '01030650286',  'dxkacc11', '3545264', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '양전관',TO_DATE('1992-11-22', 'YYYY-MM-DD'),  '01056069772',  'rzsqkh97', '2854523', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '하병준',TO_DATE('1994-12-24', 'YYYY-MM-DD'),  '01039085044',  'vjkmsb56', '1057328', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '모온분',TO_DATE('1998-08-22', 'YYYY-MM-DD'),  '01047937640',  'kwvcou70', '2941778', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '유미은',TO_DATE('1997-08-26', 'YYYY-MM-DD'),  '01009621737',  'btnwrs9', '2063449', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '노상탐',TO_DATE('1993-08-05', 'YYYY-MM-DD'),  '01028953180',  'csqiuv7', '2269372', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '윤채을',TO_DATE('1991-07-03', 'YYYY-MM-DD'),  '01070754048',  'gtyvlk55', '1858269', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '방균위',TO_DATE('1995-03-24', 'YYYY-MM-DD'),  '01034109466',  'expnip61', '1448744', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '유잎걸',TO_DATE('1996-12-27', 'YYYY-MM-DD'),  '01059055219',  'ofbmrq78', '2629211', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '공덕안',TO_DATE('2002-11-27', 'YYYY-MM-DD'),  '01004692362',  'ilnbmh36', '4769838', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '은훈석',TO_DATE('1999-10-07', 'YYYY-MM-DD'),  '01010256117',  'nddavm76', '2472423', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '기명동',TO_DATE('1992-11-10', 'YYYY-MM-DD'),  '01073687610',  'bvexif2', '2227321', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '곽효들',TO_DATE('1993-08-12', 'YYYY-MM-DD'),  '01040073791',  'ybffot2', '1856190', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '육숭백',TO_DATE('1990-12-01', 'YYYY-MM-DD'),  '01029859583',  'ebetbh79', '2986081', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '민옥순',TO_DATE('1995-07-01', 'YYYY-MM-DD'),  '01037276784',  'xnopta23', '1754742', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '지걸용',TO_DATE('1993-03-15', 'YYYY-MM-DD'),  '01038320727',  'bpsegg88', '2655711', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '변디후',TO_DATE('1993-10-28', 'YYYY-MM-DD'),  '01011088656',  'bjpzod28', '1514569', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '유강마',TO_DATE('1990-05-26', 'YYYY-MM-DD'),  '01084274375',  'tkpwbe57', '2153017', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '임건호',TO_DATE('1994-05-12', 'YYYY-MM-DD'),  '01036102307',  'ivqlmw82', '1914166', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '반늬사',TO_DATE('1997-12-08', 'YYYY-MM-DD'),  '01017229049',  'cgjnre71', '2750339', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '양늬두',TO_DATE('1993-07-26', 'YYYY-MM-DD'),  '01010656081',  'auvhcc87', '2669673', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '탁장견',TO_DATE('1996-05-21', 'YYYY-MM-DD'),  '01036769673',  'vkcnjb88', '1330286', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '이덕노',TO_DATE('1997-07-05', 'YYYY-MM-DD'),  '01054995845',  'sfvayo21', '2621521', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '연안조',TO_DATE('1996-06-27', 'YYYY-MM-DD'),  '01062944508',  'pvbeqw94', '1488425', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '공반을',TO_DATE('1996-11-18', 'YYYY-MM-DD'),  '01098248226',  'mvtpyf53', '1338526', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '공서용',TO_DATE('2003-04-07', 'YYYY-MM-DD'),  '01073888263',  'kiznfr7', '3677243', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '탁해기',TO_DATE('1998-04-09', 'YYYY-MM-DD'),  '01054491218',  'oavnug17', '2048680', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '변신문',TO_DATE('1992-04-14', 'YYYY-MM-DD'),  '01006373224',  'shbnyk97', '1837748', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '전실서',TO_DATE('1998-11-22', 'YYYY-MM-DD'),  '01065820890',  'cidoyl98', '2221822', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '조흔희',TO_DATE('1990-05-13', 'YYYY-MM-DD'),  '01060574457',  'cljfom71', '2926480', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '모담박',TO_DATE('1993-10-20', 'YYYY-MM-DD'),  '01013269522',  'xuadti95', '2564762', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '전종송',TO_DATE('1998-04-30', 'YYYY-MM-DD'),  '01093887619',  'djerpp27', '2012030', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '제권을',TO_DATE('1993-03-24', 'YYYY-MM-DD'),  '01099531869',  'egwiqq93', '1013071', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '강단희',TO_DATE('1998-01-17', 'YYYY-MM-DD'),  '01099635766',  'bqdvmp77', '2037311', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '마이항',TO_DATE('1993-03-08', 'YYYY-MM-DD'),  '01000203473',  'mzfnrz77', '1144858', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '하바만',TO_DATE('1997-07-15', 'YYYY-MM-DD'),  '01087389100',  'xsymbn25', '2466876', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '변웅강',TO_DATE('1994-09-23', 'YYYY-MM-DD'),  '01012917463',  'wgiagn77', '2960968', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '변숙인',TO_DATE('1992-02-10', 'YYYY-MM-DD'),  '01038076409',  'rxgldv69', '1114392', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '유춘다',TO_DATE('1993-09-24', 'YYYY-MM-DD'),  '01087558729',  'qwkpff15', '2420152', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '천단열',TO_DATE('1994-02-13', 'YYYY-MM-DD'),  '01047359321',  'uzsjyf68', '1769843', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '변혼가',TO_DATE('1991-03-29', 'YYYY-MM-DD'),  '01092885908',  'iooyqn81', '2228641', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '공악을',TO_DATE('2001-08-07', 'YYYY-MM-DD'),  '01027544595',  'iadejy48', '4316270', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '왕엽엄',TO_DATE('1995-05-22', 'YYYY-MM-DD'),  '01025472286',  'antcvj99', '1161051', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '유개복',TO_DATE('1998-04-30', 'YYYY-MM-DD'),  '01075148836',  'edaqey55', '1213110', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '선추나',TO_DATE('1993-01-18', 'YYYY-MM-DD'),  '01073186647',  'lovowj88', '2780441', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '함휘일',TO_DATE('1991-03-28', 'YYYY-MM-DD'),  '01031495712',  'vsgfnz12', '1362064', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '구악박',TO_DATE('1998-08-20', 'YYYY-MM-DD'),  '01099293801',  'zzkgmn71', '1928840', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '탁창세',TO_DATE('1991-04-24', 'YYYY-MM-DD'),  '01007069133',  'mrfrjt63', '1477762', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '소동으',TO_DATE('1991-12-14', 'YYYY-MM-DD'),  '01024821214',  'scxnjn99', '2169741', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '왕권윤',TO_DATE('1993-08-09', 'YYYY-MM-DD'),  '01093670585',  'xoxuea86', '1817961', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '국종숭',TO_DATE('1994-10-04', 'YYYY-MM-DD'),  '01015206209',  'grwpjy73', '1331449', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '구철묵',TO_DATE('1997-07-03', 'YYYY-MM-DD'),  '01049350988',  'bqlxrl82', '2961136', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '기직유',TO_DATE('1998-06-18', 'YYYY-MM-DD'),  '01085487860',  'ukwhaa70', '1518281', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '기부전',TO_DATE('1996-09-24', 'YYYY-MM-DD'),  '01059581149',  'gzjvnh60', '2754753', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '편섬의',TO_DATE('1998-06-05', 'YYYY-MM-DD'),  '01082668305',  'ahxuvl82', '1341588', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '유추백',TO_DATE('1996-11-03', 'YYYY-MM-DD'),  '01031415188',  'ekrmie20', '2585160', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '민은항',TO_DATE('1992-11-28', 'YYYY-MM-DD'),  '01055293501',  'qvhehf51', '1260455', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '선세래',TO_DATE('1996-06-13', 'YYYY-MM-DD'),  '01001099986',  'isiyxq11', '2460316', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '강악동',TO_DATE('1990-07-13', 'YYYY-MM-DD'),  '01080979234',  'vgzetc20', '1463017', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '황수걸',TO_DATE('1995-11-14', 'YYYY-MM-DD'),  '01046895658',  'jrpumn93', '1534255', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '임잔이',TO_DATE('1991-08-06', 'YYYY-MM-DD'),  '01051249539',  'asgtnb89', '2483970', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '장찬두',TO_DATE('1996-05-21', 'YYYY-MM-DD'),  '01022708310',  'vwttcq83', '1519263', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '차을출',TO_DATE('1991-01-14', 'YYYY-MM-DD'),  '01060712992',  'uiweog95', '2213191', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '백자시',TO_DATE('1996-08-05', 'YYYY-MM-DD'),  '01090814391',  'ffuhdo8', '1418495', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '은요위',TO_DATE('1990-11-15', 'YYYY-MM-DD'),  '01003550296',  'ksbocp18', '2667458', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '전삼현',TO_DATE('1995-12-03', 'YYYY-MM-DD'),  '01086943701',  'zjpthd2', '1337394', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '함사악',TO_DATE('1992-05-10', 'YYYY-MM-DD'),  '01017945144',  'ofsekw70', '1020251', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '연으배',TO_DATE('1997-12-11', 'YYYY-MM-DD'),  '01012830145',  'tgdvwv24', '2511376', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '주공양',TO_DATE('1997-10-15', 'YYYY-MM-DD'),  '01070999491',  'xeknra14', '1015841', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '이자동',TO_DATE('2000-06-06', 'YYYY-MM-DD'),  '01079238499',  'rsiuve45', '4864761', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '황근회',TO_DATE('1992-07-08', 'YYYY-MM-DD'),  '01003131871',  'icmyat32', '2960718', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '변순고',TO_DATE('1995-12-15', 'YYYY-MM-DD'),  '01041095499',  'lpalxu54', '2342899', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '우동봉',TO_DATE('1993-07-29', 'YYYY-MM-DD'),  '01079473176',  'pgsdev73', '1775696', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '백흥태',TO_DATE('1990-01-28', 'YYYY-MM-DD'),  '01081302225',  'vtjhji38', '2334965', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '남루양',TO_DATE('1991-07-28', 'YYYY-MM-DD'),  '01031806717',  'qobske13', '1774673', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '편래탁',TO_DATE('2001-07-22', 'YYYY-MM-DD'),  '01060845033',  'zchxdp61', '3378643', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '손흔보',TO_DATE('1994-07-05', 'YYYY-MM-DD'),  '01008357484',  'trhzam1', '1150539', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '장탁병',TO_DATE('1994-01-10', 'YYYY-MM-DD'),  '01006806236',  'qvcphd10', '1937861', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '변주휘',TO_DATE('1993-04-13', 'YYYY-MM-DD'),  '01050651424',  'vjikac15', '1838883', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '우번병',TO_DATE('1994-08-21', 'YYYY-MM-DD'),  '01095940519',  'yilqar23', '1332492', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '선슬별',TO_DATE('1995-02-06', 'YYYY-MM-DD'),  '01077424474',  'gygptu79', '2937283', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '진잔자',TO_DATE('1990-03-30', 'YYYY-MM-DD'),  '01026977147',  'hlsoiy3', '2918693', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '염찬바',TO_DATE('1993-07-27', 'YYYY-MM-DD'),  '01054948492',  'evgxvx74', '1579320', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '명탁유',TO_DATE('1990-09-15', 'YYYY-MM-DD'),  '01024856673',  'iyswol29', '1877213', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '반슬한',TO_DATE('1994-06-30', 'YYYY-MM-DD'),  '01005191776',  'zevnta77', '2815528', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '유효노',TO_DATE('2000-05-14', 'YYYY-MM-DD'),  '01065595849',  'zqxmfr5', '4459978', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '심재반',TO_DATE('1997-07-28', 'YYYY-MM-DD'),  '01056784617',  'xgnhzg46', '2763257', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '연언추',TO_DATE('1991-12-30', 'YYYY-MM-DD'),  '01032166461',  'fdxcvs37', '2065042', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '추묵재',TO_DATE('1993-05-12', 'YYYY-MM-DD'),  '01048608364',  'cgcatv68', '2242178', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '공별수',TO_DATE('1994-11-07', 'YYYY-MM-DD'),  '01093421824',  'sciass69', '1169050', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '변구진',TO_DATE('1998-05-25', 'YYYY-MM-DD'),  '01013840840',  'kstmkr22', '2719946', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '도일세',TO_DATE('1997-07-04', 'YYYY-MM-DD'),  '01065501409',  'nxvjgu77', '1863349', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '추정두',TO_DATE('1995-11-09', 'YYYY-MM-DD'),  '01022715748',  'jtoyfk74', '1323434', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '문공더',TO_DATE('1999-02-05', 'YYYY-MM-DD'),  '01086779342',  'ukyyrq84', '2279597', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '석랑늬',TO_DATE('1993-04-03', 'YYYY-MM-DD'),  '01014827609',  'ecrzjp79', '2349687', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '여철웅',TO_DATE('1993-08-01', 'YYYY-MM-DD'),  '01071582400',  'imltpa89', '1612146', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '석루고',TO_DATE('1994-07-14', 'YYYY-MM-DD'),  '01024074069',  'hryxgk95', '2244487', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '탁안솜',TO_DATE('1998-09-15', 'YYYY-MM-DD'),  '01091959663',  'halfzn40', '1756453', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '노온모',TO_DATE('2000-12-25', 'YYYY-MM-DD'),  '01001030977',  'ihcdtz92', '3840316', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '윤출훔',TO_DATE('1992-01-26', 'YYYY-MM-DD'),  '01041946508',  'ffbacx68', '2284091', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '남연래',TO_DATE('1996-04-27', 'YYYY-MM-DD'),  '01046129852',  'cwhvcc42', '1338351', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '채심손',TO_DATE('1993-10-03', 'YYYY-MM-DD'),  '01091013461',  'nvsxsu47', '1222264', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '장철숭',TO_DATE('1997-11-18', 'YYYY-MM-DD'),  '01054813338',  'armljl72', '1016650', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '추승헌',TO_DATE('1991-03-30', 'YYYY-MM-DD'),  '01097658982',  'vlsddt67', '2660163', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '문태병',TO_DATE('1992-09-24', 'YYYY-MM-DD'),  '01008415670',  'aefpfk92', '1417298', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '송흥래',TO_DATE('1992-07-05', 'YYYY-MM-DD'),  '01019242298',  'cjmdnf11', '1840280', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '인황평',TO_DATE('1992-09-22', 'YYYY-MM-DD'),  '01066194936',  'wavfts83', '2880567', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '방병향',TO_DATE('1995-09-29', 'YYYY-MM-DD'),  '01059822504',  'emlcpv55', '1249427', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '지롱반',TO_DATE('1992-04-26', 'YYYY-MM-DD'),  '01005541433',  'getvpu47', '1358534', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '황잎곤',TO_DATE('1992-03-30', 'YYYY-MM-DD'),  '01069932530',  'nbgqey85', '2211925', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '신으분',TO_DATE('1994-03-06', 'YYYY-MM-DD'),  '01039366418',  'xnrbpl89', '2762489', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '류고월',TO_DATE('1990-11-09', 'YYYY-MM-DD'),  '01034398230',  'fdwxru17', '2413521', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '나애충',TO_DATE('1993-08-06', 'YYYY-MM-DD'),  '01079433068',  'avusct9', '1822466', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '장재우',TO_DATE('1990-12-05', 'YYYY-MM-DD'),  '01042470326',  'ehpsdr5', '2520041', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '조얀일',TO_DATE('1997-01-11', 'YYYY-MM-DD'),  '01068601270',  'wdsdlj48', '1676112', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '육자린',TO_DATE('1999-04-06', 'YYYY-MM-DD'),  '01081591180',  'nvsybs37', '1618963', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '기욱루',TO_DATE('1991-09-23', 'YYYY-MM-DD'),  '01012424387',  'zktwyl77', '2235719', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '인섭규',TO_DATE('1991-07-16', 'YYYY-MM-DD'),  '01041653869',  'udqrcp7', '1011236', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '구봉산',TO_DATE('1999-01-07', 'YYYY-MM-DD'),  '01059326405',  'tgqiaq56', '1919550', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '노안기',TO_DATE('1997-12-02', 'YYYY-MM-DD'),  '01060767821',  'aedgjz76', '2141824', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '육수림',TO_DATE('1991-02-20', 'YYYY-MM-DD'),  '01026048658',  'nohjkk24', '2855513', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '유새위',TO_DATE('1994-07-11', 'YYYY-MM-DD'),  '01063599884',  'shnvog20', '1351463', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '함두익',TO_DATE('1993-08-30', 'YYYY-MM-DD'),  '01021325898',  'phmdgu91', '2245369', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '옥익타',TO_DATE('1992-03-21', 'YYYY-MM-DD'),  '01042044813',  'hithnt1', '1317692', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '유련태',TO_DATE('2001-05-16', 'YYYY-MM-DD'),  '01096339833',  'luqstc45', '4322755', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '노평지',TO_DATE('1991-06-17', 'YYYY-MM-DD'),  '01049094535',  'gasmfx36', '2271877', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '신대후',TO_DATE('1991-08-09', 'YYYY-MM-DD'),  '01074503124',  'pacdac12', '2444165', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '국이요',TO_DATE('1990-06-21', 'YYYY-MM-DD'),  '01035848141',  'byruxr28', '2050984', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '추라성',TO_DATE('1993-06-18', 'YYYY-MM-DD'),  '01050874356',  'rdbgnj89', '1912990', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '여려추',TO_DATE('1992-01-25', 'YYYY-MM-DD'),  '01068534211',  'wvxovw98', '1649050', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '설충슬',TO_DATE('1990-09-28', 'YYYY-MM-DD'),  '01003297551',  'zumfbe88', '1117657', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '나늬채',TO_DATE('1990-10-13', 'YYYY-MM-DD'),  '01028502007',  'txpbkf5', '2583288', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '배구백',TO_DATE('1991-06-05', 'YYYY-MM-DD'),  '01010862681',  'qsfrty78', '1257533', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '명태흥',TO_DATE('1995-10-09', 'YYYY-MM-DD'),  '01015350160',  'gsoicy57', '1755251', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '문두성',TO_DATE('1997-07-27', 'YYYY-MM-DD'),  '01067268272',  'deoghj96', '2433611', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '송학홍',TO_DATE('1992-07-10', 'YYYY-MM-DD'),  '01029534374',  'ugijta35', '2582714', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '지박관',TO_DATE('1992-05-10', 'YYYY-MM-DD'),  '01084572632',  'uklomj20', '1725717', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '제무석',TO_DATE('1998-04-13', 'YYYY-MM-DD'),  '01067714247',  'vcprrc73', '2451255', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '문삼구',TO_DATE('1995-04-10', 'YYYY-MM-DD'),  '01002343837',  'gqwegd98', '2619554', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '손관요',TO_DATE('1997-07-05', 'YYYY-MM-DD'),  '01097613143',  'rqhqjp20', '2786246', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '국로요',TO_DATE('1992-01-15', 'YYYY-MM-DD'),  '01086161586',  'adihrk1', '2421371', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '편추윤',TO_DATE('1995-07-01', 'YYYY-MM-DD'),  '01019800827',  'vsyayg33', '2865939', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '송정량',TO_DATE('1996-12-19', 'YYYY-MM-DD'),  '01085871137',  'rbvggc23', '1640537', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '지이두',TO_DATE('1996-04-10', 'YYYY-MM-DD'),  '01040788265',  'iqtyyi24', '1179774', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '공관초',TO_DATE('1993-03-20', 'YYYY-MM-DD'),  '01037660016',  'zbftis80', '1228162', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '이남림',TO_DATE('1997-06-25', 'YYYY-MM-DD'),  '01044891935',  'whxxzw7', '2760662', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '배복선',TO_DATE('1995-02-24', 'YYYY-MM-DD'),  '01078070316',  'kwnjkl69', '2764443', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '임마자',TO_DATE('1994-08-25', 'YYYY-MM-DD'),  '01053354821',  'wbvoom7', '2365681', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '민래정',TO_DATE('2000-07-13', 'YYYY-MM-DD'),  '01053998290',  'jowtkc41', '4819121', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '연모제',TO_DATE('1998-04-07', 'YYYY-MM-DD'),  '01013066015',  'wojfiq23', '1157832', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '신주송',TO_DATE('1994-12-26', 'YYYY-MM-DD'),  '01001628611',  'dvdptm90', '1758762', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '어해덕',TO_DATE('1991-08-04', 'YYYY-MM-DD'),  '01070918806',  'mzlxho29', '1036273', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '윤술흠',TO_DATE('1991-01-01', 'YYYY-MM-DD'),  '01054790266',  'cdygsr63', '2530115', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '황성건',TO_DATE('1997-08-17', 'YYYY-MM-DD'),  '01097106846',  'tltxtq84', '2221392', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '방배아',TO_DATE('1995-02-27', 'YYYY-MM-DD'),  '01040421641',  'irbfes61', '2412922', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '남솔석',TO_DATE('1996-08-08', 'YYYY-MM-DD'),  '01006040345',  'jfjoyc52', '2679980', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '노영견',TO_DATE('1998-10-20', 'YYYY-MM-DD'),  '01062558210',  'decaku65', '2129118', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '엄도오',TO_DATE('1990-11-01', 'YYYY-MM-DD'),  '01099013490',  'xkxvga20', '1956534', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '정식솔',TO_DATE('1997-02-09', 'YYYY-MM-DD'),  '01033550180',  'qyhykd2', '2751110', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '나로바',TO_DATE('1994-04-27', 'YYYY-MM-DD'),  '01096661328',  'hphcjg87', '2519653', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '류예무',TO_DATE('1991-11-23', 'YYYY-MM-DD'),  '01024173832',  'zkejtd99', '1383228', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '주충훈',TO_DATE('1990-09-24', 'YYYY-MM-DD'),  '01005469250',  'lraqmx62', '1736658', SYSDATE );

--관리자
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '관리자', '모모심',TO_DATE('1982-06-26', 'YYYY-MM-DD'),  '01045752943',  'lsivkf45', '1366099', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '관리자', '임장잎',TO_DATE('1980-11-22', 'YYYY-MM-DD'),  '01025660607',  'nwriwy90', '2353192', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '관리자', '김수숭',TO_DATE('1982-02-25', 'YYYY-MM-DD'),  '01072976144',  'bzhgcn97', '1621082', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '관리자', '추호초',TO_DATE('1984-08-20', 'YYYY-MM-DD'),  '01007653933',  'rkhkhs41', '2983491', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '관리자', '남태구',TO_DATE('1981-02-05', 'YYYY-MM-DD'),  '01093051638',  'ehnjtb36', '2881181', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '관리자', '변일준',TO_DATE('1985-03-06', 'YYYY-MM-DD'),  '01099068989',  'rjhxgc23', '2481786', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '관리자', '임엽단',TO_DATE('1986-02-04', 'YYYY-MM-DD'),  '01045772322',  'prgtvo86', '2584984', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '관리자', '선상우',TO_DATE('1978-06-04', 'YYYY-MM-DD'),  '01003270205',  'exkgiu66', '1224021', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '관리자', '전박솜',TO_DATE('1982-01-26', 'YYYY-MM-DD'),  '01070737817',  'hexjll97', '2041258', SYSDATE );

--교사
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '교사', '위마언',TO_DATE('1986-01-27', 'YYYY-MM-DD'),  '01062013305',  'owpibx9', '2457061', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '교사', '염진향',TO_DATE('1982-02-26', 'YYYY-MM-DD'),  '01097440696',  'heskyt14', '2055876', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '교사', '손빈추',TO_DATE('1987-09-09', 'YYYY-MM-DD'),  '01043031067',  'xehnjc50', '2422393', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '교사', '구혜얀',TO_DATE('1986-07-24', 'YYYY-MM-DD'),  '01090296392',  'wgsjvd60', '2148858', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '교사', '주정의',TO_DATE('1981-12-12', 'YYYY-MM-DD'),  '01020156022',  'aucykn55', '1735084', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '교사', '주진권',TO_DATE('1984-02-27', 'YYYY-MM-DD'),  '01041485871',  'yvxxbu1', '2734271', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '교사', '권옥훈',TO_DATE('1987-03-06', 'YYYY-MM-DD'),  '01001822087',  'hzisww21', '2732636', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '교사', '주균운',TO_DATE('1985-12-29', 'YYYY-MM-DD'),  '01010494562',  'wrgqbi26', '2216061', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '교사', '양유리',TO_DATE('1983-03-13', 'YYYY-MM-DD'),  '01088227286',  'ltwnju20', '2947385', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '교사', '인고구',TO_DATE('1985-01-04', 'YYYY-MM-DD'),  '01013875886',  'edkntt29', '1719536', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '교사', '변령효',TO_DATE('1985-10-29', 'YYYY-MM-DD'),  '01059065589',  'eejjq122', '1731547', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES  ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '교사', '손옥순',  TO_DATE('1976-06-01', 'YYYY-MM-DD'), '01096578452', 'minji_90', '2161254', SYSDATE);
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '교사', '박성우', TO_DATE('1980-05-14', 'YYYY-MM-DD'), '01096995214', 'swpark87', '1195236', SYSDATE);
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '교사', '임광자', TO_DATE('1973-10-01', 'YYYY-MM-DD'), '01013256487', 'jiwonlee92', '2154568', SYSDATE);
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '교사',  '최철수',  TO_DATE('1965-02-27', 'YYYY-MM-DD'), '01036987412', 'jaehyun_85', '1184623', SYSDATE);
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate)  VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '교사',  '홍석준',  TO_DATE('1979-11-17', 'YYYY-MM-DD'), '01041258746', 'jisoo_hong',  '1180245', SYSDATE);
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '교사',  '오만수', TO_DATE('1972-05-21', 'YYYY-MM-DD'), '01054321987',  'hyunwoo_j',  '1198712',  SYSDATE);
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '교사',  '이영태', TO_DATE('1978-12-20', 'YYYY-MM-DD'), '01021556321',  'young_tae',  '1025465',  SYSDATE);
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '교사',  '고진수', TO_DATE('1972-05-21', 'YYYY-MM-DD'), '01084651357',  'real_water',  '1162656',  SYSDATE);
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '교사',  '김시우', TO_DATE('1972-05-21', 'YYYY-MM-DD'), '01079642164',  'si_rain',  '1170858',  SYSDATE);
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '교사',  '박정준', TO_DATE('1972-05-21', 'YYYY-MM-DD'), '01011324456',  'kind_jun',  '1032654',  SYSDATE);
--tblTeacher
Insert into tblTeacher (tpk, tstspk) values  (212, 2);
Insert into tblTeacher (tpk, tstspk) values  (213, 1);
Insert into tblTeacher (tpk, tstspk) values  (214, 3);
Insert into tblTeacher (tpk, tstspk) values  (215, 2);
Insert into tblTeacher (tpk, tstspk) values  (216, 4);
Insert into tblTeacher (tpk, tstspk) values  (217, 2);
Insert into tblTeacher (tpk, tstspk) values  (218, 2);
Insert into tblTeacher (tpk, tstspk) values  (219, 5);
Insert into tblTeacher (tpk, tstspk) values  (220, 1);
Insert into tblTeacher (tpk, tstspk) values  (221, 2);
Insert into tblTeacher (tpk, tstspk) values  (222, 2);
Insert into tblTeacher (tpk, tstspk) values  (223, 3);
Insert into tblTeacher (tpk, tstspk) values  (224, 3);
Insert into tblTeacher (tpk, tstspk) values  (225, 5);
Insert into tblTeacher (tpk, tstspk) values  (226, 3);
Insert into tblTeacher (tpk, tstspk) values  (227, 4);
Insert into tblTeacher (tpk, tstspk) values  (228, 5);
Insert into tblTeacher (tpk, tstspk) values  (229, 5);
Insert into tblTeacher (tpk, tstspk) values  (230, 4);
Insert into tblTeacher (tpk, tstspk) values  (231, 5);
Insert into tblTeacher (tpk, tstspk) values  (232, 4);


INSERT INTO tblStudent (stupk, stustspk) VALUES (1, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (2, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (3, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (4, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (5, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (6, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (7, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (8, 4);
INSERT INTO tblStudent (stupk, stustspk) VALUES (9, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (10, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (11, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (12, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (13, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (14, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (15, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (16, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (17, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (18, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (19, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (20, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (21, 4);
INSERT INTO tblStudent (stupk, stustspk) VALUES (22, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (23, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (24, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (25, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (26, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (27, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (28, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (29, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (30, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (31, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (32, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (33, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (34, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (35, 4);
INSERT INTO tblStudent (stupk, stustspk) VALUES (36, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (37, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (38, 4);
INSERT INTO tblStudent (stupk, stustspk) VALUES (39, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (40, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (41, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (42, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (43, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (44, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (45, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (46, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (47, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (48, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (49, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (50, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (51, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (52, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (53, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (54, 4);
INSERT INTO tblStudent (stupk, stustspk) VALUES (55, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (56, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (57, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (58, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (59, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (60, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (61, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (62, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (63, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (64, 4);
INSERT INTO tblStudent (stupk, stustspk) VALUES (65, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (66, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (67, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (68, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (69, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (70, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (71, 4);
INSERT INTO tblStudent (stupk, stustspk) VALUES (72, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (73, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (74, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (75, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (76, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (77, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (78, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (79, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (80, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (81, 4);
INSERT INTO tblStudent (stupk, stustspk) VALUES (82, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (83, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (84, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (85, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (86, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (87, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (88, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (89, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (90, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (91, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (92, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (93, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (94, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (95, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (96, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (97, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (98, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (99, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (100, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (101, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (102, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (103, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (104, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (105, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (106, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (107, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (108, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (109, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (110, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (111, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (112, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (113, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (114, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (115, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (116, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (117, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (118, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (119, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (120, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (121, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (122, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (123, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (124, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (125, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (126, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (127, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (128, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (129, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (130, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (131, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (132, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (133, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (134, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (135, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (136, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (137, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (138, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (139, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (140, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (141, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (142, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (143, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (144, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (145, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (146, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (147, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (148, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (149, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (150, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (151, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (152, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (153, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (154, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (155, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (156, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (157, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (158, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (159, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (160, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (161, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (162, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (163, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (164, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (165, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (166, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (167, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (168, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (169, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (170, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (171, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (172, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (173, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (174, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (175, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (176, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (177, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (178, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (179, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (180, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (181, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (182, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (183, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (184, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (185, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (186, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (187, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (188, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (189, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (190, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (191, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (192, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (193, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (194, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (195, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (196, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (197, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (198, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (199, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (200, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (201, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (202, 1);

--tblAdmin
--INSERT INTO tblAdmin (admpk, admstspk) VALUES ((SELECT NVL(MAX(admpk), 0) + 1 FROM tblAdmin), 1);

INSERT INTO tblAdmin (admpk) VALUES ((SELECT userpk FROM tblUser WHERE name = '모모심'), );
INSERT INTO tblAdmin (admpk) VALUES ((SELECT userpk FROM tblUser WHERE name = '임장잎'), );
INSERT INTO tblAdmin (admpk) VALUES ((SELECT userpk FROM tblUser WHERE name = '김수숭'), );
INSERT INTO tblAdmin (admpk) VALUES ((SELECT userpk FROM tblUser WHERE name = '추호초'), );
INSERT INTO tblAdmin (admpk) VALUES ((SELECT userpk FROM tblUser WHERE name = '남태구'), );
INSERT INTO tblAdmin (admpk) VALUES ((SELECT userpk FROM tblUser WHERE name = '변일준'), );
INSERT INTO tblAdmin (admpk) VALUES ((SELECT userpk FROM tblUser WHERE name = '임엽단'), );
INSERT INTO tblAdmin (admpk) VALUES ((SELECT userpk FROM tblUser WHERE name = '선상우'), );
INSERT INTO tblAdmin (admpk) VALUES ((SELECT userpk FROM tblUser WHERE name = '전박솜'), );

--tblComLocation.
----select * from tblComLocation;
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
--select * from tblAdminStatus;
INSERT INTO tblAdminStatus (admstspk, admstatus) VALUES ((SELECT NVL(MAX(admstspk), 0) + 1 FROM tblAdminStatus), '재직');
INSERT INTO tblAdminStatus (admstspk, admstatus) VALUES ((SELECT NVL(MAX(admstspk), 0) + 1 FROM tblAdminStatus), '휴직');
INSERT INTO tblAdminStatus (admstspk, admstatus) VALUES ((SELECT NVL(MAX(admstspk), 0) + 1 FROM tblAdminStatus), '퇴직');

--tblAttendStatus;		INSERT INTO tblAttendStatus (attstspk, attstatus) VALUES ((SELECT NVL(MAX(attstspk), 0) + 1 FROM tblAttendStatus), '출결상태');
--결석은 다른 테이블에서 출석일자가 null인경우 반영
--select * from tblAttendStatus;
INSERT INTO tblAttendStatus (attstspk, attstatus) VALUES ((SELECT NVL(MAX(attstspk), 0) + 1 FROM tblAttendStatus), '출석');
INSERT INTO tblAttendStatus (attstspk, attstatus) VALUES ((SELECT NVL(MAX(attstspk), 0) + 1 FROM tblAttendStatus), '지각');
INSERT INTO tblAttendStatus (attstspk, attstatus) VALUES ((SELECT NVL(MAX(attstspk), 0) + 1 FROM tblAttendStatus), '조퇴');
INSERT INTO tblAttendStatus (attstspk, attstatus) VALUES ((SELECT NVL(MAX(attstspk), 0) + 1 FROM tblAttendStatus), '결석');
INSERT INTO tblAttendStatus (attstspk, attstatus) VALUES ((SELECT NVL(MAX(attstspk), 0) + 1 FROM tblAttendStatus), '병결(출석인정)');
INSERT INTO tblAttendStatus (attstspk, attstatus) VALUES ((SELECT NVL(MAX(attstspk), 0) + 1 FROM tblAttendStatus), '면접(출석인정)');
INSERT INTO tblAttendStatus (attstspk, attstatus) VALUES ((SELECT NVL(MAX(attstspk), 0) + 1 FROM tblAttendStatus), '시험(출석인정)');



--tblOpenCourseStatus;		INSERT INTO tblOpenCourseStatus (ocspk, ocstatus) VALUES ((SELECT NVL(MAX(ocspk), 0) + 1 FROM tblOpenCourseStatus), '개설예정/과정진행중/과정종료');
--select * from tblOpenCourseStatus;
INSERT INTO tblOpenCourseStatus (ocspk, ocstatus) VALUES ((SELECT NVL(MAX(ocspk), 0) + 1 FROM tblOpenCourseStatus), '강의예정');
INSERT INTO tblOpenCourseStatus (ocspk, ocstatus) VALUES ((SELECT NVL(MAX(ocspk), 0) + 1 FROM tblOpenCourseStatus), '과정진행중');
INSERT INTO tblOpenCourseStatus (ocspk, ocstatus) VALUES ((SELECT NVL(MAX(ocspk), 0) + 1 FROM tblOpenCourseStatus), '과정종료');


--tblStudentStatus;		INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '수강예정/수강중/중도탈락/수료/취업/다수과정수강/재취업지원신청/재취업지원완료');
--select * from tblStudentStatus;
INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '수강예정');
INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '수강중');
INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '중도탈락');
INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '수료');
INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '취업');
INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '다수과정수강');
INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '재취업지원신청');
INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '재취업지원종료');

--tblTeacherStatus;		INSERT INTO tblTeacherStatus (tstspk, tstatus) VALUES ((SELECT NVL(MAX(tstspk), 0) + 1 FROM tblTeacherStatus), '강의예정(재직),강의중,대기중,휴직,퇴사');
--select * from tblTeacherStatus;
INSERT INTO tblTeacherStatus (tstspk, tstatus) VALUES ((SELECT NVL(MAX(tstspk), 0) + 1 FROM tblTeacherStatus), '강의예정(재직)');
INSERT INTO tblTeacherStatus (tstspk, tstatus) VALUES ((SELECT NVL(MAX(tstspk), 0) + 1 FROM tblTeacherStatus), '강의중(재직)');
INSERT INTO tblTeacherStatus (tstspk, tstatus) VALUES ((SELECT NVL(MAX(tstspk), 0) + 1 FROM tblTeacherStatus), '대기중(재직)');
INSERT INTO tblTeacherStatus (tstspk, tstatus) VALUES ((SELECT NVL(MAX(tstspk), 0) + 1 FROM tblTeacherStatus), '휴직');
INSERT INTO tblTeacherStatus (tstspk, tstatus) VALUES ((SELECT NVL(MAX(tstspk), 0) + 1 FROM tblTeacherStatus), '퇴사');


--tblComSize;		INSERT INTO tblComSize (sizepk, comsize) VALUES ((SELECT NVL(MAX(sizepk), 0) + 1 FROM tblComSize), '기업규모');
--select * from tblComSize;
INSERT INTO tblComSize (sizepk, comsize) VALUES ((SELECT NVL(MAX(sizepk), 0) + 1 FROM tblComSize), '대기업');
INSERT INTO tblComSize (sizepk, comsize) VALUES ((SELECT NVL(MAX(sizepk), 0) + 1 FROM tblComSize), '중견기업');
INSERT INTO tblComSize (sizepk, comsize) VALUES ((SELECT NVL(MAX(sizepk), 0) + 1 FROM tblComSize), '강소기업');
INSERT INTO tblComSize (sizepk, comsize) VALUES ((SELECT NVL(MAX(sizepk), 0) + 1 FROM tblComSize), '중소기업');
INSERT INTO tblComSize (sizepk, comsize) VALUES ((SELECT NVL(MAX(sizepk), 0) + 1 FROM tblComSize), '스타트업');
INSERT INTO tblComSize (sizepk, comsize) VALUES ((SELECT NVL(MAX(sizepk), 0) + 1 FROM tblComSize), '공공기관');
INSERT INTO tblComSize (sizepk, comsize) VALUES ((SELECT NVL(MAX(sizepk), 0) + 1 FROM tblComSize), '공공협회');



--tblComCategory;		INSERT INTO tblComCategory (catepk, category) VALUES ((SELECT NVL(MAX(catepk), 0) + 1 FROM tblComCategory), '기업분야');
--select * from tblComCategory;
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
--select * from tblComIndustry;
INSERT INTO tblComIndustry (idstpk, industry) VALUES ((SELECT NVL(MAX(idstpk), 0) + 1 FROM tblComIndustry), 'SI');
INSERT INTO tblComIndustry (idstpk, industry) VALUES ((SELECT NVL(MAX(idstpk), 0) + 1 FROM tblComIndustry), '솔루션');
INSERT INTO tblComIndustry (idstpk, industry) VALUES ((SELECT NVL(MAX(idstpk), 0) + 1 FROM tblComIndustry), '서비스');
INSERT INTO tblComIndustry (idstpk, industry) VALUES ((SELECT NVL(MAX(idstpk), 0) + 1 FROM tblComIndustry), '컨설팅');
INSERT INTO tblComIndustry (idstpk, industry) VALUES ((SELECT NVL(MAX(idstpk), 0) + 1 FROM tblComIndustry), 'SM');
INSERT INTO tblComIndustry (idstpk, industry) VALUES ((SELECT NVL(MAX(idstpk), 0) + 1 FROM tblComIndustry), '기타');

--tblAttendStandard		INSERT INTO tblAttendStandard (attstdpk, attstdtime) VALUES ((SELECT NVL(MAX(attstdpk), 0) + 1 FROM tblAttendStandard), to_date('09:10:00','hh24:mi:ss'));
--select attstdpk, to_char(attstdtime, 'hh24:mi:ss') from tblAttendStandard;
INSERT INTO tblAttendStandard (attstdpk, attstdtime) VALUES ((SELECT NVL(MAX(attstdpk), 0) + 1 FROM tblAttendStandard), to_date('09:10:00','hh24:mi:ss'));--09:10:00까지 정상출석/09:10:01 지각
INSERT INTO tblAttendStandard (attstdpk, attstdtime) VALUES ((SELECT NVL(MAX(attstdpk), 0) + 1 FROM tblAttendStandard), to_date('14:00:00','hh24:mi:ss'));--14:00:00 이전 조퇴시 결석처리
INSERT INTO tblAttendStandard (attstdpk, attstdtime) VALUES ((SELECT NVL(MAX(attstdpk), 0) + 1 FROM tblAttendStandard), to_date('17:50:00','hh24:mi:ss'));--17:50:00이후 정상하교/17:49:59 이전 퇴실 조퇴


--tblHoliday;		INSERT INTO tblHoliday (holpk, holiday, holidate) VALUES ((SELECT NVL(MAX(holpk), 0) + 1 FROM tblHoliday), 'Holiday Name', TO_DATE('holidate','YYYY-MM-DD'));
--select * from tblHoliday;
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
----select * from tblSubject;
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


--tblClassroom. INSERT INTO tblClassroom (crpk, crname, crcapacity, crpossible) VALUES ((SELECT NVL(MAX(crpk), 0) + 1 FROM tblClassroom), 'Classroom Name', Capacity, 'Y/N');
INSERT INTO tblClassroom (crpk, crname, crcapacity, crpossible) VALUES ((SELECT NVL(MAX(crpk), 0) + 1 FROM tblClassroom), 1, 30, 'Y');
INSERT INTO tblClassroom (crpk, crname, crcapacity, crpossible) VALUES ((SELECT NVL(MAX(crpk), 0) + 1 FROM tblClassroom), 2, 30, 'Y');
INSERT INTO tblClassroom (crpk, crname, crcapacity, crpossible) VALUES ((SELECT NVL(MAX(crpk), 0) + 1 FROM tblClassroom), 3, 30, 'Y');
INSERT INTO tblClassroom (crpk, crname, crcapacity, crpossible) VALUES ((SELECT NVL(MAX(crpk), 0) + 1 FROM tblClassroom), 4, 26, 'Y');
INSERT INTO tblClassroom (crpk, crname, crcapacity, crpossible) VALUES ((SELECT NVL(MAX(crpk), 0) + 1 FROM tblClassroom), 5, 26, 'Y');
INSERT INTO tblClassroom (crpk, crname, crcapacity, crpossible) VALUES ((SELECT NVL(MAX(crpk), 0) + 1 FROM tblClassroom), 6, 26, 'Y');



--tblTextbook. INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), 'Textbook Name', 'Author Name', 'Publisher Name');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), 'Java의 정석', '남궁성', '도우출판');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '이것이 자바다', '신용권, 임경균', '한빛미디어');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '자바의 정석 기초편', '남궁성', '도우출판');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), 'Do it! 알고리즘 코딩 테스트 자바 편', '김종관', '이지스퍼블리싱');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '그림으로 배우는 Java Programming 3rd Edition', 'Mana Takahashi', '영진닷컴');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), 'Java가 보이는 그림책', 'ANK Co., Ltd.', '성안당');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '어서와 JAVA는 처음이지!', '천인국', '인피니티북스');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '객체지향의 사실과 오해', '조영호', '위키북스');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), 'Do it! 오라클로 배우는 데이터베이스 입문', '이지훈', '이지스퍼블리싱');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '이것이 오라클이다', '우재남', '한빛미디어');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '오라클로 배우는 데이터베이스 개론과 실습', '박우창', '한빛아카데미');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '김상형의 SQL 정복', '김상형', '한빛미디어');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '뇌를 자극하는 오라클 프로그래밍 SQL\&PL/SQL', '홍형경', '한빛미디어');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '코딩 자율학습 HTML + CSS + 자바스크립트', '김기수', '길벗');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), 'Do it! HTML+CSS+자바스크립트 웹 표준의 정석', '고경희', '이지스퍼블리싱');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '완성된 웹사이트로 배우는 HTML\&CSS 웹 디자인', 'Mana', '한빛미디어');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '코어 자바스크립트', '정재남', '위키북스');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '모던 자바스크립트 핵심 가이드', '알베르토 몬탈레시', '한빛미디어');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '러닝 자바스크립트', '이선 브라운', '한빛미디어');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '최범균의 JSP 2.3 웹 프로그래밍 : 기초부터 중급까지', '최범균', '가메출판사');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '뇌를 자극하는 JSP \& Servlet', '김윤명', '한빛미디어');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), 'Head First Servlets \& JSP', '케이시 시에라', '한빛미디어');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '웹 개발자를 위한 Spring 4.0 프로그래밍', '최범균', '가메출판사');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '코드로 배우는 스프링 웹 프로젝트', '구멍가게 코딩단', '남가람북스');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '스프링 5 레시피', '마틴 데이넘', '한빛미디어');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '스프링 부트 핵심 가이드', '장정우', '위키북스');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '코드로 배우는 스프링 부트 웹 프로젝트', '구멍가게 코딩단', '남가람북스');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '예제로 배우는 스프링 부트 입문', '이재환', '비제이퍼블릭(BJ퍼블릭)');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '배워서 바로 쓰는 스프링 프레임워크', '애시시 사린', '|한빛미디어');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '도커 교과서', '엘튼 스톤맨', '길벗');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '그림과 실습으로 배우는 도커 \& 쿠버네티스', '오가사와라 시게타카', '위키북스');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '도커, 컨테이너 빌드업!', '이현룡', '제이펍');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '딥러닝의 정석', '니틴 부두마', '한빛미디어');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '혼자 공부하는 머신러닝+딥러닝', '박해선', '한빛미디어');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '밑바닥부터 시작하는 딥러닝', '사이토 고키', '한빛미디어');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '데이터 과학 기반의 파이썬 빅데이터 분석', '이지영', '한빛아카데미');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), 'AWS 교과서', '김원일', '길벗');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '그림과 작동 원리로 쉽게 이해하는 AWS 구조와 서비스', '우에노 후미아키', '위키북스');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), 'Real MongoDB', '이성욱', '위키북스');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), 'MariaDB로 배우는 따라 하며 배우는 SQL 프로그래밍', '나익수, 서연경', '가메출판사');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), 'Do it! 점프 투 파이썬', '박응용', '이지스퍼블리싱');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '코딩 자율학습 나도코딩의 파이썬 입문', '나도코딩', '길벗');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), 'Do it! 알고리즘 코딩 테스트 C++ 편', '김종관', '이지스퍼블리싱');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), 'C++ 최적화', '커트 건서로스', '한빛미디어');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), 'C++ 소프트웨어 디자인', '클라우스 이글베르거', '위키북스');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), 'Kotlin in Action', '드미트리 제메로프', '에이콘출판사');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '코틀린 코루틴', '마르친 모스카와', '인사이트(insight)');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '백엔드 프로그래밍을 위한 PHP \& MySQL', '존 두켓', '제이펍');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), 'PHP 프로그래밍 입문', '황재호', '한빛아카데미');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '이것이 C#이다', '박상현', '한빛미디어');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '헤드 퍼스트 C#', '앤드류 스텔만', '한빛미디어');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), 'Do it! 자료구조와 함께 배우는 알고리즘 입문 자바 편', '시바타 보요', '이지스퍼블리싱');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), 'Do it! 자료구조와 함께 배우는 알고리즘 입문 : 파이썬 편', '시바타 보요', '이지스퍼블리싱');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), 'Node.js 백엔드 개발자 되기', '박승규', '골든래빗');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), 'Node.js 교과서', '조현영', '길벗');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '이한영의 Django(장고) 입문', '이한영', '디지털북스');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '젠킨스 마스터', '조나단 맥앨리스터', '에이콘출판사');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '팀 개발을 위한 Git, GitHub 시작하기', '정호영, 진유림', '한빛미디어');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '빅데이터 분석 도구 R 프로그래밍', '노만 매트로프', '에이콘출판사');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), 'Do it! 스위프트로 아이폰 앱 만들기 입문', '송호정, 이범근', '이지스퍼블리싱');
INSERT INTO tblTextbook (bookpk, tbname, writer, publisher) VALUES ((SELECT NVL(MAX(bookpk), 0) + 1 FROM tblTextbook), '스위프트 데이터 구조와 알고리즘', '에릭 아자르', '에이콘출판사');


--tblSubjectTextbook. INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), subpk, bookpk);
-- 도커 (Docker) 관련 교재 연결
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 1, 27);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 1, 28);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 1, 29);

-- 자바 (Java) 관련 교재 연결
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 2, 1);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 2, 2);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 2, 3);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 2, 4);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 2, 5);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 2, 6);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 2, 7);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 2, 8);

-- 딥러닝 (Deep Learning) 관련 교재 연결
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 3, 30);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 3, 31);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 3, 32);

-- 빅데이터 (Big Data) 관련 교재 연결
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 4, 33);

-- 자바스크립트 (JavaScript) 관련 교재 연결
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 5, 13);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 5, 14);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 5, 15);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 5, 16);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 5, 17);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 5, 18);

-- AWS (Amazon Web Services) 관련 교재 연결
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 6, 34);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 6, 35);

-- 오라클 (Oracle) 관련 교재 연결
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 7, 9);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 7, 10);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 7, 11);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 7, 12);

-- MYSQL 관련 교재 연결
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 8, 11);

-- MongoDB 관련 교재 연결
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 9, 36);

-- MariaDB 관련 교재 연결
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 10, 37);

-- 파이썬 (Python) 관련 교재 연결
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 11, 38);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 11, 39);

-- C++ 관련 교재 연결
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 12, 40);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 12, 41);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 12, 42);

-- Kotlin 관련 교재 연결
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 13, 43);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 13, 44);

-- PHP 관련 교재 연결
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 14, 45);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 14, 46);

-- C# 관련 교재 연결
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 15, 47);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 15, 48);

-- 자료구조와 알고리즘 관련 교재 연결
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 17, 49);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 17, 50);

-- Node.js 관련 교재 연결
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 18, 51);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 18, 52);

-- Django 관련 교재 연결
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 19, 53);

-- JSP 관련 교재 연결
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 21, 19);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 21, 20);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 21, 21);

-- 스프링 관련 교재 연결
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 22, 22);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 22, 23);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 22, 24);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 22, 25);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 22, 26);

-- 젠킨스 관련 교재 연결
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 23, 54);

-- 깃 관련 교재 연결
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 24, 55);

-- R 관련 교재 연결
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 25, 56);

-- 스위프트 관련 교재 연결
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 26, 57);
INSERT INTO tblSubjectTextbook (subookpk, subpk, bookpk) VALUES ((SELECT NVL(MAX(subookpk), 0) + 1 FROM tblSubjectTextbook), 26, 58);

--tblCourse
-- 1. 클라우드 기반 Java 웹 애플리케이션 개발 스쿨: AWS, Java, Spring
INSERT INTO tblCourse (crspk, crsname, crsduration) 
    VALUES ((SELECT NVL(MAX(crspk), 0) + 1 FROM tblCourse), '클라우드 기반 Java 웹 애플리케이션 개발 스쿨',180);

-- 2. 모바일 및 웹 애플리케이션 엔지니어링: Swift, JavaScript, Django
INSERT INTO tblCourse (crspk, crsname, crsduration) 
    VALUES ((SELECT NVL(MAX(crspk), 0) + 1 FROM tblCourse), '모바일 및 웹 애플리케이션 엔지니어링', 150);

-- 3. 데이터 주도 의사 결정을 위한 빅데이터 분석가 교육: MySQL, Python, AWS
INSERT INTO tblCourse (crspk, crsname, crsduration) 
    VALUES ((SELECT NVL(MAX(crspk), 0) + 1 FROM tblCourse), '데이터 주도 의사 결정을 위한 빅데이터 분석가 교육', 170);

-- 4. DevOps와 클라우드 인프라 구축 마스터 클래스: Docker, Kubernetes, AWS
INSERT INTO tblCourse (crspk, crsname, crsduration) 
    VALUES ((SELECT NVL(MAX(crspk), 0) + 1 FROM tblCourse), 'DevOps와 클라우드 인프라 구축 마스터 클래스',100);

-- 5. 프론트엔드 웹 애플리케이션 개발자 코스: JavaScript, React.js, Node.js
INSERT INTO tblCourse (crspk, crsname, crsduration) 
    VALUES ((SELECT NVL(MAX(crspk), 0) + 1 FROM tblCourse), '프론트엔드 웹 애플리케이션 개발자 코스', 120);

-- 6. 백엔드 서버 개발자 트레이닝: Java, Spring, MySQL
INSERT INTO tblCourse (crspk, crsname, crsduration) 
    VALUES ((SELECT NVL(MAX(crspk), 0) + 1 FROM tblCourse), '백엔드 서버 개발자 트레이닝', 195);

-- 7. 머신 러닝 엔지니어링과 딥러닝 애플리케이션 개발 프로그램
INSERT INTO tblCourse (crspk, crsname, crsduration) 
    VALUES ((SELECT NVL(MAX(crspk), 0) + 1 FROM tblCourse), '머신 러닝 엔지니어링과 딥러닝 애플리케이션 개발 프로그램', 200);

-- 8. 모바일 앱 백엔드 서버 개발자 스쿨: Swift, Node.js, MongoDB
INSERT INTO tblCourse (crspk, crsname, crsduration) 
    VALUES ((SELECT NVL(MAX(crspk), 0) + 1 FROM tblCourse), '모바일 앱 백엔드 서버 개발자 스쿨', 150);

-- 9. 클라우드 데이터베이스 및 분석 플랫폼 활용 전문가 교육: AWS, MySQL, Python
INSERT INTO tblCourse (crspk, crsname, crsduration) 
    VALUES ((SELECT NVL(MAX(crspk), 0) + 1 FROM tblCourse), '클라우드 데이터베이스 및 분석 플랫폼 활용 전문가 교육',150);

-- 10. 웹 개발을 위한 Git과 협업 도구 교육: Git, GitHub, Jenkins
INSERT INTO tblCourse (crspk, crsname, crsduration) 
    VALUES ((SELECT NVL(MAX(crspk), 0) + 1 FROM tblCourse), '웹 개발을 위한 Git과 협업 도구 교육', 90);

-- 1. 현대 웹 개발자 트레이닝 프로그램: Java, JavaScript, Django
INSERT INTO tblCourse (crspk, crsname, crsduration) 
    VALUES ((SELECT NVL(MAX(crspk), 0) + 1 FROM tblCourse), '현대 웹 개발자 트레이닝 프로그램',180);

-- 2. 클라우드 네이티브 애플리케이션 엔지니어링: AWS, Docker, Java
INSERT INTO tblCourse (crspk, crsname, crsduration) 
    VALUES ((SELECT NVL(MAX(crspk), 0) + 1 FROM tblCourse), '클라우드 네이티브 애플리케이션 엔지니어링', 170);

-- 3. 빅데이터와 딥러닝 기술 활용을 위한 개발자 양성 과정
INSERT INTO tblCourse (crspk, crsname, crsduration) 
    VALUES ((SELECT NVL(MAX(crspk), 0) + 1 FROM tblCourse), '빅데이터와 딥러닝 기술 활용을 위한 개발자 양성 과정', 190);

-- 4. Full-Stack 웹 애플리케이션 개발자 스쿨: Java, JavaScript, MySQL
INSERT INTO tblCourse (crspk, crsname, crsduration) 
    VALUES ((SELECT NVL(MAX(crspk), 0) + 1 FROM tblCourse), 'Full-Stack 웹 애플리케이션 개발자 스쿨', 180);

-- 5. 모바일 앱 개발 전문가 코스: Swift, AWS, Docker
INSERT INTO tblCourse (crspk, crsname, crsduration) 
    VALUES ((SELECT NVL(MAX(crspk), 0) + 1 FROM tblCourse), '모바일 앱 개발 전문가 코스', 170);

-- 6. 데이터 중심 애플리케이션 개발자 양성 프로그램: Java, MySQL, AWS
INSERT INTO tblCourse (crspk, crsname, crsduration) 
    VALUES ((SELECT NVL(MAX(crspk), 0) + 1 FROM tblCourse), '데이터 중심 애플리케이션 개발자 양성 프로그램',180);

-- 7. DevOps 엔지니어링 마스터 클래스: Docker, Jenkins, AWS
INSERT INTO tblCourse (crspk, crsname, crsduration) 
    VALUES ((SELECT NVL(MAX(crspk), 0) + 1 FROM tblCourse), 'DevOps 엔지니어링 마스터 클래스', 170);

-- 8. 프론트엔드 백엔드 풀 스택 개발자 교육: JavaScript, Node.js, Java
INSERT INTO tblCourse (crspk, crsname, crsduration) 
    VALUES ((SELECT NVL(MAX(crspk), 0) + 1 FROM tblCourse), '프론트엔드 백엔드 풀 스택 개발자 교육', 160);

-- 9. 빅데이터 시대를 위한 데이터 엔지니어링: MySQL, AWS, Python
INSERT INTO tblCourse (crspk, crsname, crsduration) 
    VALUES ((SELECT NVL(MAX(crspk), 0) + 1 FROM tblCourse), '빅데이터 시대를 위한 데이터 엔지니어링', 150);

-- 10. 안정적인 웹 애플리케이션 배포를 위한 CI/CD 교육: Git, Jenkins, AWS
INSERT INTO tblCourse (crspk, crsname, crsduration) 
    VALUES ((SELECT NVL(MAX(crspk), 0) + 1 FROM tblCourse), '안정적인 웹 애플리케이션 배포를 위한 CI/CD 교육', 170);
    
--tblOpenCourse
--INSERT INTO tblOpenCourse (ocpk, ocname, regdate, field, cospk, crpk, tpk, ocspk) VALUES ((SELECT NVL(MAX(ocpk), 0) + 1 FROM tblOpenCourse), 'ocname', TO_DATE('YYYY-MM-DD', 'regdate'), field, crspk, crpk, tpk, ocspk);														
INSERT INTO tblOpenCourse (ocpk, ocname, regdate, field, cospk, crpk, tpk, ocspk) VALUES ((SELECT NVL(MAX(ocpk), 0) + 1 FROM tblOpenCourse), '클라우드 기반 Java 웹 애플리케이션 개발 스쿨1', '2024-01-02', 30, 1, 1, 212, 2);	
INSERT INTO tblOpenCourse (ocpk, ocname, regdate, field, cospk, crpk, tpk, ocspk) VALUES ((SELECT NVL(MAX(ocpk), 0) + 1 FROM tblOpenCourse), '클라우드 기반 Java 웹 애플리케이션 개발 스쿨2', '2024-01-02', 30, 1, 2, 215, 2);
INSERT INTO tblOpenCourse (ocpk, ocname, regdate, field, cospk, crpk, tpk, ocspk) VALUES ((SELECT NVL(MAX(ocpk), 0) + 1 FROM tblOpenCourse), '프론트엔드 웹 애플리케이션 개발자 코스1', '2022-06-27', 20, 5, 1, 219, 3);
INSERT INTO tblOpenCourse (ocpk, ocname, regdate, field, cospk, crpk, tpk, ocspk) VALUES ((SELECT NVL(MAX(ocpk), 0) + 1 FROM tblOpenCourse), '프론트엔드 웹 애플리케이션 개발자 코스2', '2022-06-27', 20, 5, 3, 228, 3);		
INSERT INTO tblOpenCourse (ocpk, ocname, regdate, field, cospk, crpk, tpk, ocspk) VALUES ((SELECT NVL(MAX(ocpk), 0) + 1 FROM tblOpenCourse), '빅데이터와 딥러닝 기술 활용을 위한 개발자 양성 과정1', '2023-12-27', 30, 13, 3,  221, 2);
INSERT INTO tblOpenCourse (ocpk, ocname, regdate, field, cospk, crpk, tpk, ocspk) VALUES ((SELECT NVL(MAX(ocpk), 0) + 1 FROM tblOpenCourse), '빅데이터와 딥러닝 기술 활용을 위한 개발자 양성 과정2', '2023-12-27', 26, 13, 4, 222, 2);
INSERT INTO tblOpenCourse (ocpk, ocname, regdate, field, cospk, crpk, tpk, ocspk) VALUES ((SELECT NVL(MAX(ocpk), 0) + 1 FROM tblOpenCourse), '모바일 앱 개발 전문가 코스1', '2024-07-02', 30, 15, 1, 213, 1);
INSERT INTO tblOpenCourse (ocpk, ocname, regdate, field, cospk, crpk, tpk, ocspk) VALUES ((SELECT NVL(MAX(ocpk), 0) + 1 FROM tblOpenCourse), '모바일 앱 개발 전문가 코스2', '2024-07-02', 30, 15, 2, 220, 1);		
INSERT INTO tblOpenCourse (ocpk, ocname, regdate, field, cospk, crpk, tpk, ocspk) VALUES ((SELECT NVL(MAX(ocpk), 0) + 1 FROM tblOpenCourse), 'Full-Stack 웹 애플리케이션 개발자 스쿨1', '2024-02-12', 26, 14, 5, 217, 2);	
INSERT INTO tblOpenCourse (ocpk, ocname, regdate, field, cospk, crpk, tpk, ocspk) VALUES ((SELECT NVL(MAX(ocpk), 0) + 1 FROM tblOpenCourse), 'Full-Stack 웹 애플리케이션 개발자 스쿨1', '2024-02-12', 26, 14, 6, 218, 2);	

--tblExamInfo
INSERT INTO tblExamInfo (exinfopk, examdate, examtype, wt, subpk, ocpk) VALUES ((SELECT NVL(MAX(exinfopk), 0) + 1 FROM tblExamInfo), TO_DATE('2024-02-02', 'examdate'), '필기', 10, 2, 1);
INSERT INTO tblExamInfo (exinfopk, examdate, examtype, wt, subpk, ocpk) VALUES ((SELECT NVL(MAX(exinfopk), 0) + 1 FROM tblExamInfo), TO_DATE('2024-02-02', 'examdate'), '필기', 10, 2, 2);
INSERT INTO tblExamInfo (exinfopk, examdate, examtype, wt, subpk, ocpk) VALUES ((SELECT NVL(MAX(exinfopk), 0) + 1 FROM tblExamInfo), TO_DATE('2024-02-02', 'examdate'), '실기', 10, 2, 1);
INSERT INTO tblExamInfo (exinfopk, examdate, examtype, wt, subpk, ocpk) VALUES ((SELECT NVL(MAX(exinfopk), 0) + 1 FROM tblExamInfo), TO_DATE('2024-02-02', 'examdate'), '실기', 10, 2, 2);
INSERT INTO tblExamInfo (exinfopk, examdate, examtype, wt, subpk, ocpk) VALUES ((SELECT NVL(MAX(exinfopk), 0) + 1 FROM tblExamInfo), TO_DATE('2024-02-02', 'examdate'), '실기', 20, 7, 1);
INSERT INTO tblExamInfo (exinfopk, examdate, examtype, wt, subpk, ocpk) VALUES ((SELECT NVL(MAX(exinfopk), 0) + 1 FROM tblExamInfo), TO_DATE('2024-02-02', 'examdate'), '실기', 20, 7, 2);
INSERT INTO tblExamInfo (exinfopk, examdate, examtype, wt, subpk, ocpk) VALUES ((SELECT NVL(MAX(exinfopk), 0) + 1 FROM tblExamInfo), TO_DATE('2024-02-02', 'examdate'), '실기', 20, 7, 1);
INSERT INTO tblExamInfo (exinfopk, examdate, examtype, wt, subpk, ocpk) VALUES ((SELECT NVL(MAX(exinfopk), 0) + 1 FROM tblExamInfo), TO_DATE('2024-02-02', 'examdate'), '실기', 20, 7, 2);
INSERT INTO tblExamInfo (exinfopk, examdate, examtype, wt, subpk, ocpk) VALUES ((SELECT NVL(MAX(exinfopk), 0) + 1 FROM tblExamInfo), TO_DATE('2024-02-02', 'examdate'), '실기', 50, 22, 1);
INSERT INTO tblExamInfo (exinfopk, examdate, examtype, wt, subpk, ocpk) VALUES ((SELECT NVL(MAX(exinfopk), 0) + 1 FROM tblExamInfo), TO_DATE('2024-02-02', 'examdate'), '실기', 50, 22, 2);
select * from tblsubject;
--tblExam
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), '자바의 예약어가 아닌 것은 무엇입니까?', 숫자);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), '자바에서 사용되는 기본 데이터 타입이 아닌 것은 무엇입니까?', 숫자);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), '자바에서 클래스와 인터페이스를 동시에 상속할 수 있습니까?', 숫자);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), '자바에서 "==" 연산자는 무엇을 비교합니까?', 숫자);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), '자바에서 인터페이스에 변수를 선언할 수 있습니까?', 숫자);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), '오버로딩과 오버라이딩에 대해서 특징 및 차이점, 활용 사례를 자세히 서술하시오.', 숫자);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), '딥러닝에서 "과적합(Overfitting)"이란 무엇이며, 어떻게 방지할 수 있나요?', 숫자);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), 'CNN(Convolutional Neural Network)에서 합성곱 층(Convolutional Layer)과 풀링 층(Pooling Layer)의 역할에 대해 설명하세요.', 숫자);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), 'RNN(Recurrent Neural Network)과 LSTM(Long Short-Term Memory)의 차이점은 무엇이며, 각각의 장단점은 무엇인가요?', 숫자);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), '자기 지도 학습(Self-supervised Learning)이란 무엇이며, 자기 지도 학습을 활용한 딥러닝 알고리즘의 예시를 제시하세요.', 숫자);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), '생성적 적대 신경망(GAN, Generative Adversarial Network)의 작동 원리를 설명하고, GAN이 사용되는 영역 중 하나를 예시로 들어보세요.', 숫자);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), '오라클에서 인덱스(Index)의 역할과 사용 이유에 대해 설명하세요.', 숫자);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), 'PL/SQL이란 무엇이며, 어떻게 사용되는지 간단히 설명하세요.', 숫자);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), '오라클에서 트랜잭션(Transaction)의 개념과 ACID 특성에 대해 설명하세요.', 숫자);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), '오라클에서 뷰(View)의 역할과 장점을 설명하세요.', 숫자);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), '오라클에서 외부키(Foreign Key)의 역할과 사용 이유에 대해 설명하세요.', 숫자);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), '자바스크립트에서 ''클로저(Closure)''란 무엇인가요? 클로저가 사용되는 예시를 제시하세요.', 숫자);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), 'Promise와 async/await의 차이점은 무엇인가요? 각각의 장단점은 무엇인가요?', 숫자);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), '자바스크립트에서 ''이벤트 위임(Event Delegation)''이란 무엇이며, 어떻게 사용되나요?', 숫자);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), '자바스크립트에서 ''호이스팅(Hoisting)''이란 무엇이며, 어떻게 작동하나요?', 숫자);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), 'ES6의 중요한 기능 중 하나를 선택하여 설명하고, 예시를 제시하세요.', 숫자);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), '파이썬에서의 리스트(list)와 튜플(tuple)의 차이점은 무엇인가요?', 숫자);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), '파이썬에서의 제너레이터(generator)란 무엇이며, 어떻게 사용되나요?', 숫자);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), '파이썬에서의 예외 처리(exception handling) 방법에는 어떤 것들이 있나요?', 숫자);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), '파이썬에서 클래스(class)와 인스턴스(instance)의 관계를 설명해주세요.', 숫자);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), '파이썬의 가상환경(virtual environment)이란 무엇이며, 어떻게 사용하나요?', 숫자);
INSERT INTO tblExam (expk, exam, eipk)   
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), 'Jenkins란 무엇이며, 어떻게 사용되나요?', 1);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), 'Jenkins에서 파이프라인(pipeline)이란 무엇이며, 어떻게 작동하나요?', 1);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), 'Jenkins에서 빌드(build)와 배포(deploy)의 차이점은 무엇인가요?', 1);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), 'Jenkins에서 사용되는 워크스페이스(workspace)란 무엇이며, 어떻게 활용하나요?', 1);
INSERT INTO tblExam (expk, exam, eipk) 
    VALUES ((SELECT NVL(MAX(expk), 0) + 1 FROM tblExam), 'Jenkins에서 빌드 파라미터(build parameters)가 무엇이며, 어떻게 설정하나요?', 1);

select * from tbluser where role='학생';
select * from tblopencourse op join tblOpenCourseStatus cs on op.ocspk = cs.ocspk;
select * from tblOpenCourseStatus;

update  tblUser set name ='백은현' where userpk = 1;	
update  tblUser set name ='백민근' where userpk = 2;	
update  tblUser set name ='조혜대' where userpk = 3;	
update  tblUser set name ='이철근' where userpk = 4;	
update  tblUser set name ='이대영' where userpk = 5;	
update  tblUser set name ='박원석' where userpk = 6;	
update  tblUser set name ='한현성' where userpk = 7;	
update  tblUser set name ='조민원' where userpk = 8;	
update  tblUser set name ='백근나' where userpk = 9;	
update  tblUser set name ='최근미' where userpk = 10;	
update  tblUser set name ='이현정' where userpk = 11;	
update  tblUser set name ='이규영' where userpk = 12;	
update  tblUser set name ='백형섭' where userpk = 13;	
update  tblUser set name ='최정민' where userpk = 14;	
update  tblUser set name ='백민욱' where userpk = 15;	
update  tblUser set name ='송혜희' where userpk = 16;	
update  tblUser set name ='백섭근' where userpk = 17;	
update  tblUser set name ='정철철' where userpk = 18;	
update  tblUser set name ='송석규' where userpk = 19;	
update  tblUser set name ='윤섭철' where userpk = 20;	
update  tblUser set name ='한규민' where userpk = 21;	
update  tblUser set name ='백숙현' where userpk = 22;	
update  tblUser set name ='박우우' where userpk = 23;	
update  tblUser set name ='한수영' where userpk = 24;	
update  tblUser set name ='한우현' where userpk = 25;	
update  tblUser set name ='황정미' where userpk = 26;	
update  tblUser set name ='조현섭' where userpk = 27;	
update  tblUser set name ='황민혜' where userpk = 28;	
update  tblUser set name ='최진민' where userpk = 29;	
update  tblUser set name ='손정형' where userpk = 30;	
update  tblUser set name ='조철우' where userpk = 31;	
update  tblUser set name ='김희나' where userpk = 32;	
update  tblUser set name ='김석숙' where userpk = 33;	
update  tblUser set name ='최성대' where userpk = 34;	
update  tblUser set name ='송현철' where userpk = 35;	
update  tblUser set name ='김희은' where userpk = 36;	
update  tblUser set name ='김영미' where userpk = 37;	
update  tblUser set name ='손숙진' where userpk = 38;	
update  tblUser set name ='조원수' where userpk = 39;	
update  tblUser set name ='황영현' where userpk = 40;	
update  tblUser set name ='김현숙' where userpk = 41;	
update  tblUser set name ='최규현' where userpk = 42;	
update  tblUser set name ='한민민' where userpk = 43;	
update  tblUser set name ='백민미' where userpk = 44;	
update  tblUser set name ='정욱우' where userpk = 45;	
update  tblUser set name ='최영원' where userpk = 46;	
update  tblUser set name ='최규혜' where userpk = 47;	
update  tblUser set name ='황미영' where userpk = 48;	
update  tblUser set name ='최나나' where userpk = 49;	
update  tblUser set name ='정석미' where userpk = 50;	
update  tblUser set name ='이민형' where userpk = 51;	
update  tblUser set name ='한성석' where userpk = 52;	
update  tblUser set name ='김진준' where userpk = 53;	
update  tblUser set name ='백은섭' where userpk = 54;	
update  tblUser set name ='송철민' where userpk = 55;	
update  tblUser set name ='김석민' where userpk = 56;	
update  tblUser set name ='한희형' where userpk = 57;	
update  tblUser set name ='이희원' where userpk = 58;	
update  tblUser set name ='정정원' where userpk = 59;	
update  tblUser set name ='송근민' where userpk = 60;	
update  tblUser set name ='윤성승' where userpk = 61;	
update  tblUser set name ='정나준' where userpk = 62;	
update  tblUser set name ='이희정' where userpk = 63;	
update  tblUser set name ='한규석' where userpk = 64;	
update  tblUser set name ='정원규' where userpk = 65;	
update  tblUser set name ='황영영' where userpk = 66;	
update  tblUser set name ='한민우' where userpk = 67;	
update  tblUser set name ='박성원' where userpk = 68;	
update  tblUser set name ='손원숙' where userpk = 69;	
update  tblUser set name ='김원대' where userpk = 70;	
update  tblUser set name ='김지준' where userpk = 71;	
update  tblUser set name ='윤정규' where userpk = 72;	
update  tblUser set name ='최규현' where userpk = 73;	
update  tblUser set name ='최영철' where userpk = 74;	
update  tblUser set name ='손지민' where userpk = 75;	
update  tblUser set name ='윤미현' where userpk = 76;	
update  tblUser set name ='최정준' where userpk = 77;	
update  tblUser set name ='최준석' where userpk = 78;	
update  tblUser set name ='조철영' where userpk = 79;	
update  tblUser set name ='황희근' where userpk = 80;	
update  tblUser set name ='박원미' where userpk = 81;	
update  tblUser set name ='조민미' where userpk = 82;	
update  tblUser set name ='황진석' where userpk = 83;	
update  tblUser set name ='김우대' where userpk = 84;	
update  tblUser set name ='백준미' where userpk = 85;	
update  tblUser set name ='조현석' where userpk = 86;	
update  tblUser set name ='조희근' where userpk = 87;	
update  tblUser set name ='김근정' where userpk = 88;	
update  tblUser set name ='손희욱' where userpk = 89;	
update  tblUser set name ='백숙진' where userpk = 90;	
update  tblUser set name ='조민철' where userpk = 91;	
update  tblUser set name ='송섭승' where userpk = 92;	
update  tblUser set name ='송민수' where userpk = 93;	
update  tblUser set name ='최나준' where userpk = 94;	
update  tblUser set name ='박민정' where userpk = 95;	
update  tblUser set name ='조욱대' where userpk = 96;	
update  tblUser set name ='최현희' where userpk = 97;	
update  tblUser set name ='백철원' where userpk = 98;	
update  tblUser set name ='손근현' where userpk = 99;	
update  tblUser set name ='김성진' where userpk = 100;	
update  tblUser set name ='백미숙' where userpk = 101;	
update  tblUser set name ='김현대' where userpk = 102;	
update  tblUser set name ='이민규' where userpk = 103;	
update  tblUser set name ='백희숙' where userpk = 104;	
update  tblUser set name ='최정혜' where userpk = 105;	
update  tblUser set name ='박규우' where userpk = 106;	
update  tblUser set name ='한정준' where userpk = 107;	
update  tblUser set name ='윤영미' where userpk = 108;	
update  tblUser set name ='윤나철' where userpk = 109;	
update  tblUser set name ='이승승' where userpk = 110;	
update  tblUser set name ='김희민' where userpk = 111;	
update  tblUser set name ='윤은준' where userpk = 112;	
update  tblUser set name ='황영우' where userpk = 113;	
update  tblUser set name ='백영민' where userpk = 114;	
update  tblUser set name ='손현민' where userpk = 115;	
update  tblUser set name ='윤대철' where userpk = 116;	
update  tblUser set name ='정욱대' where userpk = 117;	
update  tblUser set name ='황승원' where userpk = 118;	
update  tblUser set name ='정우섭' where userpk = 119;	
update  tblUser set name ='이성형' where userpk = 120;	
update  tblUser set name ='윤영욱' where userpk = 121;	
update  tblUser set name ='황미수' where userpk = 122;	
update  tblUser set name ='정현은' where userpk = 123;	
update  tblUser set name ='박은대' where userpk = 124;	
update  tblUser set name ='윤은수' where userpk = 125;	
update  tblUser set name ='황숙현' where userpk = 126;	
update  tblUser set name ='김나수' where userpk = 127;	
update  tblUser set name ='손근성' where userpk = 128;	
update  tblUser set name ='김우영' where userpk = 129;	
update  tblUser set name ='조섭석' where userpk = 130;	
update  tblUser set name ='정원성' where userpk = 131;	
update  tblUser set name ='박희민' where userpk = 132;	
update  tblUser set name ='윤철섭' where userpk = 133;	
update  tblUser set name ='최미숙' where userpk = 134;	
update  tblUser set name ='윤우지' where userpk = 135;	
update  tblUser set name ='박진민' where userpk = 136;	
update  tblUser set name ='윤정수' where userpk = 137;	
update  tblUser set name ='윤욱희' where userpk = 138;	
update  tblUser set name ='백우현' where userpk = 139;	
update  tblUser set name ='최미원' where userpk = 140;	
update  tblUser set name ='송미정' where userpk = 141;	
update  tblUser set name ='조섭대' where userpk = 142;	
update  tblUser set name ='손민수' where userpk = 143;	
update  tblUser set name ='손수수' where userpk = 144;	
update  tblUser set name ='한희준' where userpk = 145;	
update  tblUser set name ='최지수' where userpk = 146;	
update  tblUser set name ='송지근' where userpk = 147;	
update  tblUser set name ='정영미' where userpk = 148;	
update  tblUser set name ='황근희' where userpk = 149;	
update  tblUser set name ='조규성' where userpk = 150;	
update  tblUser set name ='백섭형' where userpk = 151;	
update  tblUser set name ='손근원' where userpk = 152;	
update  tblUser set name ='조나현' where userpk = 153;	
update  tblUser set name ='윤혜성' where userpk = 154;	
update  tblUser set name ='이성지' where userpk = 155;	
update  tblUser set name ='김승원' where userpk = 156;	
update  tblUser set name ='정영석' where userpk = 157;	
update  tblUser set name ='박민성' where userpk = 158;	
update  tblUser set name ='백진현' where userpk = 159;	
update  tblUser set name ='송진영' where userpk = 160;	
update  tblUser set name ='한은숙' where userpk = 161;	
update  tblUser set name ='송나나' where userpk = 162;	
update  tblUser set name ='윤승수' where userpk = 163;	
update  tblUser set name ='한형현' where userpk = 164;	
update  tblUser set name ='송근원' where userpk = 165;	
update  tblUser set name ='황석현' where userpk = 166;	
update  tblUser set name ='정석영' where userpk = 167;	
update  tblUser set name ='백지정' where userpk = 168;	
update  tblUser set name ='손희영' where userpk = 169;	
update  tblUser set name ='최욱대' where userpk = 170;	
update  tblUser set name ='백진수' where userpk = 171;	
update  tblUser set name ='황현숙' where userpk = 172;	
update  tblUser set name ='최욱원' where userpk = 173;	
update  tblUser set name ='윤은성' where userpk = 174;	
update  tblUser set name ='송혜희' where userpk = 175;	
update  tblUser set name ='백우섭' where userpk = 176;	
update  tblUser set name ='이대미' where userpk = 177;	
update  tblUser set name ='윤규정' where userpk = 178;	
update  tblUser set name ='송원진' where userpk = 179;	
update  tblUser set name ='박우석' where userpk = 180;	
update  tblUser set name ='백철민' where userpk = 181;	
update  tblUser set name ='최미성' where userpk = 182;	
update  tblUser set name ='한형나' where userpk = 183;	
update  tblUser set name ='최원영' where userpk = 184;	
update  tblUser set name ='송혜수' where userpk = 185;	
update  tblUser set name ='한석희' where userpk = 186;	
update  tblUser set name ='황영승' where userpk = 187;	
update  tblUser set name ='한근지' where userpk = 188;	
update  tblUser set name ='김숙원' where userpk = 189;	
update  tblUser set name ='김영영' where userpk = 190;	
update  tblUser set name ='손혜현' where userpk = 191;	
update  tblUser set name ='손욱현' where userpk = 192;	
update  tblUser set name ='최은섭' where userpk = 193;	
update  tblUser set name ='윤현희' where userpk = 194;	
update  tblUser set name ='오지현' where userpk = 195;	
update  tblUser set name ='한원영' where userpk = 196;	
update  tblUser set name ='조준찬' where userpk = 197;	
update  tblUser set name ='조경윤' where userpk = 198;	
update  tblUser set name ='이준원' where userpk = 199;	
update  tblUser set name ='양시현' where userpk = 200;	
update  tblUser set name ='임명윤' where userpk = 201;	
update  tblUser set name ='권명원' where userpk = 202;	
update  tblUser set name ='최하혜' where userpk = 203;	
update  tblUser set name ='문시찬' where userpk = 204;	
update  tblUser set name ='김준혁' where userpk = 205;	
update  tblUser set name ='윤정훈' where userpk = 206;	
update  tblUser set name ='한수훈' where userpk = 207;	
update  tblUser set name ='장다준' where userpk = 208;	
update  tblUser set name ='전태현' where userpk = 209;	
update  tblUser set name ='권정석' where userpk = 210;	
update  tblUser set name ='문경석' where userpk = 211;	
update  tblUser set name ='장서연' where userpk = 212;	
update  tblUser set name ='강준연' where userpk = 213;	
update  tblUser set name ='조수훈' where userpk = 214;	
update  tblUser set name ='김원훈' where userpk = 215;	
update  tblUser set name ='양명원' where userpk = 216;	
update  tblUser set name ='윤지민' where userpk = 217;
update  tblUser set name ='고지윤' where userpk = 218;	
update  tblUser set name ='정원혁' where userpk = 219;	
update  tblUser set name ='최하혜' where userpk = 220;	
update  tblUser set name ='문수석' where userpk = 221;	
update  tblUser set name ='장지연' where userpk = 222;	
update  tblUser set name ='고경원' where userpk = 223;	
update  tblUser set name ='양시혜' where userpk = 224;	
update  tblUser set name ='문민윤' where userpk = 225;	
update  tblUser set name ='윤준훈' where userpk = 226;	
update  tblUser set name ='임하석' where userpk = 227;	
update  tblUser set name ='정원훈' where userpk = 228;	
update  tblUser set name ='권태윤' where userpk = 229;	
update  tblUser set name ='한하민' where userpk = 230;	
update  tblUser set name ='이다우' where userpk = 231;	
update  tblUser set name ='권다혜' where userpk = 232;	

commit;

INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백은현', '950315-2886781', '01059006133', 'P', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백민근', '980720-1214884', '01059055661', 'P', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '조혜대', '931105-1820652', '01091016321', 'P', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '이철근', '901225-1613393', '01059719890', 'P', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '이대영', '960810-1684167', '01033841764', 'P', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '박원석', '940401-1664122', '01027655794', 'P', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '한현성', '970218-1048092', '01016953507', 'P', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '조민원', '920630-2116267', '01063611375', 'P', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백근나', '911008-1017891', '01067960415', 'P', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최근미', '990512-2164597', '01038075620', 'P', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '이현정', '950709-2426826', '01054395044', 'P', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '이규영', '980807-2739436', '01056559822', 'P', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백형섭', '940321-2747658', '01068165821', 'P', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최정민', '950330-2046936', '01097568874', 'P', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백민욱', '930630-1918684', '01035169625', 'P', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '송혜희', '900911-1433593', '01070449625', 'P', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백섭근', '940614-2539181', '01026760543', 'P', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '정철철', '930501-2419753', '01030369984', 'P', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '송석규', '941118-2938477', '01005906386', 'P', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '윤섭철', '930425-2475351', '01018843155', 'P', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '한규민', '961123-1960049', '01007830712', 'P', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백숙현', '941104-2346461', '01076511082', 'P', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '박우우', '970318-2118528', '01066894164', 'P', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '한수영', '910123-2083961', '01070868721', 'P', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최미성', '950701-2865939', '01019800827', 'F', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '한형나', '961219-1640537', '01085871137', 'F', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최원영', '960410-1179774', '01040788265', 'F', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '송혜수', '930320-1228162', '01037660016', 'F', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '한석희', '970625-2760662', '01044891935', 'F', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '황영승', '950224-2764443', '01078070316', 'F', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '한근지', '940825-2365681', '01053354821', 'F', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '김숙원', '000713-4819121', '01053998290', 'F', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '김영영', '980407-1157832', '01013066015', 'F', 1);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '한우현', '010426-3611550', '01033423742', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '황정미', '910415-1523770', '01007426789', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '조현섭', '970530-1560487', '01032266914', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '황민혜', '910205-2316741', '01078448814', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최진민', '930330-1772496', '01016522642', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '손정형', '940210-2819368', '01028064331', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '조철우', '980514-1986616', '01033063840', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '김희나', '971104-1347733', '01019371544', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '김석숙', '940609-1288343', '01015974344', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최성대', '980512-1322281', '01046604659', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '송현철', '980627-2662987', '01093718557', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '김희은', '960101-2254785', '01042113378', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '김영미', '920722-1341065', '01082238757', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '손숙진', '930810-2140141', '01035468053', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '조원수', '950817-1814097', '01086677598', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '황영현', '960626-2443122', '01012435059', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '김현숙', '000707-3545264', '01030650286', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최규현', '921122-2854523', '01056069772', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '한민민', '941224-1057328', '01039085044', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백민미', '980822-2941778', '01047937640', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '정욱우', '970826-2063449', '01009621737', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최영원', '930805-2269372', '01028953180', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최규혜', '910703-1858269', '01070754048', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '황미영', '950324-1448744', '01034109466', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최나나', '961227-2629211', '01059055219', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '정석미', '021127-4769838', '01004692362', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '이민형', '991007-2472423', '01010256117', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '한성석', '921110-2227321', '01073687610', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '김진준', '930812-1856190', '01040073791', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백은섭', '901201-2986081', '01029859583', 'P', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '손혜현', '941226-1758762', '01001628611', 'F', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '손욱현', '910804-1036273', '01070918806', 'F', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최은섭', '910101-2530115', '01054790266', 'F', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '윤현희', '970817-2221392', '01097106846', 'F', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '오지현', '950227-2412922', '01040421641', 'F', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '한원영', '960808-2679980', '01006040345', 'F', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '조준찬', '981020-2129118', '01062558210', 'F', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '조경윤', '901101-1956534', '01099013490', 'F', 2);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '송철민', '950701-1754742', '01037276784', 'P', 3);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '김석민', '930315-2655711', '01038320727', 'P', 3);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '한희형', '931028-1514569', '01011088656', 'P', 3);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '이희원', '900526-2153017', '01084274375', 'P', 3);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '정정원', '940512-1914166', '01036102307', 'P', 3);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '송근민', '971208-2750339', '01017229049', 'P', 3);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '윤성승', '930726-2669673', '01010656081', 'P', 3);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '정나준', '960521-1330286', '01036769673', 'P', 3);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '이희정', '970705-2621521', '01054995845', 'P', 3);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '한규석', '960627-1488425', '01062944508', 'P', 3);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '정원규', '961118-1338526', '01098248226', 'P', 3);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '황영영', '030407-3677243', '01073888263', 'P', 3);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '한민우', '980409-2048680', '01054491218', 'P', 3);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '박성원', '920414-1837748', '01006373224', 'P', 3);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '손원숙', '981122-2221822', '01065820890', 'P', 3);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '김원대', '900513-2926480', '01060574457', 'P', 3);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '김지준', '931020-2564762', '01013269522', 'P', 3);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '윤정규', '980430-2012030', '01093887619', 'P', 3);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최규현', '930324-1013071', '01099531869', 'P', 3);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최영철', '980117-2037311', '01099635766', 'P', 3);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '이준원', '970209-2751110', '01033550180', 'F', 3);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '양시현', '940427-2519653', '01096661328', 'F', 3);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '임명윤', '911123-1383228', '01024173832', 'F', 3);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '권명원', '900924-1736658', '01005469250', 'F', 3);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '손지민', '930308-1144858', '01000203473', 'P', 4);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '윤미현', '970715-2466876', '01087389100', 'P', 4);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최정준', '940923-2960968', '01012917463', 'P', 4);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최준석', '920210-1114392', '01038076409', 'P', 4);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '조철영', '930924-2420152', '01087558729', 'P', 4);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '황희근', '940213-1769843', '01047359321', 'P', 4);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '박원미', '910329-2228641', '01092885908', 'P', 4);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '조민미', '010807-4316270', '01027544595', 'P', 4);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '황진석', '950522-1161051', '01025472286', 'P', 4);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '김우대', '980430-1213110', '01075148836', 'P', 4);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백준미', '930118-2780441', '01073186647', 'P', 4);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '조현석', '910328-1362064', '01031495712', 'P', 4);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '조희근', '980820-1928840', '01099293801', 'P', 4);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '김근정', '910424-1477762', '01007069133', 'P', 4);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '손희욱', '911214-2169741', '01024821214', 'P', 4);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백숙진', '930809-1817961', '01093670585', 'P', 4);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '조민철', '941004-1331449', '01015206209', 'P', 4);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '송섭승', '970703-2961136', '01049350988', 'P', 4);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '송민수', '980618-1518281', '01085487860', 'P', 4);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최나준', '960924-2754753', '01059581149', 'P', 4);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '조규성', '920330-2211925', '01069932530', 'F', 4);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백섭형', '940306-2762489', '01039366418', 'F', 4);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '손근원', '901109-2413521', '01034398230', 'F', 4);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '조나현', '930806-1822466', '01079433068', 'F', 4);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '윤혜성', '901205-2520041', '01042470326', 'F', 4);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '박민정', '980605-1341588', '01082668305', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '조욱대', '961103-2585160', '01031415188', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최현희', '921128-1260455', '01055293501', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백철원', '960613-2460316', '01001099986', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '손근현', '900713-1463017', '01080979234', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '김성진', '951114-1534255', '01046895658', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백미숙', '910806-2483970', '01051249539', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '김현대', '960521-1519263', '01022708310', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '이민규', '910114-2213191', '01060712992', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백희숙', '960805-1418495', '01090814391', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최정혜', '901115-2667458', '01003550296', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '박규우', '951203-1337394', '01086943701', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '한정준', '920510-1020251', '01017945144', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '윤영미', '971211-2511376', '01012830145', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '윤나철', '971015-1015841', '01070999491', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '이승승', '000606-4864761', '01079238499', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '김희민', '920708-2960718', '01003131871', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '윤은준', '951215-2342899', '01041095499', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '황영우', '930729-1775696', '01079473176', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백영민', '900128-2334965', '01081302225', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '손현민', '910728-1774673', '01031806717', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '윤대철', '010722-3378643', '01060845033', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '정욱대', '940705-1150539', '01008357484', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '황승원', '940110-1937861', '01006806236', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '정우섭', '930413-1838883', '01050651424', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '이성형', '940821-1332492', '01095940519', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '윤영욱', '950206-2937283', '01077424474', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '황미수', '900330-2918693', '01026977147', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '정현은', '930727-1579320', '01054948492', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '박은대', '900915-1877213', '01024856673', 'P', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '이성지', '970111-1676112', '01068601270', 'F', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '김승원', '990406-1618963', '01081591180', 'F', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '정영석', '910923-2235719', '01012424387', 'F', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '박민성', '910716-1011236', '01041653869', 'F', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백진현', '990107-1919550', '01059326405', 'F', 5);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '윤은수', '940630-2815528', '01005191776', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '황숙현', '000514-4459978', '01065595849', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '김나수', '970728-2763257', '01056784617', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '손근성', '911230-2065042', '01032166461', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '김우영', '930512-2242178', '01048608364', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '조섭석', '941107-1169050', '01093421824', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '정원성', '980525-2719946', '01013840840', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '박희민', '970704-1863349', '01065501409', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '윤철섭', '951109-1323434', '01022715748', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최미숙', '990205-2279597', '01086779342', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '윤우지', '930403-2349687', '01014827609', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '박진민', '930801-1612146', '01071582400', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '윤정수', '940714-2244487', '01024074069', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '윤욱희', '980915-1756453', '01091959663', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백우현', '001225-3840316', '01001030977', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최미원', '920126-2284091', '01041946508', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '송미정', '960427-1338351', '01046129852', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '조섭대', '931003-1222264', '01091013461', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '손민수', '971118-1016650', '01054813338', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '손수수', '910330-2660163', '01097658982', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '한희준', '920924-1417298', '01008415670', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최지수', '920705-1840280', '01019242298', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '송지근', '920922-2880567', '01066194936', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '정영미', '950929-1249427', '01059822504', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '황근희', '920426-1358534', '01005541433', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '조규성', '920330-2211925', '01069932530', 'P', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '송진영', '971202-2141824', '01060767821', 'F', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '한은숙', '910220-2855513', '01026048658', 'F', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '송나나', '940711-1351463', '01063599884', 'F', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '윤승수', '930830-2245369', '01021325898', 'F', 6);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백섭형', '940306-2762489', '01039366418', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '손근원', '901109-2413521', '01034398230', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '조나현', '930806-1822466', '01079433068', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '윤혜성', '901205-2520041', '01042470326', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '이성지', '970111-1676112', '01068601270', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '김승원', '990406-1618963', '01081591180', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '정영석', '910923-2235719', '01012424387', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '박민성', '910716-1011236', '01041653869', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백진현', '990107-1919550', '01059326405', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '송진영', '971202-2141824', '01060767821', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '한은숙', '910220-2855513', '01026048658', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '송나나', '940711-1351463', '01063599884', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '윤승수', '930830-2245369', '01021325898', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '한형현', '920321-1317692', '01042044813', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '송근원', '010516-4322755', '01096339833', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '황석현', '910617-2271877', '01049094535', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '정석영', '910809-2444165', '01074503124', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백지정', '900621-2050984', '01035848141', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '손희영', '930618-1912990', '01050874356', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최욱대', '920125-1649050', '01068534211', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백진수', '900928-1117657', '01003297551', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '황현숙', '901013-2583288', '01028502007', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최욱원', '910605-1257533', '01010862681', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '윤은성', '951009-1755251', '01015350160', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '송혜희', '970727-2433611', '01067268272', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백우섭', '920710-2582714', '01029534374', 'P', 9);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '이대미', '920510-1725717', '01084572632', 'P', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '윤규정', '980413-2451255', '01067714247', 'P', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '송원진', '950410-2619554', '01002343837', 'P', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '박우석', '970705-2786246', '01097613143', 'P', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '백철민', '920115-2421371', '01086161586', 'P', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최미성', '950701-2865939', '01019800827', 'P', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '한형나', '961219-1640537', '01085871137', 'P', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최원영', '960410-1179774', '01040788265', 'P', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '송혜수', '930320-1228162', '01037660016', 'P', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '한석희', '970625-2760662', '01044891935', 'P', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '황영승', '950224-2764443', '01078070316', 'P', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '한근지', '940825-2365681', '01053354821', 'P', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '김숙원', '000713-4819121', '01053998290', 'P', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '김영영', '980407-1157832', '01013066015', 'P', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '손혜현', '941226-1758762', '01001628611', 'P', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '손욱현', '910804-1036273', '01070918806', 'P', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '최은섭', '910101-2530115', '01054790266', 'P', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '윤현희', '970817-2221392', '01097106846', 'P', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '오지현', '950227-2412922', '01040421641', 'P', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '한원영', '960808-2679980', '01006040345', 'P', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '조준찬', '981020-2129118', '01062558210', 'P', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '조경윤', '901101-1956534', '01099013490', 'P', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '이준원', '970209-2751110', '01033550180', 'P', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '양시현', '940427-2519653', '01096661328', 'P', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '임명윤', '911123-1383228', '01024173832', 'P', 10);
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), '권명원', '900924-1736658', '01005469250', 'P', 10);

INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (1, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '삼성전자', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (2, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '네이버', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (3, TO_DATE('2023-12-29', 'YYYY-MM-DD'), 'SK텔레콤', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (5, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '현대자동차', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (6, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '에이프로젠', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (7, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '한화', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (9, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '셀트리온', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (10, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '이마트', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (11, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '롯데쇼핑', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (12, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '롯데제과', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (13, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '기아자동차', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (14, TO_DATE('2023-12-29', 'YYYY-MM-DD'), 'CJ제일제당', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (15, TO_DATE('2023-12-29', 'YYYY-MM-DD'), 'LG전자', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (16, TO_DATE('2023-12-29', 'YYYY-MM-DD'), 'LG유플러스', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (18, TO_DATE('2023-12-29', 'YYYY-MM-DD'), 'KT', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (19, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '롯데칠성음료', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (20, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '현대백화점', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (22, TO_DATE('2023-12-29', 'YYYY-MM-DD'), 'CJ ENM', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (23, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '한국전력공사', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (24, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '현대건설', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (25, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '기업은행', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (26, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '삼성생명', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (27, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '이마트24', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (28, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '한국도로공사', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (30, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '한국산업기술진흥원', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (31, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '삼성화재해상보험', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (32, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '농심', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (33, TO_DATE('2023-12-29', 'YYYY-MM-DD'), 'SK이노베이션', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (34, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '한국전자인증', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (37, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '이베이코리아', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (40, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '미래에셋대우', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (41, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '한화토탈', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (42, TO_DATE('2023-12-29', 'YYYY-MM-DD'), 'GS건설', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (43, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '롯데푸드', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (44, TO_DATE('2023-12-29', 'YYYY-MM-DD'), 'GS리테일', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (45, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '코오롱인더스트리', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (46, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '한화생명', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (47, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '대우건설', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (48, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '미래에셋증권', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (49, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '삼성중공업', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (50, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '포스코건설', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (51, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '농협은행', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (52, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '신한은행', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (53, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '현대그린푸드', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (57, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '삼성전자', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (58, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '네이버', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (60, TO_DATE('2023-12-29', 'YYYY-MM-DD'), 'SK텔레콤', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (61, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '현대자동차', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (63, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '에이프로젠', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (65, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '한화', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (67, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '셀트리온', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (68, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '이마트', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (69, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '롯데쇼핑', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (70, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '롯데제과', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (73, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '기아자동차', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (74, TO_DATE('2023-12-29', 'YYYY-MM-DD'), 'CJ제일제당', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (77, TO_DATE('2023-12-29', 'YYYY-MM-DD'), 'LG전자', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (79, TO_DATE('2023-12-29', 'YYYY-MM-DD'), 'LG유플러스', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (80, TO_DATE('2023-12-29', 'YYYY-MM-DD'), 'KT', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (83, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '롯데칠성음료', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (84, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '현대백화점', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (86, TO_DATE('2023-12-29', 'YYYY-MM-DD'), 'CJ ENM', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (87, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '한국전력공사', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (89, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '현대건설', 'Y');
INSERT INTO tblEmployedStd (stupk, regdate, comname, insurance) VALUES (90, TO_DATE('2023-12-29', 'YYYY-MM-DD'), '기업은행', 'Y');

create table tblReSupport (
 	stupk number primary key,
 	regdate date NOT NULL,
 	extperiod number default 0, -- 0일 or 90일
 	enddate date NOT NULL,
 	memo varchar2(200) NULL
);
ALTER table tblReSupport ADD CONSTRAINT FK_tblEmployedStd_TO_tblReSupport FOREIGN KEY (stupk)
INSERT INTO tblReSupport (stupk, regdate, extperiod, enddate, memo) VALUES (1,TO_DATE('2024-1-1', 'YYYY-MM-DD'),	0	,TO_DATE('2024-7-1', 'YYYY-MM-DD')	, '대기업SI취업희망');
INSERT INTO tblReSupport (stupk, regdate, extperiod, enddate, memo) VALUES (	2	,	TO_DATE('2024-1-2', 'YYYY-MM-DD'),	90	,TO_DATE('2024-7-1', 'YYYY-MM-DD')	, '프론트엔드에서 백엔드개발자로 취업희망');
INSERT INTO tblReSupport (stupk, regdate, extperiod, enddate, memo) VALUES (	10	,	TO_DATE('2024-1-3', 'YYYY-MM-DD'),	0	,TO_DATE('2024-7-3', 'YYYY-MM-DD')	, '컨설팅 기업 취업희망');
INSERT INTO tblReSupport (stupk, regdate, extperiod, enddate, memo) VALUES (	11	,	TO_DATE('2024-1-4', 'YYYY-MM-DD'),	90	,TO_DATE('2024-10-3', 'YYYY-MM-DD')	, '');
INSERT INTO tblReSupport (stupk, regdate, extperiod, enddate, memo) VALUES (	12	,	TO_DATE('2024-1-5', 'YYYY-MM-DD'),	0	,TO_DATE('2024-7-5', 'YYYY-MM-DD')	, '');
INSERT INTO tblReSupport (stupk, regdate, extperiod, enddate, memo) VALUES (	13	,	TO_DATE('2024-1-6', 'YYYY-MM-DD'),	0	,TO_DATE('2024-7-6', 'YYYY-MM-DD')	, '');
INSERT INTO tblReSupport (stupk, regdate, extperiod, enddate, memo) VALUES (	14	,	TO_DATE('2024-1-7', 'YYYY-MM-DD'),	90	,TO_DATE('2024-10-6', 'YYYY-MM-DD')	, '3개월간 주니어개발자로 일한 경험있음');
INSERT INTO tblReSupport (stupk, regdate, extperiod, enddate, memo) VALUES (	15	,	TO_DATE('2024-1-8', 'YYYY-MM-DD'),	90	,TO_DATE('2024-10-7', 'YYYY-MM-DD')	, '');
INSERT INTO tblReSupport (stupk, regdate, extperiod, enddate, memo) VALUES (	16	,	TO_DATE('2024-1-9', 'YYYY-MM-DD'),	0	,TO_DATE('2024-7-9', 'YYYY-MM-DD')	, '');
INSERT INTO tblReSupport (stupk, regdate, extperiod, enddate, memo) VALUES (	18	,	TO_DATE('2024-1-10', 'YYYY-MM-DD'),	0	,TO_DATE('2024-7-10', 'YYYY-MM-DD')	, '금융권 취업희망');
INSERT INTO tblReSupport (stupk, regdate, extperiod, enddate, memo) VALUES (	27	,	TO_DATE('2024-1-11', 'YYYY-MM-DD'),	0	,TO_DATE('2024-7-11', 'YYYY-MM-DD')	, '');
INSERT INTO tblReSupport (stupk, regdate, extperiod, enddate, memo) VALUES (	28	,	TO_DATE('2024-1-12', 'YYYY-MM-DD'),	90	,TO_DATE('2024-10-11', 'YYYY-MM-DD')	, '');
INSERT INTO tblReSupport (stupk, regdate, extperiod, enddate, memo) VALUES (	30	,	TO_DATE('2024-1-13', 'YYYY-MM-DD'),	0	,TO_DATE('2024-7-13', 'YYYY-MM-DD')	, '');
INSERT INTO tblReSupport (stupk, regdate, extperiod, enddate, memo) VALUES (	32	,	TO_DATE('2024-1-14', 'YYYY-MM-DD'),	90	,TO_DATE('2024-10-13', 'YYYY-MM-DD')	, '서비스기업 취업희망');
INSERT INTO tblReSupport (stupk, regdate, extperiod, enddate, memo) VALUES (	33	,	TO_DATE('2024-1-15', 'YYYY-MM-DD'),	0	,TO_DATE('2024-7-15', 'YYYY-MM-DD')	, '');
INSERT INTO tblReSupport (stupk, regdate, extperiod, enddate, memo) VALUES (	41	,	TO_DATE('2024-1-16', 'YYYY-MM-DD'),	0	,TO_DATE('2024-7-16', 'YYYY-MM-DD')	, '연봉 3800이상 희망');
INSERT INTO tblReSupport (stupk, regdate, extperiod, enddate, memo) VALUES (	43	,	TO_DATE('2024-1-17', 'YYYY-MM-DD'),	90	,TO_DATE('2024-10-16', 'YYYY-MM-DD')	, '데이터 전문 분야로 취업희망하며 빅데이터분석기사 자격증 있음');
INSERT INTO tblReSupport (stupk, regdate, extperiod, enddate, memo) VALUES (	45	,	TO_DATE('2024-1-18', 'YYYY-MM-DD'),	90	,TO_DATE('2024-10-17', 'YYYY-MM-DD')	, '');
INSERT INTO tblReSupport (stupk, regdate, extperiod, enddate, memo) VALUES (	47	,	TO_DATE('2024-1-19', 'YYYY-MM-DD'),	0	,TO_DATE('2024-7-19', 'YYYY-MM-DD')	, '스타트업 취업희망함');
INSERT INTO tblReSupport (stupk, regdate, extperiod, enddate, memo) VALUES (	48	,	TO_DATE('2024-1-20', 'YYYY-MM-DD'),	90	,TO_DATE('2024-10-19', 'YYYY-MM-DD')	, '재택근무인 회사에 우선 지원');
INSERT INTO tblReSupport (stupk, regdate, extperiod, enddate, memo) VALUES (	49	,	TO_DATE('2024-1-21', 'YYYY-MM-DD'),	90	,TO_DATE('2024-10-20', 'YYYY-MM-DD')	, '');
INSERT INTO tblReSupport (stupk, regdate, extperiod, enddate, memo) VALUES (	50	,	TO_DATE('2024-1-22', 'YYYY-MM-DD'),	0	,TO_DATE('2024-7-22', 'YYYY-MM-DD')	, '가산디지털단지화 구로쪽에서 취업희망항');
INSERT INTO tblReSupport (stupk, regdate, extperiod, enddate, memo) VALUES (	52	,	TO_DATE('2024-1-23', 'YYYY-MM-DD'),	0	,TO_DATE('2024-7-23', 'YYYY-MM-DD')	, '4월경 취업지원 연장여부 상담 희망함');
INSERT INTO tblReSupport (stupk, regdate, extperiod, enddate, memo) VALUES (	53	,	TO_DATE('2024-1-24', 'YYYY-MM-DD'),	90	,TO_DATE('2024-10-23', 'YYYY-MM-DD')	, '');
INSERT INTO tblReSupport (stupk, regdate, extperiod, enddate, memo) VALUES (	57	,	TO_DATE('2024-1-25', 'YYYY-MM-DD'),	0	,TO_DATE('2024-7-25', 'YYYY-MM-DD')	, '');
select * from tblReSupport;
--tblRecruit.
--INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), 'recname', 'ssn', 'rectel', 'result', ocpk);


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

INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '수강예정');
INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '수강중');
INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '중도탈락');
INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '수료');
INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '취업');
INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '다수과정수강');
INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '재취업지원신청');
INSERT INTO tblStudentStatus (stustspk, stustatus) VALUES ((SELECT NVL(MAX(stustspk), 0) + 1 FROM tblStudentStatus), '재취업지원종료');

--INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), 'recname', 'ssn', 'rectel', 'result', ocpk);

INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '성준희',TO_DATE('1995-03-15', 'YYYY-MM-DD'),  '01059006133',  'sungjun123', '2886781', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생','지은우',TO_DATE('1998-07-20', 'YYYY-MM-DD'), '01059055661', 'jiun456', '1214884',SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser),'학생','현수진', TO_DATE('1993-11-05', 'YYYY-MM-DD'), '01091016321', 'hyunsoo789','1820652',SYSDATE);
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ( (SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '민성호', TO_DATE('1990-12-25', 'YYYY-MM-DD'),'01059719890','min101', '1613393',SYSDATE);
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ( (SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser),'학생', '예은서',TO_DATE('1996-08-10', 'YYYY-MM-DD'),'01033841764','yeeun234', '1684167',SYSDATE);
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '정희진',TO_DATE('1994-04-01', 'YYYY-MM-DD'), '01027655794','junghui567','1664122',SYSDATE);
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ( (SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '지우진',TO_DATE('1997-02-18', 'YYYY-MM-DD'), '01016953507','jiwu890','1048092',SYSDATE);
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '영민호',TO_DATE('1992-06-30', 'YYYY-MM-DD'),'01063611375','youngmin678','2116267',SYSDATE);
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ( (SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '수아람', TO_DATE('1991-10-08', 'YYYY-MM-DD'), '01067960415', 'suaram345', '1017891',SYSDATE);
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ( (SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '다온윤', TO_DATE('1999-05-12', 'YYYY-MM-DD'), '01038075620', 'daon456', 'Password', SYSDATE);
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '양빛래',TO_DATE('1995-07-09', 'YYYY-MM-DD'),  '01054395044',  'yrwvix28', '2426826', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '전을헌',TO_DATE('1998-08-07', 'YYYY-MM-DD'),  '01056559822',  'nwghup85', '2739436', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '이철더',TO_DATE('1994-03-21', 'YYYY-MM-DD'),  '01068165821',  'vxepex68', '2747658', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '염은월',TO_DATE('1995-03-30', 'YYYY-MM-DD'),  '01097568874',  'axlltz49', '2046936', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '진혜박',TO_DATE('1993-06-30', 'YYYY-MM-DD'),  '01035169625',  'abxfru99', '1918684', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '양으후',TO_DATE('1990-09-11', 'YYYY-MM-DD'),  '01070449625',  'eynhaz9', '1433593', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '변유라',TO_DATE('1994-06-14', 'YYYY-MM-DD'),  '01026760543',  'qlojsn7', '2539181', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '길모연',TO_DATE('1993-05-01', 'YYYY-MM-DD'),  '01030369984',  'tdeggc25', '2419753', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '표인별',TO_DATE('1994-11-18', 'YYYY-MM-DD'),  '01005906386',  'urhhjs33', '2938477', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '손묵채',TO_DATE('1993-04-25', 'YYYY-MM-DD'),  '01018843155',  'qyahtw3', '2475351', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '맹휘기',TO_DATE('1996-11-23', 'YYYY-MM-DD'),  '01007830712',  'lviwww70', '1960049', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '설후량',TO_DATE('1994-11-04', 'YYYY-MM-DD'),  '01076511082',  'ivxwmz75', '2346461', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '도섬훈',TO_DATE('1997-03-18', 'YYYY-MM-DD'),  '01066894164',  'yzdgju84', '2118528', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '양부로',TO_DATE('1991-01-23', 'YYYY-MM-DD'),  '01070868721',  'ukkdob39', '2083961', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '은무탁',TO_DATE('2001-04-26', 'YYYY-MM-DD'),  '01033423742',  'lfolnt1', '3611550', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '신회휴',TO_DATE('1991-04-15', 'YYYY-MM-DD'),  '01007426789',  'owkjfr5', '1523770', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '구리환',TO_DATE('1997-05-30', 'YYYY-MM-DD'),  '01032266914',  'zbztyu4', '1560487', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '박익규',TO_DATE('1991-02-05', 'YYYY-MM-DD'),  '01078448814',  'xdexut51', '2316741', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '제의온',TO_DATE('1993-03-30', 'YYYY-MM-DD'),  '01016522642',  'kkbfuh27', '1772496', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '손규경',TO_DATE('1994-02-10', 'YYYY-MM-DD'),  '01028064331',  'covark3', '2819368', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '석솔범',TO_DATE('1998-05-14', 'YYYY-MM-DD'),  '01033063840',  'hypahz72', '1986616', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '민천명',TO_DATE('1997-11-04', 'YYYY-MM-DD'),  '01019371544',  'ecyjut33', '1347733', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '도식린',TO_DATE('1994-06-09', 'YYYY-MM-DD'),  '01015974344',  'nudkxe45', '1288343', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '민부창',TO_DATE('1998-05-12', 'YYYY-MM-DD'),  '01046604659',  'nnzoyb8', '1322281', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '송림소',TO_DATE('1998-06-27', 'YYYY-MM-DD'),  '01093718557',  'xnsjcy88', '2662987', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '방상욱',TO_DATE('1996-01-01', 'YYYY-MM-DD'),  '01042113378',  'qwjgat41', '2254785', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '제희정',TO_DATE('1992-07-22', 'YYYY-MM-DD'),  '01082238757',  'bdlkfx1', '1341065', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '인보공',TO_DATE('1993-08-10', 'YYYY-MM-DD'),  '01035468053',  'itvmap92', '2140141', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '선반설',TO_DATE('1995-08-17', 'YYYY-MM-DD'),  '01086677598',  'rggbzr34', '1814097', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '연양실',TO_DATE('1996-06-26', 'YYYY-MM-DD'),  '01012435059',  'syiggu78', '2443122', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '노문령',TO_DATE('2000-07-07', 'YYYY-MM-DD'),  '01030650286',  'dxkacc11', '3545264', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '양전관',TO_DATE('1992-11-22', 'YYYY-MM-DD'),  '01056069772',  'rzsqkh97', '2854523', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '하병준',TO_DATE('1994-12-24', 'YYYY-MM-DD'),  '01039085044',  'vjkmsb56', '1057328', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '모온분',TO_DATE('1998-08-22', 'YYYY-MM-DD'),  '01047937640',  'kwvcou70', '2941778', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '유미은',TO_DATE('1997-08-26', 'YYYY-MM-DD'),  '01009621737',  'btnwrs9', '2063449', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '노상탐',TO_DATE('1993-08-05', 'YYYY-MM-DD'),  '01028953180',  'csqiuv7', '2269372', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '윤채을',TO_DATE('1991-07-03', 'YYYY-MM-DD'),  '01070754048',  'gtyvlk55', '1858269', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '방균위',TO_DATE('1995-03-24', 'YYYY-MM-DD'),  '01034109466',  'expnip61', '1448744', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '유잎걸',TO_DATE('1996-12-27', 'YYYY-MM-DD'),  '01059055219',  'ofbmrq78', '2629211', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '공덕안',TO_DATE('2002-11-27', 'YYYY-MM-DD'),  '01004692362',  'ilnbmh36', '4769838', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '은훈석',TO_DATE('1999-10-07', 'YYYY-MM-DD'),  '01010256117',  'nddavm76', '2472423', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '기명동',TO_DATE('1992-11-10', 'YYYY-MM-DD'),  '01073687610',  'bvexif2', '2227321', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '곽효들',TO_DATE('1993-08-12', 'YYYY-MM-DD'),  '01040073791',  'ybffot2', '1856190', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '육숭백',TO_DATE('1990-12-01', 'YYYY-MM-DD'),  '01029859583',  'ebetbh79', '2986081', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '민옥순',TO_DATE('1995-07-01', 'YYYY-MM-DD'),  '01037276784',  'xnopta23', '1754742', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '지걸용',TO_DATE('1993-03-15', 'YYYY-MM-DD'),  '01038320727',  'bpsegg88', '2655711', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '변디후',TO_DATE('1993-10-28', 'YYYY-MM-DD'),  '01011088656',  'bjpzod28', '1514569', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '유강마',TO_DATE('1990-05-26', 'YYYY-MM-DD'),  '01084274375',  'tkpwbe57', '2153017', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '임건호',TO_DATE('1994-05-12', 'YYYY-MM-DD'),  '01036102307',  'ivqlmw82', '1914166', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '반늬사',TO_DATE('1997-12-08', 'YYYY-MM-DD'),  '01017229049',  'cgjnre71', '2750339', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '양늬두',TO_DATE('1993-07-26', 'YYYY-MM-DD'),  '01010656081',  'auvhcc87', '2669673', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '탁장견',TO_DATE('1996-05-21', 'YYYY-MM-DD'),  '01036769673',  'vkcnjb88', '1330286', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '이덕노',TO_DATE('1997-07-05', 'YYYY-MM-DD'),  '01054995845',  'sfvayo21', '2621521', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '연안조',TO_DATE('1996-06-27', 'YYYY-MM-DD'),  '01062944508',  'pvbeqw94', '1488425', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '공반을',TO_DATE('1996-11-18', 'YYYY-MM-DD'),  '01098248226',  'mvtpyf53', '1338526', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '공서용',TO_DATE('2003-04-07', 'YYYY-MM-DD'),  '01073888263',  'kiznfr7', '3677243', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '탁해기',TO_DATE('1998-04-09', 'YYYY-MM-DD'),  '01054491218',  'oavnug17', '2048680', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '변신문',TO_DATE('1992-04-14', 'YYYY-MM-DD'),  '01006373224',  'shbnyk97', '1837748', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '전실서',TO_DATE('1998-11-22', 'YYYY-MM-DD'),  '01065820890',  'cidoyl98', '2221822', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '조흔희',TO_DATE('1990-05-13', 'YYYY-MM-DD'),  '01060574457',  'cljfom71', '2926480', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '모담박',TO_DATE('1993-10-20', 'YYYY-MM-DD'),  '01013269522',  'xuadti95', '2564762', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '전종송',TO_DATE('1998-04-30', 'YYYY-MM-DD'),  '01093887619',  'djerpp27', '2012030', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '제권을',TO_DATE('1993-03-24', 'YYYY-MM-DD'),  '01099531869',  'egwiqq93', '1013071', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '강단희',TO_DATE('1998-01-17', 'YYYY-MM-DD'),  '01099635766',  'bqdvmp77', '2037311', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '마이항',TO_DATE('1993-03-08', 'YYYY-MM-DD'),  '01000203473',  'mzfnrz77', '1144858', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '하바만',TO_DATE('1997-07-15', 'YYYY-MM-DD'),  '01087389100',  'xsymbn25', '2466876', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '변웅강',TO_DATE('1994-09-23', 'YYYY-MM-DD'),  '01012917463',  'wgiagn77', '2960968', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '변숙인',TO_DATE('1992-02-10', 'YYYY-MM-DD'),  '01038076409',  'rxgldv69', '1114392', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '유춘다',TO_DATE('1993-09-24', 'YYYY-MM-DD'),  '01087558729',  'qwkpff15', '2420152', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '천단열',TO_DATE('1994-02-13', 'YYYY-MM-DD'),  '01047359321',  'uzsjyf68', '1769843', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '변혼가',TO_DATE('1991-03-29', 'YYYY-MM-DD'),  '01092885908',  'iooyqn81', '2228641', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '공악을',TO_DATE('2001-08-07', 'YYYY-MM-DD'),  '01027544595',  'iadejy48', '4316270', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '왕엽엄',TO_DATE('1995-05-22', 'YYYY-MM-DD'),  '01025472286',  'antcvj99', '1161051', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '유개복',TO_DATE('1998-04-30', 'YYYY-MM-DD'),  '01075148836',  'edaqey55', '1213110', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '선추나',TO_DATE('1993-01-18', 'YYYY-MM-DD'),  '01073186647',  'lovowj88', '2780441', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '함휘일',TO_DATE('1991-03-28', 'YYYY-MM-DD'),  '01031495712',  'vsgfnz12', '1362064', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '구악박',TO_DATE('1998-08-20', 'YYYY-MM-DD'),  '01099293801',  'zzkgmn71', '1928840', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '탁창세',TO_DATE('1991-04-24', 'YYYY-MM-DD'),  '01007069133',  'mrfrjt63', '1477762', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '소동으',TO_DATE('1991-12-14', 'YYYY-MM-DD'),  '01024821214',  'scxnjn99', '2169741', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '왕권윤',TO_DATE('1993-08-09', 'YYYY-MM-DD'),  '01093670585',  'xoxuea86', '1817961', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '국종숭',TO_DATE('1994-10-04', 'YYYY-MM-DD'),  '01015206209',  'grwpjy73', '1331449', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '구철묵',TO_DATE('1997-07-03', 'YYYY-MM-DD'),  '01049350988',  'bqlxrl82', '2961136', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '기직유',TO_DATE('1998-06-18', 'YYYY-MM-DD'),  '01085487860',  'ukwhaa70', '1518281', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '기부전',TO_DATE('1996-09-24', 'YYYY-MM-DD'),  '01059581149',  'gzjvnh60', '2754753', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '편섬의',TO_DATE('1998-06-05', 'YYYY-MM-DD'),  '01082668305',  'ahxuvl82', '1341588', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '유추백',TO_DATE('1996-11-03', 'YYYY-MM-DD'),  '01031415188',  'ekrmie20', '2585160', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '민은항',TO_DATE('1992-11-28', 'YYYY-MM-DD'),  '01055293501',  'qvhehf51', '1260455', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '선세래',TO_DATE('1996-06-13', 'YYYY-MM-DD'),  '01001099986',  'isiyxq11', '2460316', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '강악동',TO_DATE('1990-07-13', 'YYYY-MM-DD'),  '01080979234',  'vgzetc20', '1463017', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '황수걸',TO_DATE('1995-11-14', 'YYYY-MM-DD'),  '01046895658',  'jrpumn93', '1534255', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '임잔이',TO_DATE('1991-08-06', 'YYYY-MM-DD'),  '01051249539',  'asgtnb89', '2483970', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '장찬두',TO_DATE('1996-05-21', 'YYYY-MM-DD'),  '01022708310',  'vwttcq83', '1519263', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '차을출',TO_DATE('1991-01-14', 'YYYY-MM-DD'),  '01060712992',  'uiweog95', '2213191', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '백자시',TO_DATE('1996-08-05', 'YYYY-MM-DD'),  '01090814391',  'ffuhdo8', '1418495', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '은요위',TO_DATE('1990-11-15', 'YYYY-MM-DD'),  '01003550296',  'ksbocp18', '2667458', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '전삼현',TO_DATE('1995-12-03', 'YYYY-MM-DD'),  '01086943701',  'zjpthd2', '1337394', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '함사악',TO_DATE('1992-05-10', 'YYYY-MM-DD'),  '01017945144',  'ofsekw70', '1020251', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '연으배',TO_DATE('1997-12-11', 'YYYY-MM-DD'),  '01012830145',  'tgdvwv24', '2511376', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '주공양',TO_DATE('1997-10-15', 'YYYY-MM-DD'),  '01070999491',  'xeknra14', '1015841', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '이자동',TO_DATE('2000-06-06', 'YYYY-MM-DD'),  '01079238499',  'rsiuve45', '4864761', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '황근회',TO_DATE('1992-07-08', 'YYYY-MM-DD'),  '01003131871',  'icmyat32', '2960718', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '변순고',TO_DATE('1995-12-15', 'YYYY-MM-DD'),  '01041095499',  'lpalxu54', '2342899', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '우동봉',TO_DATE('1993-07-29', 'YYYY-MM-DD'),  '01079473176',  'pgsdev73', '1775696', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '백흥태',TO_DATE('1990-01-28', 'YYYY-MM-DD'),  '01081302225',  'vtjhji38', '2334965', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '남루양',TO_DATE('1991-07-28', 'YYYY-MM-DD'),  '01031806717',  'qobske13', '1774673', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '편래탁',TO_DATE('2001-07-22', 'YYYY-MM-DD'),  '01060845033',  'zchxdp61', '3378643', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '손흔보',TO_DATE('1994-07-05', 'YYYY-MM-DD'),  '01008357484',  'trhzam1', '1150539', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '장탁병',TO_DATE('1994-01-10', 'YYYY-MM-DD'),  '01006806236',  'qvcphd10', '1937861', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '변주휘',TO_DATE('1993-04-13', 'YYYY-MM-DD'),  '01050651424',  'vjikac15', '1838883', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '우번병',TO_DATE('1994-08-21', 'YYYY-MM-DD'),  '01095940519',  'yilqar23', '1332492', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '선슬별',TO_DATE('1995-02-06', 'YYYY-MM-DD'),  '01077424474',  'gygptu79', '2937283', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '진잔자',TO_DATE('1990-03-30', 'YYYY-MM-DD'),  '01026977147',  'hlsoiy3', '2918693', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '염찬바',TO_DATE('1993-07-27', 'YYYY-MM-DD'),  '01054948492',  'evgxvx74', '1579320', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '명탁유',TO_DATE('1990-09-15', 'YYYY-MM-DD'),  '01024856673',  'iyswol29', '1877213', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '반슬한',TO_DATE('1994-06-30', 'YYYY-MM-DD'),  '01005191776',  'zevnta77', '2815528', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '유효노',TO_DATE('2000-05-14', 'YYYY-MM-DD'),  '01065595849',  'zqxmfr5', '4459978', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '심재반',TO_DATE('1997-07-28', 'YYYY-MM-DD'),  '01056784617',  'xgnhzg46', '2763257', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '연언추',TO_DATE('1991-12-30', 'YYYY-MM-DD'),  '01032166461',  'fdxcvs37', '2065042', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '추묵재',TO_DATE('1993-05-12', 'YYYY-MM-DD'),  '01048608364',  'cgcatv68', '2242178', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '공별수',TO_DATE('1994-11-07', 'YYYY-MM-DD'),  '01093421824',  'sciass69', '1169050', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '변구진',TO_DATE('1998-05-25', 'YYYY-MM-DD'),  '01013840840',  'kstmkr22', '2719946', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '도일세',TO_DATE('1997-07-04', 'YYYY-MM-DD'),  '01065501409',  'nxvjgu77', '1863349', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '추정두',TO_DATE('1995-11-09', 'YYYY-MM-DD'),  '01022715748',  'jtoyfk74', '1323434', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '문공더',TO_DATE('1999-02-05', 'YYYY-MM-DD'),  '01086779342',  'ukyyrq84', '2279597', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '석랑늬',TO_DATE('1993-04-03', 'YYYY-MM-DD'),  '01014827609',  'ecrzjp79', '2349687', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '여철웅',TO_DATE('1993-08-01', 'YYYY-MM-DD'),  '01071582400',  'imltpa89', '1612146', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '석루고',TO_DATE('1994-07-14', 'YYYY-MM-DD'),  '01024074069',  'hryxgk95', '2244487', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '탁안솜',TO_DATE('1998-09-15', 'YYYY-MM-DD'),  '01091959663',  'halfzn40', '1756453', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '노온모',TO_DATE('2000-12-25', 'YYYY-MM-DD'),  '01001030977',  'ihcdtz92', '3840316', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '윤출훔',TO_DATE('1992-01-26', 'YYYY-MM-DD'),  '01041946508',  'ffbacx68', '2284091', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '남연래',TO_DATE('1996-04-27', 'YYYY-MM-DD'),  '01046129852',  'cwhvcc42', '1338351', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '채심손',TO_DATE('1993-10-03', 'YYYY-MM-DD'),  '01091013461',  'nvsxsu47', '1222264', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '장철숭',TO_DATE('1997-11-18', 'YYYY-MM-DD'),  '01054813338',  'armljl72', '1016650', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '추승헌',TO_DATE('1991-03-30', 'YYYY-MM-DD'),  '01097658982',  'vlsddt67', '2660163', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '문태병',TO_DATE('1992-09-24', 'YYYY-MM-DD'),  '01008415670',  'aefpfk92', '1417298', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '송흥래',TO_DATE('1992-07-05', 'YYYY-MM-DD'),  '01019242298',  'cjmdnf11', '1840280', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '인황평',TO_DATE('1992-09-22', 'YYYY-MM-DD'),  '01066194936',  'wavfts83', '2880567', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '방병향',TO_DATE('1995-09-29', 'YYYY-MM-DD'),  '01059822504',  'emlcpv55', '1249427', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '지롱반',TO_DATE('1992-04-26', 'YYYY-MM-DD'),  '01005541433',  'getvpu47', '1358534', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '황잎곤',TO_DATE('1992-03-30', 'YYYY-MM-DD'),  '01069932530',  'nbgqey85', '2211925', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '신으분',TO_DATE('1994-03-06', 'YYYY-MM-DD'),  '01039366418',  'xnrbpl89', '2762489', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '류고월',TO_DATE('1990-11-09', 'YYYY-MM-DD'),  '01034398230',  'fdwxru17', '2413521', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '나애충',TO_DATE('1993-08-06', 'YYYY-MM-DD'),  '01079433068',  'avusct9', '1822466', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '장재우',TO_DATE('1990-12-05', 'YYYY-MM-DD'),  '01042470326',  'ehpsdr5', '2520041', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '조얀일',TO_DATE('1997-01-11', 'YYYY-MM-DD'),  '01068601270',  'wdsdlj48', '1676112', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '육자린',TO_DATE('1999-04-06', 'YYYY-MM-DD'),  '01081591180',  'nvsybs37', '1618963', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '기욱루',TO_DATE('1991-09-23', 'YYYY-MM-DD'),  '01012424387',  'zktwyl77', '2235719', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '인섭규',TO_DATE('1991-07-16', 'YYYY-MM-DD'),  '01041653869',  'udqrcp7', '1011236', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '구봉산',TO_DATE('1999-01-07', 'YYYY-MM-DD'),  '01059326405',  'tgqiaq56', '1919550', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '노안기',TO_DATE('1997-12-02', 'YYYY-MM-DD'),  '01060767821',  'aedgjz76', '2141824', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '육수림',TO_DATE('1991-02-20', 'YYYY-MM-DD'),  '01026048658',  'nohjkk24', '2855513', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '유새위',TO_DATE('1994-07-11', 'YYYY-MM-DD'),  '01063599884',  'shnvog20', '1351463', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '함두익',TO_DATE('1993-08-30', 'YYYY-MM-DD'),  '01021325898',  'phmdgu91', '2245369', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '옥익타',TO_DATE('1992-03-21', 'YYYY-MM-DD'),  '01042044813',  'hithnt1', '1317692', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '유련태',TO_DATE('2001-05-16', 'YYYY-MM-DD'),  '01096339833',  'luqstc45', '4322755', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '노평지',TO_DATE('1991-06-17', 'YYYY-MM-DD'),  '01049094535',  'gasmfx36', '2271877', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '신대후',TO_DATE('1991-08-09', 'YYYY-MM-DD'),  '01074503124',  'pacdac12', '2444165', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '국이요',TO_DATE('1990-06-21', 'YYYY-MM-DD'),  '01035848141',  'byruxr28', '2050984', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '추라성',TO_DATE('1993-06-18', 'YYYY-MM-DD'),  '01050874356',  'rdbgnj89', '1912990', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '여려추',TO_DATE('1992-01-25', 'YYYY-MM-DD'),  '01068534211',  'wvxovw98', '1649050', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '설충슬',TO_DATE('1990-09-28', 'YYYY-MM-DD'),  '01003297551',  'zumfbe88', '1117657', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '나늬채',TO_DATE('1990-10-13', 'YYYY-MM-DD'),  '01028502007',  'txpbkf5', '2583288', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '배구백',TO_DATE('1991-06-05', 'YYYY-MM-DD'),  '01010862681',  'qsfrty78', '1257533', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '명태흥',TO_DATE('1995-10-09', 'YYYY-MM-DD'),  '01015350160',  'gsoicy57', '1755251', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '문두성',TO_DATE('1997-07-27', 'YYYY-MM-DD'),  '01067268272',  'deoghj96', '2433611', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '송학홍',TO_DATE('1992-07-10', 'YYYY-MM-DD'),  '01029534374',  'ugijta35', '2582714', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '지박관',TO_DATE('1992-05-10', 'YYYY-MM-DD'),  '01084572632',  'uklomj20', '1725717', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '제무석',TO_DATE('1998-04-13', 'YYYY-MM-DD'),  '01067714247',  'vcprrc73', '2451255', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '문삼구',TO_DATE('1995-04-10', 'YYYY-MM-DD'),  '01002343837',  'gqwegd98', '2619554', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '손관요',TO_DATE('1997-07-05', 'YYYY-MM-DD'),  '01097613143',  'rqhqjp20', '2786246', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '국로요',TO_DATE('1992-01-15', 'YYYY-MM-DD'),  '01086161586',  'adihrk1', '2421371', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '편추윤',TO_DATE('1995-07-01', 'YYYY-MM-DD'),  '01019800827',  'vsyayg33', '2865939', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '송정량',TO_DATE('1996-12-19', 'YYYY-MM-DD'),  '01085871137',  'rbvggc23', '1640537', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '지이두',TO_DATE('1996-04-10', 'YYYY-MM-DD'),  '01040788265',  'iqtyyi24', '1179774', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '공관초',TO_DATE('1993-03-20', 'YYYY-MM-DD'),  '01037660016',  'zbftis80', '1228162', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '이남림',TO_DATE('1997-06-25', 'YYYY-MM-DD'),  '01044891935',  'whxxzw7', '2760662', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '배복선',TO_DATE('1995-02-24', 'YYYY-MM-DD'),  '01078070316',  'kwnjkl69', '2764443', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '임마자',TO_DATE('1994-08-25', 'YYYY-MM-DD'),  '01053354821',  'wbvoom7', '2365681', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '민래정',TO_DATE('2000-07-13', 'YYYY-MM-DD'),  '01053998290',  'jowtkc41', '4819121', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '연모제',TO_DATE('1998-04-07', 'YYYY-MM-DD'),  '01013066015',  'wojfiq23', '1157832', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '신주송',TO_DATE('1994-12-26', 'YYYY-MM-DD'),  '01001628611',  'dvdptm90', '1758762', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '어해덕',TO_DATE('1991-08-04', 'YYYY-MM-DD'),  '01070918806',  'mzlxho29', '1036273', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '윤술흠',TO_DATE('1991-01-01', 'YYYY-MM-DD'),  '01054790266',  'cdygsr63', '2530115', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '황성건',TO_DATE('1997-08-17', 'YYYY-MM-DD'),  '01097106846',  'tltxtq84', '2221392', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '방배아',TO_DATE('1995-02-27', 'YYYY-MM-DD'),  '01040421641',  'irbfes61', '2412922', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '남솔석',TO_DATE('1996-08-08', 'YYYY-MM-DD'),  '01006040345',  'jfjoyc52', '2679980', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '노영견',TO_DATE('1998-10-20', 'YYYY-MM-DD'),  '01062558210',  'decaku65', '2129118', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '엄도오',TO_DATE('1990-11-01', 'YYYY-MM-DD'),  '01099013490',  'xkxvga20', '1956534', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '정식솔',TO_DATE('1997-02-09', 'YYYY-MM-DD'),  '01033550180',  'qyhykd2', '2751110', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '나로바',TO_DATE('1994-04-27', 'YYYY-MM-DD'),  '01096661328',  'hphcjg87', '2519653', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '류예무',TO_DATE('1991-11-23', 'YYYY-MM-DD'),  '01024173832',  'zkejtd99', '1383228', SYSDATE );
INSERT INTO tblUser (userpk, role, name, bdate, tel, id, pw, regdate) VALUES ((SELECT NVL(MAX(userpk), 0) + 1 FROM tblUser), '학생', '주충훈',TO_DATE('1990-09-24', 'YYYY-MM-DD'),  '01005469250',  'lraqmx62', '1736658', SYSDATE );
--강의중:6 / 강의종료:2개 / 
INSERT INTO tblRecruit (recpk, recname, ssn, rectel, result, ocpk) VALUES ((SELECT NVL(MAX(recpk), 0) + 1 FROM tblRecruit), 'recname', 'ssn', 'rectel', 'result', ocpk);

INSERT INTO tblStudent (stupk, stustspk) VALUES (1, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (2, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (3, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (4, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (5, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (6, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (7, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (8, 4);
INSERT INTO tblStudent (stupk, stustspk) VALUES (9, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (10, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (11, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (12, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (13, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (14, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (15, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (16, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (17, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (18, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (19, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (20, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (21, 4);
INSERT INTO tblStudent (stupk, stustspk) VALUES (22, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (23, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (24, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (25, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (26, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (27, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (28, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (29, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (30, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (31, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (32, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (33, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (34, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (35, 4);
INSERT INTO tblStudent (stupk, stustspk) VALUES (36, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (37, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (38, 4);
INSERT INTO tblStudent (stupk, stustspk) VALUES (39, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (40, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (41, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (42, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (43, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (44, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (45, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (46, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (47, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (48, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (49, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (50, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (51, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (52, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (53, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (54, 4);
INSERT INTO tblStudent (stupk, stustspk) VALUES (55, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (56, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (57, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (58, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (59, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (60, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (61, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (62, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (63, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (64, 4);
INSERT INTO tblStudent (stupk, stustspk) VALUES (65, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (66, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (67, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (68, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (69, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (70, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (71, 4);
INSERT INTO tblStudent (stupk, stustspk) VALUES (72, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (73, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (74, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (75, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (76, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (77, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (78, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (79, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (80, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (81, 4);
INSERT INTO tblStudent (stupk, stustspk) VALUES (82, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (83, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (84, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (85, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (86, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (87, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (88, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (89, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (90, 5);
INSERT INTO tblStudent (stupk, stustspk) VALUES (91, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (92, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (93, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (94, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (95, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (96, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (97, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (98, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (99, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (100, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (101, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (102, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (103, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (104, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (105, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (106, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (107, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (108, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (109, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (110, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (111, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (112, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (113, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (114, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (115, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (116, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (117, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (118, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (119, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (120, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (121, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (122, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (123, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (124, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (125, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (126, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (127, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (128, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (129, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (130, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (131, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (132, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (133, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (134, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (135, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (136, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (137, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (138, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (139, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (140, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (141, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (142, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (143, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (144, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (145, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (146, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (147, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (148, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (149, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (150, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (151, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (152, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (153, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (154, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (155, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (156, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (157, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (158, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (159, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (160, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (161, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (162, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (163, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (164, 3);
INSERT INTO tblStudent (stupk, stustspk) VALUES (165, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (166, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (167, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (168, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (169, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (170, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (171, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (172, 2);
INSERT INTO tblStudent (stupk, stustspk) VALUES (173, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (174, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (175, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (176, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (177, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (178, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (179, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (180, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (181, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (182, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (183, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (184, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (185, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (186, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (187, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (188, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (189, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (190, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (191, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (192, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (193, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (194, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (195, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (196, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (197, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (198, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (199, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (200, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (201, 1);
INSERT INTO tblStudent (stupk, stustspk) VALUES (202, 1);