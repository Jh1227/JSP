import java.util.Scanner;

import dao.MemberDAO;
import dto.MemberDTO;

public class MemberControl {

	private Scanner scanner = new Scanner(System.in);
	private MemberDAO dao;
	
	public MemberControl() {
		dao = new MemberDAO();
	}
	
	public void menu() {
		boolean run = true;
		while(run) {
			System.out.print("1.추가  2.삭제  3.수정  4.확인\n선택 >> ");
			int select = scanner.nextInt();
			
			switch(select) {
			case 1: // 추가
				MemberDTO insertMember = infoMember("--- 회 원   추 가 ---");
				if(dao.insert(insertMember) > 0) {
					System.out.println(insertMember.getName() + " 회원님 등록 완료");
				}
				break;
			case 2: // 삭제
				String dname = deleteMember();
				if(dao.delete(dname) > 0) {
					System.out.println(dname + "회원님 삭제 완료");
				} else {
					System.out.println("없는 회원입니다");
				}
				break;
			case 3: // 수정
				MemberDTO updateMember = infoMember("--- 회 원   수  정 ---");
				if(dao.update(updateMember) > 0) {
					System.out.println(updateMember.getName() + " 회원님 수정 완료");
				}
				break;
			case 4: // 확인
				dao.select();
				break;
			case 0: // 종료
				run = false;
			}
			System.out.println();
		}
		System.out.println("- Program end -");
	}
	
	// 입력 정보
	public MemberDTO infoMember(String title) {
		System.out.println(title);
		System.out.print("이름 입력 > ");
		String name = scanner.next();
		System.out.print("나이 입력 > ");
		int age = scanner.nextInt();
		System.out.print("키   입력 > ");
		double height = scanner.nextDouble();
		
		MemberDTO member = new MemberDTO(name, age, height);
		return member;
	}
	
	// 삭제 정보
	public String deleteMember() {
		System.out.println("--- 회 원   삭 제 ---");
		System.out.print("이름 입력 > ");
		String name = scanner.next();
		return name;
	}
	

	
}