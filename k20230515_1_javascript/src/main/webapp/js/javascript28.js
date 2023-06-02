function randomNumber(number) {
	let a = parseInt(document.getElementById('random'));
	console.log(a);
	//random() : 0 이상이고 1 미만인 무작위수를 발생시킨다.
	for(let i = 0 ; i<6 ; i++) {
		//console.log(Math.random());
		console.log(parseInt(Math.random() * number) + 1);
	}
	console.log('=======================');
	
	//ceil(): 올림, floor() : 내림, round(): 반올림
	console.log('올림: ' + Math.ceil(3.14));
	console.log('올림: ' + Math.ceil(3.94));
	console.log('내림: ' + Math.floor(3.14));
	console.log('내림: ' + Math.floor(3.94));
	console.log('반올림: ' + Math.round(3.14));
	console.log('반올림: ' + Math.round(3.94));
}

function randomColor() {
	/* let r = parseInt(Math.random() * 256); //정수형 변환
	let g = Math.floor(Math.random() * 256); //소숫점 버림
	let b = Math.ceil(Math.random() * 256); //소숫점 버림
	console.log(`r: ${r}, g: ${g}, b: ${b}`);
	
	//document.body.style.backgroundColor = 'rgb(' + r + ', ' + g + ', ' + b + ')';
	document.body.style.backgroundColor = `rgb(${r} , ${g} , ${b})`; */
	
	/*let random = function () {
		return Math.floor(Math.random() * 256);
	}
	document.body.style.backgroundColor = 'rgb(' + random() + ', ' +random() + ', ' +random() + ')'; */
	
	let random = () => Math.floor(Math.random() * 256);
	document.body.style.backgroundColor = `rgb(${random()} , ${random()} , ${random()})`;
}

function randomCircle() {
	/* let r = parseInt(Math.random() * 256); //정수형 변환
	let g = Math.floor(Math.random() * 256); //소숫점 버림
	let b = Math.ceil(Math.random() * 256); //소숫점 버림
	console.log(`r: ${r}, g: ${g}, b: ${b}`);
	
	//document.body.style.backgroundColor = 'rgb(' + r + ', ' + g + ', ' + b + ')';
	document.body.style.backgroundColor = `rgb(${r} , ${g} , ${b})`; */
	
	/*let random = function () {
		return Math.floor(Math.random() * 256);
	}
	document.body.style.backgroundColor = 'rgb(' + random() + ', ' +random() + ', ' +random() + ')'; */
	
	let random = () => Math.floor(Math.random() * 256);
	document.body.style.backgroundColor = `rgb(${random()} , ${random()} , ${random()})`;
}

function randomCircle() {
	let radius = Math.floor(Math.random() * 100) + 1;
	console.log('원의 반지름: ' + radius);
	let circle = document.getElementById('circle');
	circle.style.width = radius * 2 + 'px'; // div 태그의 폭
	circle.style.height = radius * 2 + 'px'; // div 태그의 높이
	
	let random = () => Math.floor(Math.random() * 256);
	circle.style.border = '4px solid ' + `rgb(${random()} , ${random()} , ${random()})`;
	circle.style.backgroundColor = `rgb(${random()} , ${random()} , ${random()})`;
	circle.style.borderRadius = '50%';
}

function randomCircleArea() {
	/*let radius = Math.floor(Math.random() * 100) + 1;
	console.log('원의 반지름: ' + radius);
	document.querySelectorAll('span')[0].innerHTML = 3.14 * Math.pow(radius, 2);
	document.querySelectorAll('span')[1].innerHTML =  2 * 3.14 * radius;*/
	let circleWidth = document.querySelector('#circle').style.width; //width 속성 값을 얻어온다.
	console.log('원의 지름: ' + circleWidth);
	console.log(typeof circleWidth);
	
	let width = circleWidth.substring(0, circleWidth.length -2);
	console.log('원의 지름: ' + width);
	console.log(typeof width);
	
	width = parseInt(circleWidth);
	console.log('원의 지름: ' + width);
	console.log(typeof width);
	
	let radius = width / 2;
	console.log('원의 반지름: ' + radius);
	
	let area = Math.PI * Math.pow(radius, 2); //원의 너비
	let len = 2 * Math.PI * radius //원의 둘레
	
	document.getElementById('area').innerHTML = Math.round(area);
	document.getElementById('len').innerHTML = Math.round(len);
}
































