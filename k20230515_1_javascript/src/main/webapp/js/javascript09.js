const numbers =[10, 20, 30, 40];
console.log('=============splice()==============');
// splice(): 배열에서 index 번째 위치부터 지정된 개수만큼 추출해서(뽑아내서) 배열로 분리시켜 리턴한다.
// 배열명, splice(index, 개수)

const spliced = numbers.splice(1, 2); //1번 index 부터 2개를 추출한다.
console.log(spliced);
// splice()를 실행하면 원본 배열에서 추출되는 데이터가 제거된다.
console.log(numbers);


console.log('=============slice()==============');
// slice(): 배열에서 a 번째 index 위치부터 b - 1 번째 index 위치까지 복사해서 배열로 리턴한다.
// 배열명.slice(a , b) 
const numbers2 = [10, 20, 30, 40];
const sliced = numbers2.slice(1, 2); //1번 index부터 1번 index까지 복사한다.
console.log(sliced);
console.log(numbers2);

console.log('============shift()...=============');
// 배열에 데이터 추가, 제거 함수
// push() : 배열의 맨 뒤에 인수로 지정한 데이터를 추가한다.
// unshift() : 배열의 맨 앞에 인수로 지정한 데이터를 추가한다.
// pop() : 배열의 맨 뒤에 데이터를 얻어온 후 제거한다.
// shift() : 배열의 맨 앞에 데이터를 얻어온 후 제거한다.

const numbers3 = [10, 20, 30, 40];
console.log(numbers3);

numbers3.push(999);
console.log(numbers3);

numbers3.unshift(777);
console.log(numbers3);

let popData = numbers3.pop();
console.log(popData);
console.log(numbers3);

let shiftData = numbers3.shift();
console.log(shiftData);
console.log(numbers3);


console.log('=============concat()==============');
// concat() : 인수로 지정된 배열을 연결해서 새 배열을 만들어 리턴한다.
const array = [1, 2, 3];
const array2 = [10, 20, 30];
const array3 = [100, 200, 300];
const concated = array.concat(array2 , array3);
console.log(concated);

console.log('==============join()===============');
// join() : 배열 요소들 사이에 인수로 지정된 문자열을 삽입해서 문자열로 만들어 리턴한다.
// 배열명.join('문자열')

const array4 = ['이순신', '을지문덕' , '강감찬' , '홍범도'];
console.log(typeof array4.join());
console.log(array4.join('/'));
console.log(array4.join('&&'));
console.log(array4.join('^^'));
console.log(array4.join('\n'));


















