// 비밀번호가 일치하는가 확인하는 함수
function passwordCheckFunction() {
	if(document.getElementById('userPassword1').value == document.getElementById('userPassword2').value){
		let h5 = document.getElementById('passwordCheckMessage');
		h5.innerHTML = "비밀번호가 일치합니다.";
	} else {
		let h5 = document.getElementById('passwordCheckMessage');
		h5.innerHTML = "비밀번호가 일치하지 않습니다.";
	}
}