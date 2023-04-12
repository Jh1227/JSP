package school.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import school.dto.SchoolDTO;


public class SchoolDAO {
	
	// 연결정보
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String id = "dbtest_a";
	private String pwd = "a1234";
	
	public SchoolDAO() {
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
	} // getConnection() end
	
	
	// 추가
	public boolean insert(SchoolDTO dto) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean check = false; // 성공 : true, 실패 : false
		
		try {
			String sql = "insert into School values(?, ?, ?)";
			con = getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getValue());
			pstmt.setInt(3, dto.getCode());
			int su = pstmt.executeUpdate();
			if(su > 0) {
				check = true;
			}
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
		return check;
		
	} // insert() end
	
	
	// 검색
	public void select(SchoolDTO dto) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet res = null;
		
		try {
			String sql = null;
			if(dto == null) {
				sql = "select * from school";
			} else if(dto.getName() != null) {
				sql = "select * from school where name like ?";
			} else {
				sql = "select * from school where code = ?";
			}
			
			con = this.getConnection();
			pstmt = con.prepareStatement(sql);
			if(dto != null) {
				if(dto.getName() != null) {
					pstmt.setString(1, "%"+dto.getName()+"%");
				} else {
					pstmt.setInt(1, dto.getCode());
				}
			}
			res = pstmt.executeQuery();
			
			while(res.next()) {
				String name = res.getString("name");
				String value = res.getString("value");
				int code = res.getInt("code");
				System.out.print("이름 : " + name + "\t");
				if(code == 1) {
					System.out.println("학번 : " + value);
				} else if(code == 2) {
					System.out.println("과목 : " + value);
				} else {
					System.out.println("부서 : " + value);
				}
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
	
	// 수정
	public boolean update(SchoolDTO dto) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean check = false;
		
		try {
			
			String sql ="update school set value =?, code =? where name =?";
			con = this.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getValue());
			pstmt.setInt(2, dto.getCode());
			pstmt.setString(3, dto.getName());
			int result = pstmt.executeUpdate();
			if(result > 0) {
				check = true;
			}
			
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
		return check;
	}
	
	// 삭제
	public boolean delete(String name) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean check = false;
		
		try {
			
			String sql ="delete school where name = ?";
			con = this.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, name);
			int su = pstmt.executeUpdate();
			if(su > 0) {
				check = true;
			}
			
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
		return check;
		
	} // delete() end
	
	// 목록
	public ArrayList<SchoolDTO> getList(){
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet res = null;
		ArrayList<SchoolDTO> list = new ArrayList<>();
	
		try {
			String sql = "select * from School";
			con = getConnection();
			pstmt = con.prepareStatement(sql);
			res = pstmt.executeQuery();
			
			while(res.next()) {
				String name = res.getString("name");
				String value = res.getString("value");
				int code = res.getInt("code");
				
				list.add(new SchoolDTO(name, value, code));
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
		if(list.isEmpty()) {
			list = null;
		}
		return list;
		
	} // getList() end
	
	
}
