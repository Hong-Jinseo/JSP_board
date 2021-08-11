/**
 * 
 */

function infoConfirm(){
	if(document.reg_frm.id.value.length == 0){
		alert("아이디를 입력하세요.");
		reg_frm.id.focus();
		return;
	}
	else if(document.reg_frm.id.value.length < 4){
		alert("아이디는 4글자 이상 이어야 합니다.");
		reg_frm.id.focus();
		return;
	}
	else if(document.reg_frm.pw.value.length == 0){
		alert("비밀번호를 입력하세요.");
		reg_frm.pw.focus();
		return;
	}
	else if(document.reg_frm.pw.value != document.reg_frm.pw_chk.value){
		alert("비밀번호가 일치하지 않습니다.");
		reg_frm.pw_chk.focus();
		return;
	}
	else if(document.reg_frm.name.value.length == 0){
		alert("이름을 입력하세요.");
		reg_frm.name.focus();
		return;
	}
	else if(document.reg_frm.phone2.value.length == 0 || document.reg_frm.phone3.value.length == 0){
		alert("전화번호를 입력하세요.");
		return;
	}
	else if(document.reg_frm.email.value.length == 0){
		alert("이메일을 입력하세요.");
		reg_frm.email.focus();
		return;
	}
	
	document.reg_frm.submit();
}