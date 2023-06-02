//'+' : 문자열 연결 연산자
console.log("'my' + 'cat' = " +  'my' + 'cat');
console.log("'5' + '2' = " +  '5' + 2);
console.log("'5' + '2' = " +  (parseInt('5') + 2));

// string literal
console.log('string literal: 1 + 2 = ' + 1 + 2 );
console.log('string literal: 1 + 2 =  ${ 1 + 2 }');
console.log(`string literal: 1 + 2 =  ${ 1 + 2 }`);
console.log('=====================================');

// 산출 연산자
// '+'을 제외한 나머지 산술 연산자(-, * , / , %) 문자와 숫자를 연산하면 숫자로 계산한다.
console.log("'5' + '2' = " +  '5' + 2);
console.log('5' - 2);
console.log("'5' - '2' = " +  '5' - 2);
console.log("'5' - '2' = " +  ('5' - 2));
console.log("'5' * '2' = " +  '5' * 2);
console.log("'5' / '2' = " +  '5' / 2);
console.log("Math.ceil : '5' / '2' = " + Math.ceil('5' / 2)); 
console.log("Math.floor: '5' / '2' = " + Math.floor('5' / 2)); 
console.log("Math.round: '5' / '2' = " + Math.round('5' / 2)); 
console.log("'5' / '2' = " + ('5' / 2)); 
console.log("parseInt 활용 '5' / '2' = " + parseInt('5' / 2)); 

console.log("'5' % '2' = " +  '5' % 2);
console.log("'5' ** '2' = " +  Math.pow('5',2));
console.log("'5' ** '2' = " +  '5' ** 0.5);
console.log("'5' ** '2' = " +  Math.sqrt('5'));
console.log('=====================================');

// 증감 연산자
let counter = 2;
const preIncrement = ++counter;
console.log(`preIncrement:  ${ preIncrement } , counter: ${counter }` );
const preIncrement1 = ++counter;
console.log(`preIncrement:  ${ preIncrement1 } , counter: ${counter }` );

//대입 연산자
let x = 6;
let y = 3;
console.log(`x += y => x : ${x += y}`)
console.log(`x -= y => x : ${x -= y}`)
console.log('=====================================');

//관계 연산자 - 관계 연산자도 숫자와 문자를 비교하면 숫자로 비교한다.
console.log(`10 < 6 = ${10 < 6 }`);

// 자바스크립트는 '===' 와 '!==' 연산자가 있다.
// '=='나 '!='는 데이터 타입을 구분하지 않고 값만 비교한다. => 문자도 숫자로 비교한다.
// '==='와 '!=='는 데이터 타입과 값을 비교한다. 
console.log(`10 == '10' : ${ 10 == '10' }`);
console.log(`10 === '10' : ${ 10 === '10' }`);
console.log('=====================================');

//논리 연산자
console.log(`true && true : ${true && true}`);
console.log(`true && false : ${true && false}`);
console.log(`true || false : ${true || false}`);

// 자바스크립트는 0을 제외한 모든 숫자를 true로 0을 거짓으로 취급한다.
console.log(`!1 : ${!1}`);
console.log(`!0 : ${!0}`);
console.log(`!!3 : ${!!3}`);













