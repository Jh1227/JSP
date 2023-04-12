package dto;

import java.sql.Date;

/*
CREATE TABLE member(
name varchar2(20) not null,
age number,
height number(10, 2),
logtime date
);
*/

public class MemberDTO {
	
	private String name;
	private int age;
	private double height;
	private Date date;
	
	public MemberDTO() {
		super();
	}

	public MemberDTO(String name, int age, double height) {
		super();
		this.name = name;
		this.age = age;
		this.height = height;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
	
	
	
}
