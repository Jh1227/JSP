
/* imageboardScript.js */

// 상품 등록
function imageWrite(){
	if(document.imageboardWriteForm.imageId.value == ""){
		alert("상품 코드를 입력하세요!!");
		document.imageboardWriteForm.imageId.focus();
	} else if(document.imageboardWriteForm.imageName.value == ""){
		alert("상품명을 입력하세요!!");
		document.imageboardWriteForm.imageName.focus();
	} else if(document.imageboardWriteForm.imagePrice.value == ""){
		alert("상품 가격을 입력하세요!!");
		document.imageboardWriteForm.imagePrice.focus();
	} else if(document.imageboardWriteForm.imageQty.value == ""){
		alert("상품 수량을 입력하세요!!");
		document.imageboardWriteForm.imageQty.focus();
	} else if(document.imageboardWriteForm.imageContent.value == ""){
		alert("상품 설명을 입력하세요!!");
		document.imageboardWriteForm.imageContent.focus();
	} else {
		document.imageboardWriteForm.submit();
	}
}

// 상품 수정 확인
function imageModify(){
	if(document.imageboardModifyForm.imageId.value == ""){
		alert("상품 코드를 입력하세요!!");
		document.imageboardModifyForm.imageId.focus();
	} else if(document.imageboardModifyForm.imageName.value == ""){
		alert("상품명을 입력하세요!!");
		document.imageboardModifyForm.imageName.focus();
	} else if(document.imageboardModifyForm.imagePrice.value == ""){
		alert("상품 가격을 입력하세요!!");
		document.imageboardModifyForm.imagePrice.focus();
	} else if(document.imageboardModifyForm.imageQty.value == ""){
		alert("상품 수량을 입력하세요!!");
		document.imageboardModifyForm.imageQty.focus();
	} else if(document.imageboardModifyForm.imageContent.value == ""){
		alert("상품 설명을 입력하세요!!");
		document.imageboardModifyForm.imageContent.focus();
	} else {
		document.imageboardModifyForm.submit();
	}
} 







