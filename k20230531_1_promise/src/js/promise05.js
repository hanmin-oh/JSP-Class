/* promise는 javascript의 비동기 처리에 사용되는 객체이다.
비동기 처리란 특정 코드의 실행이 완료될 때 까지 기다리지 않고 다음 코드를 먼저 실행하는 js의
특성을 말한다. */

/*  promise state : pending => fulfilled 또는 rejected
pending(대기): promise가 실행되기 이전 상태, 이행하지도 않고 거부하지도 않은 상태
fulfiled(이행) : 연산이 성공적으로 실행됨
rejected(거부) : 연산이 실패함  */

/* promise 만들기
새로운 promise가 생성되면 promise 객체를 만들 때 인수로 넘겨주는 executor 함수가 자동으로 실행된다.
const promise이름 = new Promise(executor 함수);*/
/*const promise = new Promise(function (resolve, reject) {
    console.log('promise의 executor함수가 실행됨');
    setTimeout( function () {
        //promise가 정상적으로 실행된 결과는 resolve() 함수의 인수로 리턴시킨다.
        resolve('이순신');
        //promise가 실패한 경우 결과는 reject() 함수의 인수로 리턴시킨다.
        reject('에러 발생');
    }, 2000);
});*/

const promise = new Promise( (resolve, reject) => {
    console.log('1. promise의 executor함수가 실행됨');
    setTimeout( () =>  {
        //resolve('이순신');
        reject('1. 에러 발생');
    }, 1000);
} );

/* promise 사용하기
resolve로 리턴되는 값은 then()으로 받아 처리하고 reject로 리턴되는 값은 catch()로 받아 처리한다.
promise의 성공, 실패 여부와 상관없이 무조건 실행할 코드가 있다면 finally()로 처리한다.   */

/*
promise
    .then(function (value) { // promise가 resolve(정상 처리)되면 실행할 코드를 입력한다.
        console.log('promise then : ' + value);
    })
    .catch(function (error) { // promise가 reject(오류 발생)되면 실행할 코드를 입력한다.
        console.log(error);
    })
    .finally(function () { // 성공, 실패와 상관없이 실행
        console.log('finally');
    });
*/
promise
    .then( value => console.log(value) )
    .catch( error => console.log(error) )
    .finally( () => console.log('1. finally ====================') );


/* promise chaning('.'으로 연결해서 함수를 실행하는 것) */
const fetchNumber = new Promise( function (resolve, reject) {
    console.log('2. 실행')
    setTimeout( () => resolve(2), 1200);
})

fetchNumber
    .then( number => {console.log(number); return number * 2;} )
    //이전 then()에서 리턴하는 값을 다음 then에서 받아 처리한다.
    .then( number => {console.log(number); return number * 2;} )
    .then( number => {console.log(number); return new Promise( function (resolve, reject) {
            setTimeout( () => resolve(number - 1), 200); //위의 시간과 더한다 (1200+200)
        })
    })
    .then( number => console.log(number) )
    .catch( error => console.log(error) )
    .finally( () => console.log('2. finally ====================') );



const getHen = () => new Promise( (resolve, reject) =>  setTimeout( () =>  resolve('암탉'), 1000) );
const getEgg = hen => new Promise( (resolve, reject) =>
    setTimeout( () => resolve( hen + '=> 달걀') , 1000)
    // setTimeout( () => reject('error!!') , 1000) -동시실행하면 reject defined
);
const getMeal = egg => new Promise( (resolve, reject) => setTimeout( () => resolve(

    egg + ' =>후라이'), 1000) );

getHen()
    .then( hen => getEgg(hen) )
    //에러가 발생된 시점에서 에러를 처리하면 발생된 시점에 catch()를 붙여 처리하면 된다.
    .catch( () => '에러')
    .then( egg => getMeal(egg) )
    //.then( meal => console.log ) - 출력 X
    .then(meal => console.log(meal))
    .finally( () => console.log('3. finally ====================') );






























