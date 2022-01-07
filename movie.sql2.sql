
/* Drop Triggers */

DROP TRIGGER TRI_GOODS_TBL_GOODS_NUM;
DROP TRIGGER TRI_MOVIE_TBL_ MOVIE_NUM;

select * from auth_tbl;
select * from user_tbl;


/* Drop Tables */

DROP TABLE ATTACH_EVENT_TBL CASCADE CONSTRAINTS;
DROP TABLE ATTACH_GOODS_TBL CASCADE CONSTRAINTS;
DROP TABLE ATTACH_INFO_TBL CASCADE CONSTRAINTS;
DROP TABLE ATTACH_MOVIE_TBL CASCADE CONSTRAINTS;
DROP TABLE AUTH_TBL CASCADE CONSTRAINTS;
DROP TABLE CSC_TBL CASCADE CONSTRAINTS;
DROP TABLE EVENT_TBL CASCADE CONSTRAINTS;
DROP TABLE GOODS_TBL CASCADE CONSTRAINTS;
DROP TABLE SEAT_TBL CASCADE CONSTRAINTS;
DROP TABLE RESERVE_TBL CASCADE CONSTRAINTS;
DROP TABLE GUEST_TBL CASCADE CONSTRAINTS;
DROP TABLE INFO_TBL CASCADE CONSTRAINTS;
DROP TABLE REPLY_TBL CASCADE CONSTRAINTS;
DROP TABLE MOVIE_TBL CASCADE CONSTRAINTS;
DROP TABLE USER_TBL CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_GOODS_TBL_GOODS_NUM;




/* Create Sequences */

CREATE SEQUENCE SEQ_GOODS_TBL_GOODS_NUM INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE ATTACH_EVENT_TBL
(
	EVENT_UUID varchar2(80) NOT NULL,
	EVENT_UPLOADPATH varchar2(100) NOT NULL,
	EVENT_FILENAME varchar2(100) NOT NULL,
	EVENT_BNO number NOT NULL,
	PRIMARY KEY (EVENT_UUID)
);


CREATE TABLE ATTACH_GOODS_TBL
(
	GOODS_UUID varchar2(100) NOT NULL,
	GOODS_UPLOADPATH varchar2(100) NOT NULL,
	GOODS_FILENAME varchar2(100) NOT NULL,
	GOODS_NUM number NOT NULL,
	PRIMARY KEY (GOODS_UUID)
);


CREATE TABLE ATTACH_INFO_TBL
(
	INFO_UUID varchar2(100) NOT NULL,
	INFO_UPLOADPATH varchar2(100) NOT NULL,
	INFO_FILENAME varchar2(100) NOT NULL,
	INFO_BNO number NOT NULL,
	PRIMARY KEY (INFO_UUID)
);


CREATE TABLE ATTACH_MOVIE_TBL
(
	MOVIE_UUID varchar2(100) NOT NULL,
	MOVIE_UPLOADPATH varchar2(60) NOT NULL,
	MOVIE_FILENAME varchar2(60) NOT NULL,
	movieCD number NOT NULL,
	PRIMARY KEY (MOVIE_UUID)
);


CREATE TABLE AUTH_TBL
(
	AUTHORITY varchar2(50),
	USER_ID varchar2(50) NOT NULL UNIQUE
);


CREATE TABLE CSC_TBL
(
	
	CSC_BNO number NOT NULL,
	CSC_TITLE varchar2(100) NOT NULL,
	CSC_CONTENT varchar2(1000) NOT NULL,
	CSC_REGDATE date DEFAULT SYSDATE,
	CSC_RFI varchar2(1000) not null,
	CSC_ANSWER varchar2(1000),
	CSC_CHECK varchar2(1000),
	USER_ID varchar2(50) NOT NULL ,
	PRIMARY KEY (CSC_BNO)
);
select CSC_RFI from csc_tbl;

alter table csc_tbl modify(CSC_CONTENT varchar2(3000));
alter table csc_tbl add(CSC_CHECK varchar2(1000))
alter table csc_tbl delete(CSC_WRITER varchar2(200))
update csc_tbl set CSC_WRITER = 'USER1' WHERE CSC_BNO =1

select * from csc_tbl;

