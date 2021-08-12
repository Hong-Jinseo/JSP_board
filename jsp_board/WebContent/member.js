/**
 * 
 */

function infoConfirm() {
	
	if(document.reg_frm.id.value.length == 0){
		alert("Please enter your ID.");
		reg_frm.getElementById('id').focus();
		return;
	}
	if(document.reg_frm.id.value.length < 4){
		alert("ID must be at least 4 characters long.");
		reg_frm.getElementById('id').focus();
		return;
	}
	if(document.reg_frm.pw.value.length == 0){
		alert("Please enter your password.");
		reg_frm.pw.focus();
		return;
	}
	if(document.reg_frm.pw.value != document.reg_frm.pw_chk.value){
		alert("Passwords do not match.");
		reg_frm.pw_chk.focus();
		return;
	}
	if(document.reg_frm.name.value.length == 0){
		alert("Please enter your name.");
		reg_frm.name.focus();
		return;
	}
	if(document.reg_frm.nickname.value.length == 0){
		alert("Please enter your nickname.");
		reg_frm.nickname.focus();
		return;
	}
	if(document.reg_frm.phone2.value.length == 0 || document.reg_frm.phone3.value.length == 0){
		alert("Please enter your phone number.");
		return;
	}
	if(document.reg_frm.email.value.length == 0){
		alert("Please enter your e-mail address.");
		reg_frm.email.focus();
		return;
	}
	
	document.reg_frm.submit();
}


function updateInfoConfirm(){
	
	if(document.reg_frm.nickname.value.length == 0) {
		alert("닉네임을 입력해주세요.");
		reg_frm.nickname.focus();
		return;
	}
	if(document.reg_frm.phone1.value.length==0 || document.reg_frm.phone2.value.length==0 || document.reg_frm.phone3.value.length==0) {
		alert("전화번호를 입력해주세요.");
		reg_frm.phone1.focus();
		return;
	}
	if(document.reg_frm.birthY.value.length==0 || document.reg_frm.birthM.value.length==0 || document.reg_frm.birthD.value.length==0) {
		alert("생일을 입력해주세요.");
		reg_frm.birthY.focus();
		return;
	}
	
	document.reg_frm.submit();
}


function updatePw(){
	if(document.reg_frm.pw.value == "") {
		alert("비밀번호를 입력해주세요.");
		document.reg_frm.pw.focus();
		return;
	}
	
	if(document.reg_frm.pw.value != document.reg_frm.pw_chk.value) {
		alert("비밀 번호가 일치하지 않습니다.");
		reg_frm.pw.focus();
		return;
	}
}

function changeContentConfirm(){
	if(document.content_form.bUserId.value != document.content_form.loginId.value) {
		alert("작성자만 글 수정이 가능합니다.");
		return;
	}
	document.content_form.submit();
}