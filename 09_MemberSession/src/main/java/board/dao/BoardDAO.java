package board.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import board.dto.BoardDTO;

public class BoardDAO {

	private String driver = "oracle.jdbc.OracleDriver";
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String id = "dbtest_a";
	private String pwd = "a1234";
	
	private Connection con = null;
	private PreparedStatement pstmt = null;
	private ResultSet res = null;
	
	public BoardDAO() {
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
	
	
	// streamClose()
	public void streamClose(ResultSet res, PreparedStatement pstmt, Connection con) {
		try {
			if(res != null) { res.close(); }
			if(pstmt != null) { pstmt.close(); }
			if(con != null) { con.close(); }
		} catch (Exception e) {
			e.printStackTrace();
		}
	} // streamClose() end
	
	
	public int write(BoardDTO boardDTO) {
		
		int su = 0;
		
		try {
			
			String sql = "insert into board values(board_seq.nextval, ?, ?, ?, ?, 0, sysdate)";
			con = getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, boardDTO.getId()); // id
			pstmt.setString(2, boardDTO.getName()); // name
			pstmt.setString(3, boardDTO.getSubject()); // subject
			pstmt.setString(4, boardDTO.getContent()); // content
			su = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				streamClose(res, pstmt, con);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return su;
	} // write() end
	
	
	
}
