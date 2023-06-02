a = 100;
console.log('a:' + a);

// ECMA Script5 부터 변수를 선언할 때 앞에 var를 붙여서 선언하기 시작했다.
var b = 200;
console.log('b:' + b);
var b = 'abcd';
console.log('b: ' + b);

//ECMA Script6부터 변수를 선언할 때 앞에 let이나 const를 붙여서 선언하기 시작했다.
let c = 300;
console.log('c: ' + c);
// let은 var와 달리 선언한 변수를 다시 선언하면 에러가 발생된다.
// let c = 'abcd'; //에러 발생
c = 'abcd';
console.log('c: ' + c);

const d = 400; //상수 선언 => 프로그램에서 값을 변경할 수 없다.
console.log('d: ' + d);
//const도 let과 마찬가지로 선언한 변수를 다시 선언하면 에러가 발생된다.
//const d = 'abcd'; //에러 발생
//const로 선언한 변수는 상수이므로 츠로그램에서 값을 변경하면 에러가 발생된다.
d='abcd';
console.log('d: ' + d);