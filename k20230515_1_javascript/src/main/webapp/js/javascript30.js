function singleArr() {
	// 배열 선언 방법
	// let 배열명 = new Array(); //크기가 0인 빈 배열 객체를 선언한다.
	let arrObj = new Array();
	console.log(arrObj); 
	console.log(typeof arrObj); 
	console.log(arrObj.length);
	console.log('==========================================');
	
	// let 배열명 = []; //크기가 0인 빈 배열 객체를 선언한다.
	let arrObj2 = [];
	console.log(arrObj2);
	console.log(typeof arrObj2); 
	console.log(arrObj2.length);
	console.log('==========================================');
	
	// let 배열명 = new Array(크기); //빈 배열 객체를 크기를 지정해서 선언한다.
	let arrObj3 = new Array(5);
	console.log(arrObj3);
	console.log(typeof arrObj3); 
	console.log(arrObj3.length);
	console.log('==========================================');
	
	// 초기치의 개수 만큼의 크기를 가지는 배열 객체를 선언하고 초기치로 초기화시킨다. 
	// let 배열명 = new Array(초기치); 
	// let 배열명 = [초기치];
	// let arrObj4 = new Array(5 , 4 , 3 , 2 , 1);
	let arrObj4 = [1,2,3,4,5];
	console.log(arrObj4);
	console.log(typeof arrObj4); 
	console.log(arrObj4.length);
	console.log('==========================================');
	
	let arrObj5 = ['java' , 2 , 'script' , 4];
	console.log(arrObj5);
	console.log(typeof arrObj5);
	console.log(arrObj5.length);
}

function multiArr() {
	let arrRow = 4; //행의 개수
	let arrCol = 3; //열의 개수
	
	// 행을 먼저 만들고 행의 개수만큼 반복하며 열을 만든다.
	let arr = new Array(arrRow); //행을 만든다.
	for(let i = 0; i<arrRow; i++ ) { //행의 개수만큼 반복한다.
		arr[i] = new Array(arrCol); //각각의 행에 열을 만든다.
	}
	
	// 배열명[행][열] 
	arr[0][0] = 'apple';
	arr[0][1] = 'banana';
	arr[0][2] = 'orange';
	
	arr[1][0] = 100;
	arr[1][1] = 200;
	arr[1][2] = 300;
	
	arr[2][0] = true;
	arr[2][1] = 999;
	arr[2][2] = '이순신';
	
	//배열에 배열을 저장시킬 수 있다.
	arr[3][0] = ['을지문덕' , '살수대첩']; //3차원, 배열명[면][행][렬];
	arr[3][1] = ['강감찬' , '귀주대첩'];
	arr[3][2] = ['이순신' , '명량대첩'];
	
	console.log(arr);
	console.log(arr[0]);
	console.log(arr[3][0]);
	console.log(arr[3][2][1]);
	
	let arr2 = [[1,2],[3,4],[5,6]];
	console.log(arr2);
}

function join() {
	let fruits = ['apple' , 'banana' , 'melon' , 'mango'];
	let arr = ['111' , '222' , '333' , '444'];
	
	//배열끼리 덧셈 연산을 실행하면 각각의 배열을 합쳐서 ','로 구분된 문자열을 만들어서 합친다.
	let add = fruits + arr;
	console.log(add); // apple,banana,melon,mango111,222,333,444
	console.log(typeof add); //string
	
	//2개 이상의 배열을 합치려면 concat() 함수를 사용해야 한다.
	let result = fruits.concat(arr);
	console.log(result); 
	console.log(typeof result);
	
	//join() 함수는 배열 요소 사이에 인수로 지정한 문자열을 삽입해서 문자열로 만든다.
	let result2 = fruits.join(',');
	console.log(result2); 
	console.log(typeof result2);
}

function alphaSort() {
	//sort() : 코드값 순서로 오름차순(사전식) 정렬, 무조건 문자 데이터로 취급해서 정렬한다.
	//null도 sort() 함수는 문자열로 취급해서 정렬한다.
	//문자화된 숫자 => 문자 순서로 정렬된다. 
	let arr = ['z' , 5 , null , 'c' , 'B' , 'a' , 100 ];
	arr.sort();
	console.log(arr);
}

function numberSort() {
	let arr = [2, 1, 4, 7, 5, 9, 0];
	//배열을 구성하는 모든 데이터가 숫자로 구성되어 잇어도 무조건 문자 데이터로 취급해서 정렬한다.
	arr.sort();
	console.log(arr);
	
	//숫자 데이터를 정렬하기 위해서는 sort() 함수의 인수로 비교 함수를 넣어줘야 한다.
	
	//sort() 함수가 자동으로 비교 함수로 데이터를 넘겨주기 때문에 비교 함수를 호출할 때 인수를 적지 않는다.
	arr.sort(compairfn);
	console.log(arr);
	
	//비교 함수를 익명으로 구현해도 된다. 
	arr.sort((i , j) => i - j);
}

// numberSort() 함수가 숫자 데이터 정렬에 사용할 함수로 선언한다. => 정렬 방식을 지정한다.
function compairfn(a , b) {
	//1번째 인수에 저장된 값이 2번째 인수에 저장된 값보다 크면 1(양수) , 같으면 0, 적으면 -1(음수)를
	//리턴하게 만든다. => 오름차순 정렬 => 부등호를 반대로 수정하면 내림차순 정렬이 된다. 
	/*if(a > b) {
		return 1 ;
	} else if ( a< b ) {
		return -1;
	} else {
		return 0;
	}*/
	//return a - b; //오름차순 정렬
	return b-a; //내림차순 정렬
}


function reverseTest() {
	let names = ['이순신' , '을지문덕' , '강감찬' , '홍범도'];
	console.log(names);
	names.reverse();
	console.log(names);
	
	names.sort();
	console.log(names);
	names.reverse();
	console.log(names);
}

function arrayIO() {
	let arr = [];
	console.log(arr);
	//push() : 배열의 맨 뒤에 데이터 추가
	arr.push('이순신');
	console.log(arr);
	arr.push('을지문덕');
	arr.push('강감찬');
	console.log(arr);
	//unshift() : 배열의 맨 뒤의 데이터를 얻어온 후 제거한다.
	arr.unshift('홍범도');
	console.log(arr);
	//pop() : 배열의 맨 뒤의 데이터를 얻어온 후 제거한다.
	let pop = arr.pop();
	console.log(pop);
	console.log(arr);
	//shift(): 배열의 맨 앞의 데이터를 얻어온 후 제거한다.
	let shift = arr.shift();
	console.log(shift);
	console.log(arr);
}

function sliceTest() {
	let arr = [1, 2, 3, 4, 5];
	console.log(arr);
	
	//slice(a , b): 배열의 a번째 index 부터 b-1번째 index 요소까지 복사해서 새 배열을 만든다.
	let arr2 = arr.slice(1 , 4);
	console.log(arr2);
	console.log(arr); //원본이 유지된다.
	
	//splice(a , b): 배열의 a번째 index 부터 b개만큼 추출해서 새 배열을 만든다.
	let arr3 = arr.splice(1 , 4);
	console.log(arr3);
	console.log(arr); //원본이 변형된다.
	
}




































