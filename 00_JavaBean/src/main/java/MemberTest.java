import dao.MemberDAO;
import dto.MemberDTO;

public class MemberTest {

	public static void main(String[] args) {
		
		//MemberDAO dao = new MemberDAO();
		//dao.getConnection();
		
		//dao.insert(new MemberDTO("manA", 100, 199.9));
		
		//dao.select();
		
		//dao.update(new MemberDTO("manA", 50, 188.8));
		//dao.select();
		
		//dao.delete("manA");
		//dao.select();
		
		
		//-----------------------------------------------------------------------
		
		// 1.추가  2.삭제  3.수정  4.확인
		// - 필요한 데이터는 Scanner 로 입력받아서 처리합니다
		
		MemberControl control = new MemberControl();
		control.menu();
		
		
	}
	
	
	
}