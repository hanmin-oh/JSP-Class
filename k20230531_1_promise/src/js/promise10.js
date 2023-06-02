// promise 만들기 - 1.promise 객체를 만들어 변수에 할당한다.
const job = new Promise( (resolve, reject) => setTimeout( () => {
    resolve('job1 ok!')}, 1000))

const job2 = new Promise( (resolve, reject) => setTimeout( () => {
    reject('job2 fail!')}, 1100))

job.then( data => console.log(data) );
job2.catch( error => console.log(error) );
//===================================================================================================

// 2. 함수에서 promise 객체를 만들어 리턴한다.
function job3() {
   return new Promise( (resolve, reject) => setTimeout( () => {
       resolve('job3 ok!')}, 1200) );
}
job3().then( data => console.log(data) );

function job4() {
   return new Promise( (resolve, reject) => setTimeout( () => {
       reject('job4 fail!')}, 1300) );
}
job4().catch( error => console.log(error) );

//===================================================================================================

job3()
    .then( data => {
        console.log('3' , data);
        job4().catch( error => console.log('3' , error));
    } );

//===================================================================================================

job4()
    .then( data => { //then에는 안걸린다.
        console.log('4', data);
        job3();
    })
    .catch( error => {
        console.log('4' , error);
        //promise에서 오류가 발생했을 때 Promise 객체의 reject()함수를 실행하면 이어지는 작업을 중지시킬 수 있다.
        return Promise.reject('현재 작업이 실패해서 다음 작업을 실행하지 않는다.');
    } )
    .then( data => console.log('앞의 작업이 실패하면 이곳의 작업은 실행하지 않는다.') )





















