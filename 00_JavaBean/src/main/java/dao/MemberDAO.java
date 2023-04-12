package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

import dto.MemberDTO;

public class MemberDAO {
	
	Scanner sc = new Scanner(System.in);
	
	// 연결정보
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String id = "dbtest_a";
	private String pwd = "a1234";
	
	public MemberDAO() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			System.out.println("로딩 성공!!");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public Connection getConnection() {
		Connection con = null;
		try {
			// DB 연결 객체 생성
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("연결 성공!!!");
		} catch (Exception e) {
			System.out.println("연결 실패!!!");
			e.printStackTrace();
		}
		return con;
	}
	// getConnection() end
	
	public int insert(MemberDTO dto) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		int su = 0;
		
		try {
			String sql = "insert into member values(?, ?, ?, sysdate)";
			con = getConnection();
			pstmt = con.prepareStatement(sql);
			
			System.out.print("이름 : ");
			String name = sc.nextLine();
			System.out.print("나이 : ");
			int age = sc.nextInt();
			System.out.print("키 : ");
			double height = sc.nextDouble();
			
			pstmt.setString(1, name);
			pstmt.setInt(2, age);
			pstmt.setDouble(3, height);
			su = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) {
					pstmt.close();
				}
				if(con != null) {
					con.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return su;
		
	} // insert() end
	
	public void select() {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet res = null;
		
		try {
			String sql = "select * from Member";
			con = getConnection();
			pstmt = con.prepareStatement(sql);
			res = pstmt.executeQuery();
			
			while(res.next()) {
				String name = res.getString("name");
				int age = res.getInt("age");
				double height = res.getDouble("height");
				String logtime = res.getString("logtime");
				System.out.println(name + "\t" + age + "\t" + height + "\t" + logtime);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(res != null) { res.close(); }
				if(pstmt != null) { pstmt.close(); }
				if(con != null) { con.close(); }
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
	} // select() end
	
	public int update(MemberDTO dto) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		int su = 0; 
		
		try {
			
			String sql = "UPDATE Member SET age = ? height = ?, where name = ?";
			con = getConnection();
			pstmt = con.prepareStatement(sql);
			su = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(con != null) { con.close(); }
				if(pstmt != null) { pstmt.close(); }
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return su;
		
	} // update() end
	
	public int delete(String name) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		String code = "";
		int su = 0;
		
		try {
			String sql = "delete member where name = ?";
			con = getConnection();
			pstmt = con.prepareStatement(sql);
			
			System.out.println("삭제할 이름을 입력하세요");
			code = sc.nextLine();
			pstmt.setString(1, code);
			su = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(con != null) { con.close(); }
				if(pstmt != null) { pstmt.close(); }
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return su;
		
	} // delete() end


}
