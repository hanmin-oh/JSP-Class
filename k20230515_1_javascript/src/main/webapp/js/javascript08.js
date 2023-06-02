let superheros = ['이순신', '을지문덕' , '강감찬' , '홍범도'];
console.log('==========일반 for================');
for(let i = 0 ; i<superheros.length ; i++) {
	console.log(superheros[i]);
}

console.log('==========향상된 for================');
for(let hero of superheros) {
	console.log(hero);
}

console.log('==========향상된 for(in)============');
for(let i in superheros) {
	console.log(superheros[i]);
}

console.log('=========for each-일반함수==========');
//배열명.forEach(): 인수로 지정된 함수로 배열 요소를 차례대로 전달하며 함수를 반복해 실행한다.
function print(hero) { //일반 함수
	console.log(hero);
}
// 배열명.forEach(함수명), forEach() 함수의 인수로 전달되는 함수 뒤에 ()를 붙이면 안된다.
superheros.forEach(print);

console.log('========for each-화살표함수==========');
const print2 = (hero) => { console.log(hero); } //익명 화살표 함수
superheros.forEach(print2);

console.log('======for each-화살표함수(생략)=======');
const print3 = hero => console.log(hero); //익명 화살표 함수
superheros.forEach(print3);

console.log('====for each-인수로 화살표함수 전달====');
// forEach() 함수의 인수로 화살표 익명 함수 전달
superheros.forEach( (hero) => { console.log(hero); });

console.log('==for each-인수로 생략 화살표함수 전달==');
superheros.forEach( hero =>  console.log(hero) );

console.log('======for문 이용한 배열에 값 대입======');
//기존 배열에 저장된 값을 제곱해서 새 배열을 만든다.
const array = [1, 2, 3, 4, 5, 6, 7, 8];
const squared = []; //빈 배열


for (let i = 0 ; i<array.length ; i++) {
	//squared.push(array[i] * array[i]);
	//squared.push(array[i] ** 2 );
	squared.push(Math.pow(array[i] , 2));
}
console.log(squared);

const squared2 = [];
for(let n of array) {
	squared2.push(Math.pow(n , 2));
}
console.log(squared2);

const squared3 = [];
for(let i in array) {
	squared3.push(Math.pow(array[i] , 2));
}
console.log(squared3);

console.log('====forEach 이용한 배열에 값 대입=====');
const squared4 = [];
function square(n) {
	squared4.push(Math.pow(n, 2));
}
array.forEach(square);
console.log(squared4);

console.log('=forEach 이용한 배열에 값 대입-익명함수=');
const squared5 = [];
array.forEach(function(n){squared5.push(Math.pow(n, 2)); });
console.log(squared5);

console.log('=forEach 이용한 배열에 값 대입-화살표함수=');
const squared6 = [];
array.forEach(n => squared6.push(Math.pow(n, 2)));
console.log(squared6);

console.log('=======map() 이용한 배열에 값 대입========');
//	map(): 배열의 요소들을 대상으로 인수로 지정한 함수의 실행 결과를 배열로 리턴한다.
function square2(n) {
	return Math.pow(n, 2);
}
const squared7 = array.map(square2);
console.log(squared7);

console.log('===map() 이용한 배열에 값 대입-익명함수===');
//	map(): 배열의 요소들을 대상으로 인수로 지정한 함수의 실행 결과를 배열로 리턴한다.
const squared8 = array.map(function square2(n) {
	return Math.pow(n, 2);
});
console.log(squared7);

console.log('===map() 이용한 배열에 값 대입-화살표함수===');
//	map(): 배열의 요소들을 대상으로 인수로 지정한 함수의 실행 결과를 배열로 리턴한다.
const squared9 = array.map(n => Math.pow(n, 2));
console.log(squared7);


console.log('==============for=================');
//배열 내부의 객체에서 key가 text인 value 값만 얻어와서 새 배열을 만든다.
const items = [
	{
		id: 1,
		text: 'hello'
	},
	{
		id: 2,
		text: 'bye'
	}
];

const text = [];
for(let i = 0 ; i<items.length ; i++) {
	text.push(items[i].text);
}
console.log(text);

