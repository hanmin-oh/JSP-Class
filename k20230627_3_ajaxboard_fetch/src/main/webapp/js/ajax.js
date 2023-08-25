const searchRequest = new XMLHttpRequest();
const insertRequest = new XMLHttpRequest();

/*
//	javascript ajax를 이용한 검색 요청
function searchFunction() {
	// GET 방식 요청
	let url = './AjaxSearch?name=' + encodeURIComponent(document.getElementById('username').value);
	searchRequest.open('GET', url, true);
	searchRequest.send(null);
	// POST 방식 요청
	let url = './AjaxSearch';
	// searchRequest.open('POST', url, true);
	// searchRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	// searchRequest.send('name=' + encodeURIComponent(document.getElementById('username').value));
	// searchRequest.onreadystatechange = searchProcess;
}

function searchProcess() {
	if (searchRequest.readyState == 4 && searchRequest.status == 200) {
		let object = eval('(' + searchRequest.responseText + ')');
		let result = object.result;
		let tbody = document.getElementById('ajaxTable');
		tbody.innerHTML = "";
		for (let i=0; i<result.length; i++) {
			let row = tbody.insertRow(i);
			for (let j=0; j<result[i].length; j++) {
				let cell = row.insertCell(j);
				cell.innerHTML = result[i][j].value;
			}
		}
	}
}
*/

//	fetch ajax를 이용한 검색 요청
function searchFunction() {
	// GET 방식 요청
	let url = './AjaxSearch?name=' + encodeURIComponent(document.getElementById('username').value);
	fetch(url, {
		method: 'GET'
	}).then(response => {
		response.text().then(text => {
			// javascript ajax는 searchRequest.responseText를 이용했지만 response.text()로 얻어낸 
			// text를 써준다.
			let result = eval('(' + text + ')').result;
			let tbody = document.getElementById('ajaxTable');
			tbody.innerHTML = '';
			for (let i=0; i<result.length; i++) {
				let row = tbody.insertRow(i);
				for (let j=0; j<result[i].length; j++) {
					let cell = row.insertCell(j);
					cell.innerHTML = result[i][j].value;
				}
			}
		});
	});
}

onload = () => searchFunction();

/*
function insertFunction() {
	let url = './AjaxInsert?name=' + encodeURIComponent($('#name').val())
			+ '&age=' + encodeURIComponent($('#age').val())
			+ '&gender=' + encodeURIComponent($('input[name=gender]:checked').val())
			+ '&email=' + encodeURIComponent($('#email').val());
	insertRequest.open('GET', url, true);
	insertRequest.send(null);
	insertRequest.onreadystatechange = insertProcess;
}

function insertProcess() {
	if (insertRequest.readyState == 4 && insertRequest.status == 200) {
		$('#name').val('');
		$('#age').val('');
		$('#email').val('');
		$('#username').val('');
		$('#name').focus();
		let result = insertRequest.responseText;
		if (result == 1) {
			alert('저장 성공!!!');
			searchFunction();
		} else {
			alert('저장 실패!!!');
		}
	}
}
*/

//	fetch ajax를 이용한 저장 요청
function insertFunction() {
	const formData = new FormData();
	formData.append("name", encodeURIComponent($('#name').val()));
	formData.append('age', encodeURIComponent($('#age').val()));
	// formData.append('gender', encodeURIComponent($('input[name=gender]:checked').val()));
	formData.append('gender', $('input[name=gender]:checked').val());
	formData.append('email', encodeURIComponent($('#email').val()));
	const payload = new URLSearchParams(formData);
	
	let url = './AjaxInsert';
	fetch(url, {
		method: 'POST',
		body: payload,
		headers: {
			'Content-Type': 'application/x-www-form-urlencoded'
		}
	}).then(function (response) {
		response.text().then(function (text) {
			if (text == 1) {
				alert('저장 성공!!!');
				$('#name').val('');
				$('#age').val('');
				$('#email').val('');
				$('#username').val('');
				$('#name').focus();
				searchFunction();
			} else {
				alert('저장 실패!!!');
			}
		});
	});
}














