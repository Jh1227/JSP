-- imageboard table
CREATE TABLE imageboard(
seq NUMBER NOT NULL,                  -- 글번호
imageId VARCHAR2(20) NOT NULL,        -- 상품 코드
imageName VARCHAR2(40) NOT NULL,      -- 상품명
imagePrice NUMBER NOT NULL,           -- 상품 단가
imageQty NUMBER NOT NULL,             -- 상품 수량
imageContent VARCHAR2(4000) NOT NULL, -- 상품 설명
imageFile VARCHAR2(200),              -- 파일명
logtime DATE DEFAULT SYSDATE          -- 등록일자
);

CREATE SEQUENCE seq_imageboard NOCACHE NOCYCLE;


DESC imageBoard;
select * from imageboard;