const text2 = [];
for(let item of items) {
	text2.push(items.text);
}
console.log(text2);

const text3 = [];
for (let i in items) {
	text3.push(items[i].text);
}
console.log(text3);

console.log('==============forEach=================');
const text4 = [];
function textChoice(item) {
	text4.push(item.text);
}
items.forEach(textChoice);
console.log(text4);

const text5 = [];
items.forEach(function (item) {
	text5.push(item.text);
});
console.log(text5);

const text6 = [];
items.forEach(item => text6.push(item.text) );
console.log(text6);

console.log('================map=================');
function textChoice2(item) {
	return item.text;
}
const text7 = items.map(textChoice2);
console.log(text7);

const text8 = items.map(function (item) {
	return item.text;
});
console.log(text8);

const text9 = items.map(item => item.text);
console.log(text9);

console.log('==============indexOf()===============');
//indexOf(): 배열 전체에서 인수로 지정된 값의 첫 번째 요소를 찾아 index를 리턴한다.
//lastIndexOf(): 배열 전체에서 인수로 지정된 값의 오른쪽에서 첫 번째 요소를 찾아 index를 리턴한다.
//인수로 지정한 값이 있으면 index가 리턴되지만 없으면 -1이 리턴된다.
let superheros2 = ['이순신', '을지문덕' , '강감찬' , '이순신', '홍범도'];
const index = superheros2.indexOf('이순신');
console.log(index);
const index2 = superheros2.lastIndexOf('이순신');
console.log(index2);
const index3 = superheros2.indexOf('안창호');
console.log(index3);

if(index >=0) {
	console.log('있음');
} else {
	console.log('없음');
}
console.log(index3 >= 0 ? '있음' : '없음');

console.log('============findIndex()===============');

const todos = [
	{
		id : 1,
		text : '자바스크립트 입문',
		done : true
	},
	{
		id : 2,
		text : '함수',
		done : true
	},
	{
		id : 3,
		text : '객체와 배열',
		done : true
	},
	{
		id : 4,
		text : '배열 함수',
		done : false
	}
];

// findIndex(): 배열에서 인수로 지정된 조건을 만족하는 첫 번째 요소의 index를 리턴한다.
// 배열명.findIndex(조건) => 조건은 함수로 작성해야 한다.
// 인수로 지정한 조건을 만족하는 값이 있으면 index가 리턴되지만 없으면 -1이 리턴된다.

function todoChoice(todo) {
	return todo.id == 2;
}
const index4 = todos.findIndex(todoChoice);
console.log(index4);

const index5 = todos.findIndex(function (todo) {
	return todo.id == 4;
});
console.log(index5);

const index6 = todos.findIndex(todo =>todo.id == 5);
console.log(index6);

console.log('===============find=================');
// find(): 배열에서 인수로 지정된 조건을 만족하는 첫 번째 요소를 찾아 리턴한다.
// 배열명.find(조건) => 조건은 함수로 작성해야 한다.
// 인수로 지정된 조건을 만족하는 값이 있으면 값이 리턴되지만 없으면 -1이 리턴된다.

function todoFind(todo) {
	return todo.done == false;
}
const item = todos.find(todoFind);
console.log(item);

const item2 = todos.find(function todoFind(todo) {
	return todo.done == true;
});
console.log(item2);

const item3 = todos.find(todo => todo.done == 'error');
console.log(item3);

console.log('===============filter=================');
// filter(): 배열에서 인수로 지정한 조건을 만족하는 모든 요소를 찾아 배열로 리턴한다.
// 배열명.filter(조건) => 조건은 함수로 작성해야 한다.
// 인수로 지정한 조건을 만족하는 값이 있으면 만족하는 값이 저장된 배열이 리턴되고 조건을
// 만족하는 값이 없으면 빈 배열이 리턴된다.
function todoFilter(todo) {
	return todo.done;
}
const item4 = todos.filter(todoFilter);
console.log(item4);

const item5 = todos.filter(function todoFilter(todo) {
	return !todo.done;
});
console.log(item5);

const item6 = todos.filter(todo => todo.done == 'error');
console.log(item6);


























