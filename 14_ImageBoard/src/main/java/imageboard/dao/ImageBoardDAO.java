package imageboard.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import imageboard.dto.ImageBoardDTO;

public class ImageBoardDAO {

	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet res;
	private DataSource ds;
	
	public ImageBoardDAO() {
		try {
			
			Context context = new InitialContext();
			ds = (DataSource)context.lookup("java:comp/env/jdbc/oracle");
			
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}
	
	
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
	
	
	// 상품 등록
	public int imageboardWrite(ImageBoardDTO imageboardDTO) {
		
		int su = 0;
		
		try {
			
			String sql = "insert into imageboard values(seq_imageboard.nextval, ?, ?, ?, ?, ?, ?, sysdate)";
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, imageboardDTO.getImageId());      // Id
			pstmt.setString(2, imageboardDTO.getImageName());    // Name
			pstmt.setInt(3, imageboardDTO.getImagePrice());      // Price
			pstmt.setInt(4, imageboardDTO.getImageQty());        // Qty
			pstmt.setString(5, imageboardDTO.getImageContent()); // Content
			pstmt.setString(6, imageboardDTO.getImageFile());    // File
			su = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			streamClose(res, pstmt, con);
		}
		
		return su;
		
	} // imageboardWrite() end
	
	
	// 상품 목록
	public ArrayList<ImageBoardDTO> imageboardList(int start, int last){
		
		ArrayList<ImageBoardDTO> list = new ArrayList<>();
		ImageBoardDTO imageboardDTO = null;
		
		try {
			
			String sql = "select * from "
						 + "(select rownum rn, tt. * from "
						 + "(select * from imageboard order by seq desc) tt) "
						 + "where rn>=? and rn<=?";
			
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, last);
			res = pstmt.executeQuery();
			
			while(res.next()) {
				imageboardDTO = new ImageBoardDTO();
				imageboardDTO.setSeq(res.getInt("seq"));
				imageboardDTO.setImageId(res.getString("imageId"));
				imageboardDTO.setImageName(res.getString("imageName"));
				imageboardDTO.setImagePrice(res.getInt("imagePrice"));
				imageboardDTO.setImageQty(res.getInt("imageQty"));
				imageboardDTO.setImageContent(res.getString("imageContent"));
				imageboardDTO.setImageFile(res.getString("imageFile"));
				list.add(imageboardDTO);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			streamClose(res, pstmt, con);
		}
		
		return list;
		
	} // imageboardList() end
	
	
	// 전체 상품 목록수
	public int getTotalArticle() {
		
		int total = 0;
		
		try {
			
			String sql = "select count(*) from imageboard";
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			res = pstmt.executeQuery();
			if(res.next()) {
				total = res.getInt(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			streamClose(res, pstmt, con);
		}
		
		return total;
		
	} // getTotalArticle() end
	
	
	// 상품 정보 보기
	public ImageBoardDTO imageboardInfo(int seq) {
		
		ImageBoardDTO imageboardDTO = null;
		
		try {
			
			String sql = "select * from imageboard where seq=?";
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, seq);
			res = pstmt.executeQuery();
			
			if(res.next()) {
				imageboardDTO = new ImageBoardDTO();
				imageboardDTO.setSeq(res.getInt("seq"));
				imageboardDTO.setImageId(res.getString("imageId"));
				imageboardDTO.setImageName(res.getString("imageName"));
				imageboardDTO.setImagePrice(res.getInt("imagePrice"));
				imageboardDTO.setImageQty(res.getInt("imageQty"));
				imageboardDTO.setImageContent(res.getString("imageContent"));
				imageboardDTO.setImageFile(res.getString("imageFile"));
				imageboardDTO.setLogtime(res.getString("logtime"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			streamClose(res, pstmt, con);
		}
		
		return imageboardDTO;
		
	} // imageboardInfo() end
	
	
	// 상품 정보 수정
	public int imageboardModify(ImageBoardDTO imageboardDTO) {
		
		int su = 0;
		
		try {
			
			String sql = null;
			if(imageboardDTO.getImageFile() != null) {
				sql = "update imageboard set imageId=?, imageName=?, imagePrice=?, imageQty=?, imageContent=?, imageFile=? where seq=?";
			} else {
				sql = "update imageboard set imageId=?, imageName=?, imagePrice=?, imageQty=?, imageContent=?, where seq=?";
			}
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, imageboardDTO.getImageId());
			pstmt.setString(2, imageboardDTO.getImageName());
			pstmt.setInt(3, imageboardDTO.getImagePrice());
			pstmt.setInt(4, imageboardDTO.getImageQty());
			pstmt.setString(5, imageboardDTO.getImageContent());
			pstmt.setInt(6, imageboardDTO.getSeq());
			if(imageboardDTO.getImageFile() != null) {
				pstmt.setString(6, imageboardDTO.getImageFile());
				pstmt.setInt(7, imageboardDTO.getSeq());
			}
			su = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			streamClose(res, pstmt, con);
		}
		
		return su;
		
	} // imageboardModify() end
	
	
	// 상품 삭제
	public int imageboardDelete(int seq) {
		
		int su = 0;
		
		try {
			
			String sql = "delete imageboard where seq=?";
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, seq);
			su = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			streamClose(res, pstmt, con);
		}
		
		return su;
		
	} // imageboardDelete() end
	
}
