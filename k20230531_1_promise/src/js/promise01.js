//JSON(Javascript Object Notation)

//javascript 객체를 json으로 변환하기
//stringify(객체) : 인수로 지정된 javascript 객체를 json으로 변환한다.
console.log('1. =================================');
let json = JSON.stringify(true);
console.log(true);
console.log(json);

console.log('2. =================================');
json = JSON.stringify(['apple' , 'persimmon']);
console.log(['apple' , 'persimmon']);
console.log(json);

console.log('3. ===javascript 객체===============');
const rabbit = {
    name: '토끼',
    color: '회색',
    size: '작음',
    //javascript 객체나 함수는 stringify() 함수로 json형태로 변환시킬 수 없다.
    birthDate: new Date(),
    jump: function () {
        alert('객체 안의 함수');
    }
}
console.log(rabbit);
//json은 key 부분을 반드시 큰따움표를 사용하는 문자열로 만들어야 한다.
json = JSON.stringify(rabbit);
console.log(json);

console.log('4. ===stringify====================');
//stringify() 함수의 2번째 인수로 변환할 속성을 배열로 지정할 수 있다.
json = JSON.stringify(rabbit , ['name' , 'color']);
console.log(json);

console.log('4. ===stringify-콜백함수===========');
//보다 더 세밀한 제어를 하기 위해 2번째 인수로 콜백 함수를 지정할 수 있다.
json = JSON.stringify(rabbit , function (key, value) {
    console.log(key , value);
    return key == 'name' ? '별주부' : value;
});
console.log(json);

console.log('5. ===json-js객체로 전환==========');
// parse(json 객체) : 인수로 지정된 json을 javascript 객체로 변환한다.

//rabbit js객체를 json으로 변환한 후 다시 js객체로 변환한다.
json = JSON.stringify(rabbit);
console.log(json);
const obj = JSON.parse(json);
console.log(obj);
rabbit.jump();
// obj.jump() - 함수로는 전환 불가
console.log(rabbit.birthDate.getDate());
// console.log(obj.birthDate.getDate()); - json에 포함된 날짜도 문자열 데이터이므로 객체 전환 불가

console.log('6. ===json=>js객체로 전환-콜백함수==');
/*const obj2 = JSON.parse(json , function (key, value) {
    console.log(key , value);
    return key = 'birthDate' ? new Date() : value;
});
console.log(obj2);
console.log(obj2.birthDate.getDate());*/

console.log('6. ===json 관련 유용한 사이트======');
//   json 관련 유용한 사이트
//   1. json diff(https://json-diff.com/): 서버로 요청해 응답받은 데이터를 비교한다.
//   2. json beautifier(https://codebeautify.org/jsonviewer): json 데이터 포맷을 예쁘게 만든다.
//   3. json parser(http://json.parser.online.fr/): json 데이터를 객체 형태로 만든다.
//   4. json validator(https://jsonformatter.curiousconcept.com/): json 데이터가 유효한지 검사한다.















