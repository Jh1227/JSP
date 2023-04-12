select * from tab;

DROP TABLE board PURGE;
DROP SEQUENCE board_seq;

-- board 테이블( 게시판 )
CREATE TABLE board(
seq NUMBER NOT NULL,			 -- 글번호
id VARCHAR2(30) NOT NULL,		 -- 아이디
name VARCHAR2(30) NOT NULL,		 -- 작성자
subject VARCHAR2(50) NOT NULL,	 -- 제목
content VARCHAR2(1000) NOT NULL, -- 내용
hit NUMBER DEFAULT 0,			 -- 조회수
logtime DATE DEFAULT SYSDATE	 -- 작성일자
); 

DESC board;
SELECT * FROM board;

-- seq 컬럼에 적용하는 board_seq 시퀀스 객체 생성
CREATE SEQUENCE board_seq NOCACHE NOCYCLE;


