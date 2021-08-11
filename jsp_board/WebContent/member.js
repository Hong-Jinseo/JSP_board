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
	if(document.reg_frm.eMail.value.length == 0){
		alert("Please enter your e-mail address.");
		reg_frm.eMail.focus();
		return;
	}
	
	document.reg_frm.submit();
}