alter table info_tbl add(INFO_RFI varchar2(1000));
CREATE TABLE EVENT_TBL
(
	EVENT_BNO number NOT NULL,
	EVENT_TITLE varchar2(100) NOT NULL,
	EVENT_CONTENT varchar2(1000) NOT NULL,
	EVENT_REGDATE date DEFAULT SYSDATE,
	EVENT_UPDATEDATE date DEFAULT SYSDATE,
	EVENT_CNT number,
	PRIMARY KEY (EVENT_BNO)
);


CREATE TABLE GOODS_TBL
(
	GOODS_NAME varchar2(80) NOT NULL,
	GOODS_PRICE number,
	GOODS_CONTENT varchar2(1000),
	GOODS_NUM number NOT NULL,
	PRIMARY KEY (GOODS_NUM)
);


CREATE TABLE GUEST_TBL
(
	GUEST_NUM number NOT NULL,
	GUEST_NAME varchar2(50) NOT NULL,
	GUEST_BIRTH varchar2(60) NOT NULL,
	GUEST_PASSWORD number NOT NULL,
	GUEST_EMAIL varchar2(50) NOT NULL UNIQUE,
	PRIMARY KEY (GUEST_NUM)
);


CREATE TABLE INFO_TBL
(
	INFO_BNO number NOT NULL,
	INFO_TITLE varchar2(80) NOT NULL,
	INFO_CONTENT varchar2(1500) NOT NULL,
	INFO_REGDATE date DEFAULT SYSDATE NOT NULL,
	INFO_UPDATEDATE date DEFAULT SYSDATE,
	INFO_CNT number,
	PRIMARY KEY (INFO_BNO)
);


CREATE TABLE MOVIE_TBL
(
	movieCD number NOT NULL,
	movieNM varchar2(60) NOT NULL,
	peopleNm varchar2(60),
	showTm varchar2(60),
	MOVIE_CONTENT varchar2(1200),
	genreNm varchar2(40),
	watchGradeNm char(10),
	nationNm varchar2(60),
	companys varchar2(60),
	openDt varchar2(60),
	PRIMARY KEY (movieCD)
);
select * from user_tbl;




alter table movie_tbl modify(watchGradeNm varchar2(200));
alter table movie_tbl modify(peopleNm varchar2(200));
alter table movie_tbl modify(movieNM varchar2(300));

delete from MOVIE_TBL where movieCD = 20210028;



update MOVIE_TBL set movieNM ='라라와크리스마스요정' where movieCD = 20212217

insert into MOVIE_TBL values(20210028,'스파이더맨: 노 웨이 홈','톰 홀랜드,베네딕트 컴버배치','148',
'이이이','액션','12세이상 관람가','미국','Sony Pictures','2021-12-15');

insert into MOVIE_TBL values(20210864,'엔칸토 : 마법의 시계','스태파니 비트리즈, 마리아 세실리아 보테로','109',
'내용','애니메이션','전체관람가','미국','월트디즈니컴퍼니코리아','2021-11-24');

insert into MOVIE_TBL values(20205986,'연애 빠진 로맨스','정가영,전종서,손석구','94',
'이이이','로맨스','12세이상 관람가','한국','(주)씨제이이엔엠','2021-11-24');

insert into MOVIE_TBL values(20196264,'유체이탈자','윤계상,박용우,임지연','108',
'이이이','판타지','15이상 관람가','한국','(주)비에이엔터테인먼트','2021-11-24');

insert into MOVIE_TBL values(20211831,'소드 아트 온라인','카와노 아야코','97',
'이이이','애니메이션','전체관람가','일본','(주)애니플러스','2021-12-09');

insert into MOVIE_TBL values(20212015,'돈 룩 업','아담 맥케이, 레오나르도 디카프리오','138',
'이이이','코미디','15세이상 관람가','미국','CJ CGV','2021-12-08');

insert into MOVIE_TBL values(20212217,'라라와 크리스마스 요정','라라','68',
'이이이','애니메이션','전체관람가','미국','(주)트리플픽쳐스','2021-12-15');

insert into MOVIE_TBL values(20010264,'아멜리에','장 피에르 주네','121',
'이이이','코미디','15세이상 관람가','프랑스','(주)영화사 안다미로','2001-10-19');

insert into MOVIE_TBL values(20210600,'프렌치 디스패치','웨스 앤더슨, 틸다 스윈튼','107',
'이이이','코미디','15세이상 관람가','미국','월트디즈니컴퍼니코리아','2021-11-18');

