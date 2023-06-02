// 인수로 넘겨받은 시간이 경과한 후 넘겨받은 시간을 리턴하는 promise를 리턴하는 함수
function timer(time) {
    return new Promise((resolve, reject) => {
        setTimeout( () => resolve(time) , time)
    });
}
timer(200).then( time => console.log('1 :' ,time) );

//==========================================================================================
// timer() 함수 실행 앞, 뒤에 start , end 표시
console.log('start 1');
timer(200)
.then( time =>
{
    console.log('2 :' ,time)
    return timer(time + 200);
}
).then( time =>
{
    console.log('2 :' , time)
    return timer(time + 200);
}
).then(time =>
{
    console.log('2 :' , time)
    console.log('end 1');
}
)
//위에서 실행한 것과 동일한 결과를 가지게끔 async와 await를 사용하는 함수로 수정
/*
function delay(ms) {
    return new Promise((resolve, reject) => setTimeout(() => resolve(), ms));
}

async function timer2 (time) {
    await delay(time);
    return time;
}
timer2(1000).then( time => console.log('4 :' , time))
*/

async function run() {
    console.log('start 3');
    let time = await timer(200);
    console.log('3 :' , time);
    time = await timer(time + 200);
    console.log('3 :' , time);
    time = await timer(time + 200);
    console.log('3 :' , time);
    console.log('end 3');
    //return할 값이 있다면 여기서 리턴
    return '리턴!';
}

//run() 함수 앞, 뒤에 parent start, parent end 표시
/* console.log('parent start');
run().then( result => console.log('3 then 출력: ' ,result) );
console.log('parent end'); */

// run() 함수에 await를 붙여서 run2() async 함수로 만든다.
async function run2() {
    console.log('parent start');
    //await run();
    let value = await run();
    console.log('3 리턴값 출력: ' ,value)
    console.log('parent end');
}

run2();