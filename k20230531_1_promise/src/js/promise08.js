/* - syntantic super : 기존에 존재하는 것(promise) 위에 기존에 존재하는 것으로 감싸서
좀 더 편하게 사용할 수 있게 해주는 것을 말한다.
 - async와 await를 사용하면 promise를 보다 깔끔하게 사용할 수 있다.*/

// promise
function fetchUser() {
    /*작업 시간이 오래 걸리는 작업이 있다면 비동기적으로 처리할 수 있게 해야한다.
     - promise를 리턴하면 pending 상태로 리턴한다.
    return new Promise( (resolve, reject) => '이순신'); - pending상태가 된다(return)
     - promise 내부에서는 resolve, reject를 실행해서 리턴시켜야 한다. */
    return new Promise( (resolve, reject) =>  resolve('이순신') ); //fulfilled 상태
}

const user = fetchUser();
console.log('1.' , user);
user.then( respose => console.log('1.' , respose) );

//======================================================================

/* async
함수 앞에 async를 붙이면 함수 내부에 코드가 자동으로 promise로 변경된다.*/

async function fetchUser2() {
   return '강감찬';
}

const user2 = fetchUser2();
console.log('2.' , user2);
user2.then( respose => console.log('2.' , respose) );
// user2.catch( error => console.log('2.' , error) ); --async를 붙이면 catch로 error처리를 못한다.

function delay(ms) {
    return new Promise((resolve, reject) => setTimeout(() => resolve(), ms));
}

async function getApple() {
    await delay(1000); //async를 선언해야 await를 사용할 수 있다.
    return '사과';
}

const apple = getApple();
console.log('3.' , apple);
apple.then( response => console.log('3.' , response));


async function getPear() {
    await delay(1500);
    return '배';
}
console.log('4.' , getPear());
getPear().then( response => console.log('4.' , response));

//promise도 지나치게 chaning을 하면 callback 지옥 현상이 나타난다.
/*function pickFurits() {
    return getApple()
        .then( apple => {
            console.log('5.(pickFurits)' , apple) //then으로 return getApple()함수를 받았기 때문에 밑의 then은 undefined
            //return apple; //리턴시켜줘야 한다.
             return getPear()
            // .then( pear => console.log(pear)); -- 밑의 then이 다시 undefined ... 콜백지옥 현상이 나타난다.
            }
        );
}*/

// async와 await를 사용하면 동기적 프로그램을 작성하는 것 처럼 비동기 프로그램을 작성할 수 있다.

//순차처리
/* async function pickFurits() {
    const apple = await getApple();
    const pear = await getPear();
    return apple + ',' + pear ;        //`${apple} , ${pear}`;  // (apple , pear);
}*/

//병렬처리
async function pickFurits() {
    //promise가 만들어지는 순간 executor 함수가 실행된다.
    const applePromise = getApple();
    const pearPromise = getPear();
    // 실행 시간이 다르지만 동시에 실행했기 때문에 getPear()함수가 실행되는 도중에 종료된다.
    const apple = await applePromise;
    const pear = await pearPromise;
    return '병렬처리: ' + apple + ',' + pear ;
}
pickFurits().then( result => console.log('5.' , result) );

/*  병렬처리 - 실행하는 promise가 서로 연관이 없을 때
promise가 서로 연관이 없을 경우 병렬 처리할 때 위와 같이 작성하지 않고 promise객체의 all()함수를 사용해서
작성할 수 있다.  */

// all() => 전체 => 모든 promise 실행
async function pickAllFurits() {
    /* all() 함수의 인수로 병렬 처리 할 promise가 저장된 배열을 전달하면 전달된 모든 promise가 종료된 후
    리턴값이 then()으로 전달된다. */
    return Promise.all([getApple(), getPear()])
        .then( fruits => fruits.join('+') );//배열로 저장되는 만큼 join활용 가능
}
pickAllFurits().then( result => console.log('6. all(), join활용: ' , result));

//race() => 경쟁 => 가장 먼저 종료되는 promise 실행
function pickRaceFruits() {
    /*race() 함수의 인수로 병렬 처리 할 promise가 저장된 배열을 전달하면 배열로 전달한 모든 promise 중에서
    가장 먼저 종료된 promise의 리턴 값이 then()으로 전달된다. => 나머지 promise는 무시된다.*/
    return Promise.race([getApple(), getPear()])
}
pickRaceFruits().then( result => console.log('7. race활용:' , result))