insert into MOVIE_TBL values(20210752,'뱅드림! 필름 라이브 세컨드 스테이지','아이미,사쿠라 아야네','84',
'이이이','애니메이션','전체이상 관람가','일본','(주)애니플러스','2021-11-18');

insert into MOVIE_TBL values(20211111,'티탄','아가트 루셀, 뱅상 랭동','120',
'이이이','드라마','청소년 관람불가','프랑스','(주)영화특별시SMC','2021-12-09');

insert into MOVIE_TBL values(20211112,'해피 뉴 이어','한지민, 이동욱, 강하늘, 윤아','138',
'이이이','멜로/로맨스','12세이상 관람가','한국','CJ ENM','2021-12-29');

select Csc_Bno,CSC_CHECK,CSC_TITLE,Csc_Regdate,Csc_Rfi,user_id
 from csc_tbl where user_id='admin97' order by Csc_Bno desc;


CREATE TABLE REPLY_TBL
(
	replyCd number NOT NULL, -- 댓글 글번호(rno)
	replyer varchar2(60) NOT NULL, --댓글 작성자
	replyDate date DEFAULT SYSDATE NOT NULL, --댓글 작성일
	replyContent varchar2(300) NOT NULL, -- 댓글 내용
	movieCD number NOT NULL, -- 원본 포스터 코드(bno)
	PRIMARY KEY (replyCd)
);

alter table reply_tbl add (updateDate date DEFAULT SYSDATE)

select * from reply_tbl;

insert into reply_tbl(replyCd,replyer,replyDate,replyContent,movieCD) values(seq_reply.nextval,'kk12345',sysdate,'하하하하',20210028);

select * from reply_tbl;	


create index idx_replys on reply_tbl(movieCD desc, replyCd asc);

select *from idx_replys;
alter table reply_tbl add(key_code varchar2(100));
alter table reply_tbl drop column key_code;

insert into reply_tbl values(1,'이봉훈',sysdate,'영화정말 재밌네요',12,20210028);
select * from reply_tbl where replyCd = 1;

select * from reply_tbl;

CREATE TABLE RESERVE_TBL
(
	scheduleNum number NOT NULL,
	movieDay varchar2(60),
	movieTime varchar2(60),
	movieRoom varchar2(60),
	movieSeat varchar2(60),
	movieCD number NOT NULL,
	USER_ID varchar2(50) NOT NULL UNIQUE,
	MoviePrice number,
	movieNm varchar2(60),
	GUEST_NUM number NOT NULL UNIQUE,
	PRIMARY KEY (scheduleNum)
);

delete from reply_tbl where replyCd=1;
alter table reply_tbl drop column replygrade;
select * from reply_tbl
CREATE TABLE SEAT_TBL
(
	SEAT_NM varchar2(40) NOT NULL,
	SEAT_NO number NOT NULL,
	SEAT_ENABLE char(10) DEFAULT '1' NOT NULL,
	scheduleNum number NOT NULL UNIQUE,
	movieTime varchar2(60),
	movieRoom varchar2(60),
	movieDay varchar2(60),
	PRIMARY KEY (SEAT_NO)
);


CREATE TABLE USER_TBL
(
	USER_ID varchar2(50) NOT NULL,
	USER_NAME varchar2(50) NOT NULL,
	USER_PASSWORD varchar2(50) NOT NULL,
	USER_BIRTH date NOT NULL,
	USER_EMAIL varchar2(60) NOT NULL UNIQUE,
	USER_TEL varchar2(60) NOT NULL,
	USER_REGDATE date DEFAULT sysdate NOT NULL,
	USER_ENABLE char(10) DEFAULT '1',
	PRIMARY KEY (USER_ID)
);

select replyCd,movieCD,replyContent,replyer,replyDate ,updateDate
from(select /*+INDEX(reply_tbl idx_replys)*/rownum rn,replyCd,movieCD,replyContent,replyer,replyDate ,updateDate from reply_tbl where movieCD =20210028 and replyCd>0 and rownum<=10)
where rn >1 order by updateDate desc ;

delete from REPLY_TBL;

select* from reply_tbl;

alter table user_tbl modify(USER_PASSWORD varchar2(100));

delete from CSC_TBL where user_password = 12345;

select * from USER_TBL;

select * from csc_tbl;
/* Create Foreign Keys */

ALTER TABLE ATTACH_EVENT_TBL
	ADD FOREIGN KEY (EVENT_BNO)
	REFERENCES EVENT_TBL (EVENT_BNO)
