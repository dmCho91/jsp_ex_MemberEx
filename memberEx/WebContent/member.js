/**
 * 
 */

function infoConfirm(){
	// 아이디 입력확인
	if(document.f_reg.id.value.length == 0){
		alert("아이디는 필수 사항입니다.");
		f_reg.id.focus();
		return;
	}
	
	// 아이디 글자 수 확인 4글자 이상
	if(document.f_reg.id.value.length < 4){
		alert("아이디는 4글자 이상입니다.")
		f_reg.id.focus();
		return;
	}
	
	// 비밀번호 입력 확인
	if(document.f_reg.pw.value.length == 0){
		alert("비밀번호는 필수 사항입니다.");
		f_reg.pw.focus();
		return;
	}
	
	// 비밀번호 일치 확인
	if(document.f_reg.pw.value != document.f_reg.pw_check.value){
		alert("비밀번호가 일치하지 않습니다.");
		f_reg.pw_check.focus();
		return;
	}
	
	//이름 입력 확인
	if(document.f_reg.name.value.length == 0){
		alert("이름은 필수 사항입니다.");
		f_reg.name.focus();
		return;
	}
	
	// 메일 입력 확인
	if(document.f_reg.email.value.length == 0){
		alert("메일은 필수 사항입니다.");
		f_reg.email.focus();
		return;
	}
	
	// 주소 입력 확인
	if(document.f_reg.address.value.length == 0){
		alert("주소는 필수 사항입니다.");
		f_reg.address.focus();
		return;
	}
	
	//submit
	document.f_reg.submit();
}

function modifyConfirm(){
	// 비밀번호 입력 확인
	if(document.f_mod.pw.value.length == 0){
		alert("비밀번호를 입력하세요.");
		f_mod.pw.focus();
		return;
	}
	
	// 비밀번호 일치 확인
	if(document.f_mod.pw.value != document.f_mod.pw_check.value){
		alert("비밀번호가 일치하지 않습니다.");
		f_mod.pw_check.focus();
		return;
	}
	
	if(document.f_mod.email.value.length == 0){
		alert("메일은 필수 사항입니다.");
		f_mod.email.focus();
		return;
	}
	
	// 주소 입력 확인
	if(document.f_mod.address.value.length == 0){
		alert("주소는 필수 사항입니다.");
		f_mod.address.focus();
		return;
	}
	
	//submit
	document.f_mod.submit();
}