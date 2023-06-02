//	falsy : 무조건 거짓이 되는 값 => 0, '', null, undefined, NaN
//	truthy : 무조건 참이 되는 값 => falsy를 제외한 나머지

// 단축 평가(shor-circuit evaluation) 논리 계산법
// '&&' 논리 연산에서 앞의 조건이 truthy면 '&&' 뒤의 내용이 출력된다.
console.log(true && 'hello');
// '&&' 논리 연산에서 앞의 조건이 falsy면 '&&' 뒤의 내용이 출력되지 않는다.
console.log(false && 'hello');
console.log('====================================');

const dog = {
	name: '멍멍이'
};

/*
function getName(animal) {
	console.log(animal);
	if(animal) {
		return animal.name;
	}
	return undefined;
}*/

function getName(animal) {
	console.log(animal);
	return animal && animal.name;
}
const name = getName(dog);
console.log(name);
const name2 = getName();
console.log(name2);
console.log('====================================');

// '||' 논리 연산에서 앞의 조건이 truthy한 값이면 '||'뒤의 내용은 볼 필요가 없으므로 truthy한 값이 출력된다.
console.log(true || 'hello');
console.log('abc' || 'hello');
// '||' 논리 연산에서 앞의 조건이 falsy한 값이면 '||' 뒤의 내용이 출력된다.
console.log(false || 'hello');

const cat = {
	name: '야옹이'
};

function getName2(animal) {
	console.log(animal);
	const name = animal || animal.name;
	if(name) {
		return name.name;
	} else {
		return 'null';
	}
}
const name3 = getName2(cat);
console.log(name3);
/*const name4 = getName2();
console.log(name4); -- 에러가 발생된다. */