;


ALTER TABLE ATTACH_GOODS_TBL
	ADD FOREIGN KEY (GOODS_NUM)
	REFERENCES GOODS_TBL (GOODS_NUM)
;


ALTER TABLE RESERVE_TBL
	ADD FOREIGN KEY (GUEST_NUM)
	REFERENCES GUEST_TBL (GUEST_NUM)
;


ALTER TABLE ATTACH_INFO_TBL
	ADD FOREIGN KEY (INFO_BNO)
	REFERENCES INFO_TBL (INFO_BNO)
;


ALTER TABLE ATTACH_MOVIE_TBL
	ADD FOREIGN KEY (movieCD)
	REFERENCES MOVIE_board (movieCD)
;


ALTER TABLE REPLY_TBL
	ADD FOREIGN KEY (movieCD)
	REFERENCES MOVIE_BOARD (movieCD)
;


ALTER TABLE RESERVE_TBL
	ADD FOREIGN KEY (movieCD)
	REFERENCES MOVIE_board (movieCD)
;


ALTER TABLE SEAT_TBL
	ADD FOREIGN KEY (scheduleNum)
	REFERENCES RESERVE_TBL (scheduleNum)
;


ALTER TABLE AUTH_TBL
	ADD FOREIGN KEY (USER_ID)
	REFERENCES USER_TBL (USER_ID)
;


ALTER TABLE CSC_TBL
	ADD FOREIGN KEY (USER_ID)
	REFERENCES USER_TBL (USER_ID)
;


ALTER TABLE RESERVE_TBL
	ADD FOREIGN KEY (USER_ID)
	REFERENCES USER_TBL (USER_ID)
;

alter table auth_tbl rename column authoriy to authority;

----------------------------------------밑은 사용하지마시오.. 안쓰는 코드..----------------------------




insert into user_tbl
values('id1','name1','12345','1997/10/14','id1naver.com','010-1234-5678',sysdate,'1');

insert into user_tbl
values('id2','name2','12345','1997/10/14','id2@naver.com','010-1234-5678',sysdate,'1');

select * from user_tbl;	
select * from csc_TBL;	
alter table info_tbl add(INFO_RFI varchar2(1000));
		select Csc_Bno,Csc_Title,Csc_Content,Csc_Regdate,Csc_Rfi,Csc_Answer,user_id
 from csc_tbl;
---

 delete from csc_tbl where user_id='id2';
 
insert into csc_TBL (csc_bno,csc_title,csc_content,csc_regdate,csc_RFI,csc_answer,user_id)
values(CSC_bno_seq.nextval,'고객센터1','고객센터내용1',sysdate,'기타','처리내용1','id1');

insert into csc_TBL (csc_bno,csc_title,csc_content,csc_regdate,csc_RFI,csc_answer,user_id)
values(CSC_bno_seq.nextval,'고객센터2','고객센터내용2',sysdate,'기타','처리내용2','id2');
insert into csc_TBL (csc_bno,csc_title,csc_content,csc_regdate,csc_RFI,csc_answer,user_id)
values(CSC_bno_seq.nextval,'고객센터3','고객센터내용3',sysdate,'기타','처리내용3','id2');
insert into csc_TBL (csc_bno,csc_title,csc_content,csc_regdate,csc_RFI,csc_answer,user_id)
values(CSC_bno_seq.nextval,'고객센터4','고객센터내용4',sysdate,'분실물','처리내용4','id2');

insert into csc_TBL (csc_bno,csc_title,csc_content,csc_regdate,csc_RFI,csc_answer,user_id)
values(CSC_bno_seq.nextval,'고객센터5','고객센터내용5',sysdate,'분실물','처리내용5','id1');

insert into csc_TBL (csc_bno,csc_title,csc_content,csc_regdate,csc_RFI,csc_answer,user_id)
values(CSC_bno_seq.nextval,'고객센터6','고객센터내용66',sysdate,'분실물','처리내용6','id1');
insert into csc_TBL (csc_bno,csc_title,csc_content,csc_regdate,csc_RFI,csc_answer,user_id,CSC_CHECK)
values(CSC_bno_seq.nextval,'고객센터7','고객센터내용7',sysdate,'분실물','처리내용7','id2','[답변완료]');

create sequence CSC_bno_seq;

  select CSC_bno_seq.nextval from dual;   

