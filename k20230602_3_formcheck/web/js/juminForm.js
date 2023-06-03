onload = function () {
    document.getElementsByName('j1')[0].focus();
}

/*  javascript keyboard 이벤트
onkeypress : 키보드를 누르고 있을 때 실행되는 이벤트
onkeydown : 키보드를 누르는 순간 실행되는 이벤트
             누른 키보드에 해당되는 문자가 입력되기 전에 실행된다.
onkeyup : 키보드를 눌렀다가 손가락이 떨어지는 순간
             누른 키보드에 해당되는 문자가 입력된 후 실행된다.   */

 /* 이벤트가 실행되는 객체에 입력 가능한 최대 글자수 만큼 문자가 입력되면 포커스를 넘겨줄 객체로
 포커스를 넘겨주는 함수
  moveNext(이벤트가 실행되는 객체, 입력 가능한 최대 글자수, 포커스를 넘겨줄 객체) */
function moveNext (obj, len, nextObj) {
    if(obj.value.length == len) {
        nextObj.focus();
    }
}


/* 인수로 넘어온 form의 유효성을 검사하고 정상이면 true를 리턴하고 오류가 발생되면 오류 메시지를
출력하고 false를 리턴하는 함수 */

function formCheck(obj) {
    console.log(obj);
    /*주민등록번호 앞 자리에 아무것도 입력하지 않았거나 전부 공백이 입력되었으면
    에러 메시지를 출력하고 false를 리턴시킨다. */
    if(!obj.j1.value || obj.j1.value.trim().length == 0) {
        console.log('주민번호를 다시 입력해 주세요');
        obj.j1.value = '';
        obj.j1.focus();
        return false;
        /*$('input:eq(0)').text('');
        $('input:eq(0)').focus();*/
    }
    /* 주민등록번호 앞 자리에 6글자가 입력되었나 검사해서 6글자가 입력되지 않았으면 에러 메시지를
    출력하고 false를 리턴시킨다. */
    if(!(obj.j1.value.trim().length == 6)) {
        alert('6자리로 입력해 주세요');
        obj.j1.value = '';
        obj.j1.focus();
        return false;
    }
    //주민등록번호 앞 자리에 숫자만 입력되었나 검사해서 숫자만 입력되지 않았으면 에러 메시지
    /*if( !(isNaN( $('input:eq(0)').text() )) ) {
        alert('주민번호는 숫자만 입력해주세요');
        $('input:eq(0)').text('');
        $('input:eq(0)').focus();
        return false;
    }
    return true;*/
    if(Number(obj.j1.value.trim()) == NaN) {
        alert('주민번호는 숫자만 입력해주세요');
        obj.j1.value = '';
        obj.j1.focus();
        return false;
    }

    //주민등록번호 뒷 자리를 검사한다.
    if(!obj.j2.value || obj.j2.value.trim().length == 0) {
        console.log('주민번호를 뒷 자리를 입력해 주세요');
        obj.j2.value = '';
        obj.j2.focus();
        return false;
    }
    if(!(obj.j2.value.trim().length == 7)) {
        alert('뒷자리를 7자리로 입력해 주세요');
        obj.j2.value = '';
        obj.j2.focus();
        return false;
    }

    if(Number(obj.j2.value.trim()) == NaN) {
        alert('주민번호는 숫자만 입력해주세요');
        obj.j2.value = '';
        obj.j2.focus();
        return false;
    }
    //여기까지 왔다면 주민등록번호가 13자리의 숫자로 입력되었다는 의미이다.


    //주민등록번호 유효성 검사 - 입력된 주민등록번호를 하나의 문자열로 이어준다.
    let jumin = obj.j1.value + obj.j2.value;
    //자바스크립트는 문자열끼리 덧셈 연산을 하면 문자열을 연결하지만, 뺄샘, 곱셉, 나눗셈은 숫자로 바꿔서 연산한다.
    //문자열로 구성된 숫자의 덧셈을 하려면 Number() 함수를 이용해 숫자로 변환한 뒤 연산한다.

    // 가중치 => 234567892345, 둘리주민등록번호 => 83042221185600 => 가중치와 곱해서 모두 더하면 143
    const check = '234567892345';
    let sum = 0;
    for(let i=0 ; i<12 ; i++) {
        // sum += jumin.charAt(i) * check.charAt(i);
        // sum += jumin.charAt(i) * (i < 8 ? i + 2 : i - 6);
        sum += jumin.charAt(i) * (i % 8 + 2);
    }
    /* sum에 저장된 값을 11로 나눈 나머지를 11에서 뺀 결과가 주민등록번호의 마지막 자리와 같아야 한다.
    11로 나눈 나머지를 11에서 뺀 결과가 10 이상일 경우 10의 자리는 버리고 1의 자리만 취해서 주민등록번호의
    마지막 자리와 비교한다.*/
    let result = (11 - sum % 11) % 10 ;
    if(result != jumin.charAt(12)) {
        alert('잘못된 주민번호입니다. ')
        obj.j1.value = '';
        obj.j2.value = '';
        obj.j1.focus();
        return false;
    }
    return false;
}

