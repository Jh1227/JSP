
/* memberScript.js */

// 입력정보 확인
function checkWrite(){
	if(document.writeForm.name.value == ""){
		alert("이름을 입력하세요..");
		document.writeForm.name.focus();
	} else if(document.writeForm.id.value == ""){
		alert("아이디를 입력하세요..");
		document.writeForm.id.focus();
	} else if(document.writeForm.pwd.value == ""){
		alert("비밀번호를 입력하세요..");
		document.writeForm.pwd.focus();
	} else if(document.writeForm.pwd.value != document.writeForm.repwd.value){
		alert("비밀번호가 틀립니다..");
		document.writeForm.repwd.focus();
	} else if(document.writeForm.email.value == ""){
		alert("이메일을 입력하세요..");
		document.writeForm.email.focus();
	} else if(document.writeForm.tel_1.value == ""){
		alert("전화번호를 입력하세요..");
		document.writeForm.tel_1.focus();
	} else if(document.writeForm.tel_2.value == ""){
		alert("전화번호를 입력하세요..");
		document.writeForm.tel_2.focus();
	} else if(document.writeForm.tel_3.value == ""){
		alert("전화번호를 입력하세요..");
		document.writeForm.tel_3.focus();
	} else if(document.writeForm.addr.value == ""){
		alert("주소를 입력하세요..");
		document.writeForm.addr.focus();
	} else {
		document.writeForm.submit();
	}
}


// ID 중복 확인
function checkId(){
	var uid = document.writeForm.id.value;
	
	if(uid == ""){
		alert("아이디를 입력하세요!!");
		document.writeForm.id.focus();
	} else {
		window.open("./checkId.jsp?id=" + uid, "", "left=200, top=200, width=500, height=300");
	}
	
}


// 로그인
function login(){
	if(document.loginForm.id.value == ""){
		alert("아이디를 입력하세요!!");
		document.loginForm.id.focus();
	} else if(document.loginForm.pwd.value == ""){
		alert("비밀번호를 입력하세요!!");
		document.loginForm.pwd.focus();
	} else {
		document.loginForm.submit();
	}
}


// 회원정보 수정
function checkModify(){
	if(document.modifyForm.name.value == ""){
		alert("이름을 입력하세요..");
		document.modifyForm.name.focus();
	} else if(document.modifyForm.pwd.value == ""){
		alert("비밀번호를 입력하세요..");
		document.modifyForm.pwd.focus();
	} else if(document.modifyForm.pwd.value != document.modifyForm.repwd.value){
		alert("비밀번호가 틀립니다..");
		document.modifyForm.repwd.focus();
	} else if(document.modifyForm.email.value == ""){
		alert("이메일을 입력하세요..");
		document.modifyForm.email.focus();
	} else if(document.modifyForm.domain.value == ""){
		alert("도메인을 입력하세요..");
		document.modifyForm.domain.focus();
	} else if(document.modifyForm.tel_1.value == ""){
		alert("전화번호를 입력하세요..");
		document.modifyForm.tel_1.focus();
	} else if(document.modifyForm.tel_2.value == ""){
		alert("전화번호를 입력하세요..");
		document.modifyForm.tel_2.focus();
	} else if(document.modifyForm.tel_3.value == ""){
		alert("전화번호를 입력하세요..");
		document.modifyForm.tel_3.focus();
	} else if(document.modifyForm.addr.value == ""){
		alert("주소를 입력하세요..");
		document.modifyForm.addr.focus();
	} else {
		document.modifyForm.submit();
	}
}








