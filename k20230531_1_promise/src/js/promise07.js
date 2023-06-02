//jsonplaceholder 검색 - 처음 사이트 아래쪽 /posts 클릭(https://jsonplaceholder.typicode.com/posts)

//fetch()의 결과(리턴)는 promise이다.
/*
console.log(1);
// fetch(요청)
fetch('https://jsonplaceholder.typicode.com/posts')
    .then(function (response) {  //then()을 사용한다는 것은 fetch() 실행 후 리턴이 promise라는 의미
        console.log(response.json()); //json 타입의 데이터를 js객체로 변환한다.
    })
console.log(2);
*/
console.log(1);
fetch('https://jsonplaceholder.typicode.com/posts')
    .then( response => response.json() )
    .then( data => console.log('1' , data) )
console.log(2);

//===============================================================================================================

// fetch(요청 url) 함수의 리턴값은 promise이며 response(응답) 객체이다.
let fetched = fetch('https://jsonplaceholder.typicode.com/posts');
//  리턴값이 promise면 비동기적으로 실행되는 함수이다.
console.log('1' + fetched);
console.log('1' , fetched);

/* fetch() 함수가 리턴한 리턴값에는 then()과 catch() 2개의 함수를 사용할 수 있다.
 then() 함수는 fetch() 함수가 성공적으로 실행되면 호출되고 catch() 함수는 fetch() 함수가 정항적으로 실행되지
않으면 호출된다.
    fetch() 함수가 실행되면 promise가 리턴되고 then() 함수도 실행되면 promise를 리턴한다.*/
fetched.then( response => console.log('2' , response)) //Response


fetched = fetch('https://jsonplaceholder1.typicode.com/posts');
fetched.catch( error => console.log('2' , error) );

//===============================================================================================================
fetch('https://jsonplaceholder.typicode.com/posts')
    .then( response => response.json() )
    /* then() 함수에서 promise를 리턴시키고 외부에서 then() 함수로 받아서 사용하는 방식을
    promise chaning이라 하고 일반적으로 nested promise 방식보다 더 많이 사용한다.   */
    .then( data => console.log('3' , data) )  // 위의 함수 안에 then을 넣어 처리하면 그 이후 then이 undefined-권장X
    // .catch( error => console.log('3' , error) )