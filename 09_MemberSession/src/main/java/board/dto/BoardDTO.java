package board.dto;

/*
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
*/

public class BoardDTO {

	private int seq;
	private String id;
	private String name;
	private String subject;
	private String content;
	private int hit;
	private String logtime;
	
	public BoardDTO() {
		super();
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public String getLogtime() {
		return logtime;
	}

	public void setLogtime(String logtime) {
		this.logtime = logtime;
	}
	
	
	
}