delete csc_TBL;
select * from csc_tbl;
select Csc_Bno,Csc_Title,Csc_Regdate,Csc_Rfi,user_id
 from csc_tbl

-----
select * from INFO_TBL;
insert into info_TBL(INFO_BNO,INFO_TITLE,INFO_CONTENT,INFO_REGDATE)
values(INFO_bno_seq.nextval,'공지사항1','공지 내용1',sysdate);
insert into info_TBL(INFO_BNO,INFO_TITLE,INFO_CONTENT,INFO_REGDATE)
values(INFO_bno_seq.nextval,'공지사항2','공지 내용2',sysdate);
insert into info_TBL(INFO_BNO,INFO_TITLE,INFO_CONTENT,INFO_REGDATE)
values(INFO_bno_seq.nextval,'공지사항3','공지 내용3',sysdate);
insert into info_TBL(INFO_BNO,INFO_TITLE,INFO_CONTENT,INFO_REGDATE)
values(INFO_bno_seq.nextval,'공지사항4','공지 내용4',sysdate);
insert into info_TBL(INFO_BNO,INFO_TITLE,INFO_CONTENT,INFO_REGDATE)
values(INFO_bno_seq.nextval,'공지사항5','공지 내용5',sysdate);
 
select INFO_bno_seq.nextval from dual;

create sequence INFO_bno_seq;

------------------------------------------------
delete event_TBL;

select * from EVENT_TBL;

insert into event_TBL(EVENT_BNO,EVENT_TITLE,EVENT_CONTENT,EVENT_REGDATE)
values(EVENT_bno_seq.nextval,'이벤트1','이벤트 내용1',sysdate);
insert into event_TBL(EVENT_BNO,EVENT_TITLE,EVENT_CONTENT,EVENT_REGDATE)
values(EVENT_bno_seq.nextval,'이벤트2','이벤트 내용2',sysdate);
insert into event_TBL(EVENT_BNO,EVENT_TITLE,EVENT_CONTENT,EVENT_REGDATE)
values(EVENT_bno_seq.nextval,'이벤트3','이벤트 내용3',sysdate);
 
create sequence EVENT_bno_seq;
 
 
ALTER USER c##team DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;

select * from movie_board;
alter table movie_board add(key varchar(100));
alter table movie_board add(poster varchar(100));
alter table movie_board add(rank varchar(100));

insert into MOVIE_board values(20211111,'티탄','2021-12-09','120',
'아가트 루셀, 뱅상 랭동','드라마','프랑스','(주)영화특별시SMC','청소년관람불가','vjnNkaFsdMA','m11.jpg','No.11');

select * from user_tbl;

select * from info_tbl;

insert into MOVIE_board values(20211112,'해피 뉴 이어','2021-12-29','138',
'한지민, 이동욱, 강하늘, 윤아','멜로/로맨스','한국','CJ ENM','12세이상관람가','tAhLvuK7hb0','m12.jpg','No.12');
insert into MOVIE_board values(20211112,'해피 뉴 이어','한지민, 이동욱, 강하늘, 윤아','138',
,'멜로/로맨스','12세이상관람가','한국','CJ ENM','2021-12-29');

--포스터
UPDATE movie_board SET poster ='m1.jpg' where movieCD=20210028;
UPDATE movie_board SET poster ='m2.jpg' where movieCD=20210864;
UPDATE movie_board SET poster ='m3.jpg' where movieCD=20205986;
UPDATE movie_board SET poster ='m4.jpg' where movieCD=20196264;
UPDATE movie_board SET poster ='m5.jpg' where movieCD=20211831;
UPDATE movie_board SET poster ='m6.jpg' where movieCD=20212015;
UPDATE movie_board SET poster ='m7.jpg' where movieCD=20212217;
UPDATE movie_board SET poster ='m8.jpg' where movieCD=20010264;
UPDATE movie_board SET poster ='m9.jpg' where movieCD=20210600;
UPDATE movie_board SET poster ='m10.jpg' where movieCD=20210752;
UPDATE movie_board SET poster ='m11.jpg' where movieCD=20211111;
UPDATE movie_board SET poster ='m12.jpg' where movieCD=20211112;

