function a1() {
  /*  let span = document.querySelectorAll('span');

    for(let i = 0 ; i<span.length ; i++) {
        sapn[i].style.color = 'green';
    }*/
    $('span').css('color' , 'green');
}

function a2() {
    $('#t1').css('color' , 'olive'); //#id : id 선택자
    //id 는 여러개 동시 선택 불가능
}

function a3() {
    $('.t2').css('color' , 'blue');
}

function a4() {
    //javaScript
    /*let child = document.querySelectorAll('li > span');
    for(let s of child) {
        s.style.color = 'aqua'
    }*/
    $('li > span').css('color' , 'aqua');
}

function a5() {
    //javaScript
    /*let child = document.querySelectorAll('li span');
    for(let s of child) {
        s.style.color = '#22FFa1'
    }*/
    $('li span').css('color' , '#22FFa1');
}


/* :nth-child , :nth-last-child
    - 같은 부모 요소를 가지는 형제 요소 중에서 특정 순서에 있는 요소를 선택하는 선택자이다.
    - :nth-child()는 앞에서 부터 재고 :nth-last-child()는 뒤에서 부터 샌다.
    - 인수로 숫자, 연산식(곱하기는 숫자가 앞에 와야하고 더하기 빼기는 숫자가 뒤에 와야한다.)
    - odd(홀수) even(짝수)도 사용할 수 있다.
*/

function a6() {
    // $('li').eq(0).css('backgroundColor' , '#4CE8E3FF');
    //$('li:eq(0)').css('backgroundColor' , '#4CE8E3FF');

    //eq()는 index가 0부터 시작하고 nth-child는 index가 1부터 시작된다. => 주의..
    //$('li:nth-child(odd)').css('backgroundColor' , '#92d54b'); //홀수 인덱스만 선택한다.
    //$('li:nth-last-child(even)').css('backgroundColor' , '#AA4CE8FF'); //짝수 인덱스만 선택한다.

    //n은 자동으로 0부터 1씩 증가하는 정수이고 '+' '-' '*' ('-')는 거의 사용하지 않는다.
    $('li:nth-child(2n - 1)').css('backgroundColor' , '#92d54b');
}

//first-child : 같은 부모 요소를 가지는 형제 요소 중에서 첫번째 자식 요소만 선택한다.
function a7() {
    $('li:first-child').css('backgroundColor' , '#92d54b');
}

function a8() {
    $('li:last-child').css('backgroundColor' , '#AA4CE8FF');
}