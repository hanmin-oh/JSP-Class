// 동기 방식 처리 => 순서대로 실행한다.
//비동기 방식 처리
console.log('1');
//setTimeout(함수, 시간) : 지정한 시간이 경과된 후 함수를 실행한다.
setTimeout( function () {
    console.log('2');
}
,1000
)
console.log('3');
console.log('a');
console.log('b');
console.log('c');

//동기적 콜백
//변수를 var를 붙여서 선언하면 호이스팅에 의해서 맨 위로 올라간다.
printImmdiaterly(() => console.log('hello'));
function printImmdiaterly(print) {
    print();
}

//비동기적 콜백
function  printWithDelay(print, timeout) {
    setTimeout(print , timeout);
}
printWithDelay(() => console.log('async callback'), 1100);














