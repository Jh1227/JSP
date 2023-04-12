package member.dto;

/*
CREATE TABLE member(
name VARCHAR2(30) NOT NULL,  -- 이름
id VARCHAR2(30) PRIMARY KEY, -- id
pwd VARCHAR2(30) NOT NULL,   -- 비밀번호
gender VARCHAR2(3),			 -- 성별
email VARCHAR2(20),			 -- 이메일
domain VARCHAR2(20),		 -- domain
tel VARCHAR2(13),			 -- 전화번호
addr VARCHAR2(100),			 -- 주소
logtime DATE				 -- 생성일자
);
*/
public class MemberDTO {

	private String name;
	private String id;
	private String pwd;
	private String gender;
	private String email;
	private String domain;
	private String tel;
	private String addr;
	
	public MemberDTO() {
		super();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDomain() {
		return domain;
	}

	public void setDomain(String domain) {
		this.domain = domain;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}
	
}
