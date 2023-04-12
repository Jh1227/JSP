
-- 테이블 생성
CREATE TABLE member(
name VARCHAR2(30) NOT NULL,  -- 이름
id VARCHAR2(30) PRIMARY KEY, -- id
pwd VARCHAR2(30) NOT NULL,   -- 비밀번호
gender VARCHAR2(3),			 -- 성별
email VARCHAR2(20),			 -- 이메일
domain VARCHAR2(20),		 -- domain
tel VARCHAR2(13),			 -- 전화번호
addr VARCHAR2(100),			 -- 주소
logtime DATE                 -- 생성일자
); 

DESC member;
SELECT * FROM member;