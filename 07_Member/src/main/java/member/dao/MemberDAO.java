package member.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import member.dto.MemberDTO;

public class MemberDAO {

	private String driver = "oracle.jdbc.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String id = "dbtest_a";
	private String pwd = "a1234";
	
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet res = null;
	
	public MemberDAO() {
		try {
			Class.forName(driver);
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
	} // getConnection() end
	
	
	// 회원 가입
	public int write(MemberDTO dto) {
		
		int res = 0;
		
		try {
			
			String sql = "insert into member values(?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
			con = getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getName());	// name
			pstmt.setString(2, dto.getId());// id
			pstmt.setString(3, dto.getPwd());// pwd
			pstmt.setString(4, dto.getGender());// gender
			pstmt.setString(5, dto.getEmail());// email
			pstmt.setString(6, dto.getDomain());// domain
			pstmt.setString(7, dto.getTel());// tel
			pstmt.setString(8, dto.getAddr());// addr
			res = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) { pstmt.close(); }
				if(con != null) { con.close(); }
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return res;
		
	} // write() end
	
	
	// ID 중복 확인
	public boolean isExistId(String id) {
		
		boolean exist = false; // id 사용중 : true, 미사용 : false
		
		try {
			
			String sql = "select * from member where id = ?";
			con = getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			res = pstmt.executeQuery();
			if(res.next()) {
				exist = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(con != null) { con.close(); }
				if(pstmt != null) { pstmt.close(); }
				if(res != null) { res.close(); }
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return exist;
		
	} // isExistId() end
	
	
	// 로그인 확인
	public String login(String id, String pwd) {
		
		String name = null;
		
		try {
			
			String sql = "select * from member where id=? and pwd=?";
			con = getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			res = pstmt.executeQuery();
			if(res.next()) {
				name = res.getString("name");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(con != null) { con.close(); }
				if(pstmt != null) { pstmt.close(); }
				if(res != null) { res.close(); }
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return name;
		
	}
	
	
}