--에고편
UPDATE movie_board SET key ='JfVOs4VSpmA' where movieCD=20210028;
UPDATE movie_board SET key ='DJs_ihmMZfg' where movieCD=20210864;
UPDATE movie_board SET key ='dWEQjU3GCE0' where movieCD=20205986;
UPDATE movie_board SET key ='egg3dUdD_Js' where movieCD=20196264;
UPDATE movie_board SET key ='blAzIwXB9zo' where movieCD=20211831;
UPDATE movie_board SET key ='zZaH7ENAkoY' where movieCD=20212015;
UPDATE movie_board SET key ='ojm9Q30Z6_M' where movieCD=20212217;
UPDATE movie_board SET key ='JSmz_o2q_wo' where movieCD=20010264;
UPDATE movie_board SET key ='Y1_Ujpsn1Jc' where movieCD=20210600;
UPDATE movie_board SET key ='rs8YZgpoYRM' where movieCD=20210752;
UPDATE movie_board SET key ='vjnNkaFsdMA' where movieCD=20211111;
UPDATE movie_board SET key ='tAhLvuK7hb0' where movieCD=20211112;

select * from csc_tbl;

--순위 
UPDATE movie_board SET rank ='No.1' where movieCD=20210028;
UPDATE movie_board SET rank ='No.2' where movieCD=20210864;
UPDATE movie_board SET rank ='No.3' where movieCD=20205986;
UPDATE movie_board SET rank ='No.4' where movieCD=20196264;
UPDATE movie_board SET rank ='No.5' where movieCD=20211831;
UPDATE movie_board SET rank ='No.6' where movieCD=20212015;
UPDATE movie_board SET rank ='No.7' where movieCD=20212217;
UPDATE movie_board SET rank ='No.8' where movieCD=20010264;
UPDATE movie_board SET rank ='No.9' where movieCD=20210600;
UPDATE movie_board SET rank ='No.10' where movieCD=20210752;
UPDATE movie_board SET rank ='No.11' where movieCD=20211111;
UPDATE movie_board SET rank ='No.12' where movieCD=20211112;

select * from csc_tbl;

alter table csc_tbl add(CSC_WRITER varchar(200));

UPDATE MOVIE_BOARD SET movieNM = '소드 아트 온라인' WHERE MOVIECD=20211831;
UPDATE MOVIE_BOARD SET movieNM = '라라와크리스마스요정' WHERE MOVIECD=20212217;
UPDATE MOVIE_BOARD SET movieNM = '뱅드림!' WHERE MOVIECD=20210752;

SELECT * FROM MOVIE_BOARD;
alter table movie_board ADD primary key(movieCD);

commit;

create table cmtboard(
	cmt_num number not null,
	cmt_writer varchar2(100) not null,
	cmt_star number not null,
	cmt_content varchar2(300) not null,
	cmt_movie varchar2(100) not null,
	cmt_regdate date DEFAULT sysdate
);

create table movie_reply(
   rno number(10,0) constraint pk_reply primary key, -- 댓글 글번호
   bno number(10,0) not null,   -- 원본 글번호
   user_id varchar2(50) not null,
   reply varchar2(1000) not null,   --댓글 내용
   replyer varchar2(50) not null,   --댓글 작성자
   replaydate date default sysdate,   --댓글 작성일
   updatedate date default sysdate,   --댓글 수정일
   constraint fk_movie_board foreign key(user_id) references user_tbl(user_id)
);


create sequence seq_reply;

create index idx_reply on movie_reply(bno desc, rno asc);

alter table user_tbl add(replyCnt number default 0);

 TRUNCATE table CSC_TBL;


create table comment_reply(
	idx number not null,
	writer varchar2(100) not null,
	commentDate date default sysdate,
	content varchar2(100) not null,
	delete_yn char(1) not null

);

create sequence seq_reply;

select * from REPLY_TBL;

select rank,poster,key,movieNM,actors,showTM,genres,watchGradeNm,nationNm,companyNm,openDt,movieCD from movie_board where movieCD = 20210028;

update MOVIE_BOARD set movieNM = '스파이더맨노웨이홈' where rank = 'No.1';


select rn,INFO_BNO,INFO_RFI,INFO_TITLE,INFO_CONTENT,INFO_REGDATE
from (select /*+INDEX_DESC(info_tbl SYS_C007695)*/ rownum rn,INFO_BNO,INFO_RFI,INFO_TITLE,INFO_CONTENT,INFO_REGDATE 
from info_tbl where rownum <= (1 * 10)) where rn > (1-1) * 10;
