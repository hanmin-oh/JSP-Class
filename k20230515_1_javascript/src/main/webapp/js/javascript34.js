function searchParent() {
	let child = document.getElementsByTagName('p')[0];
	
	// parentNode는 탐색된 요소의 부모 요소를 탐색한다.
	let parentDiv = child.parentNode;
	console.log(parentDiv);
	parentDiv.style.backgroundColor = 'green';
	
	//nodeName은 탐색된 요소의 태그 이름을 얻어온다.
	console.log(parentDiv.nodeName);
}

function searchChild() {
	let parent = document.getElementsByTagName('div')[0];
	
	//children은 탐색된 요소의 자식 요소(태그만)를 탐색한다.
	/*let childs = parent.children;
	console.log(childs);
	console.log(childs[0]);
	console.log(childs[1]);
	console.log(childs[2]);
	
	childs[0].style.backgroundColor = '#66FFB2';
	childs[1].style.backgroundColor = 'green';
	childs[2].style.backgroundColor = 'gray';*/
	//childNodes은 탐색된 요소의 자식 요소(태그 및 텍스트)를 탐색한다.
	let childs = parent.childNodes;
	console.log(childs);
	console.log(childs[0]); //텍스트1
	console.log(childs[1]); //p
	console.log(childs[2]); //텍스트2
	console.log(childs[3]); //p
	console.log(childs[4]); //텍스트3
	console.log(childs[5]); //p
	console.log(childs[6]); //텍스트4
	childs[1].style.backgroundColor = '#66FFB2'; //텍스트에는 배경색이 안들어간다.
}

function testSearch() {
	let test1 = document.getElementsByTagName('p')[3];
	let div = test1.parentNode;
	console.log(div);
	div.style.backgroundColor = 'green';
	
	let test4 = document.getElementsByTagName('div')[3];
	console.log(test4);
	let childs = parent.childNodes;
	console.log(childs);
	console.log(childs[3]);
	childs[3].style.fontSize = '30px';
}





























