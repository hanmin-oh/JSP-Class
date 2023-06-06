function passwordCheck(obj) {

    //입력한 비밀번호가 8자 이상 12자 이하인가 검사한다.
    let len = obj.password.value.trim().length;
    /*if( len < 8 || len > 12) {
        alert('비밀번호를 8자 이상 12자 이하로 입력해주세요');
        obj.password.focus();
        obj.password.value = '';
        obj.repassword.value = '';
        return false
    }*/

    //영문자, 숫자, 특수문자가 각각 1개 이상씩 입력되었나 검사한다.
    /*let alp = obj.password.value;
    let num = obj.password.value;
    let spe = obj.password.value;
    if(alp != /[a-zA-Z]/ ) {
        alert('테스트')
        return false
    } else if (num != /[0-9]/) {
        alert('테스트')
        return false
    } else if ( spe != /[~!@#$%^&*()_+|<>?:{}]/) {
        alert('테스트')
        return false
    }*/

    /*let alp = 0;
    let num = 0;
    let spe = 0;
    const pw = obj.password.value.trim();
    for(let i = 0 ; i<len; i++) {
        if(pw.charAt(i) >= 'a' && pw.charAt(i) <= 'z' || pw.charAt(i) >= 'A' && pw.charAt(i) <= 'Z') {
            // 영문자 개수
            alp++;
        } else if (pw.charAt(i) >= '0' && pw.charAt(i) <= '9') {
            // 숫자 개수
            num++;
        } else {
            // 특수문자 개수
            spe++;
        }
    }
    // console.log(`영문자: ${alp}, 숫자: ${num} , 특수문자: ${spe}`);

    if(alp < 1 && num < 1 && spe < 1) {
        alert('비밀번호는 영문자, 숫자, 특수문자를 각각 1글자 이상 포함해야 합니다. ');
        obj.password.focus();
        obj.password.value = '';
        obj.repassword.value = '';
        return false
    }*/

    const pw = obj.password.value.trim();
    /* 정규 표현식(정규식)을 사용한 영문자, 숫자, 특수문자가 각각 1개 이상 입력되었고 8자 이상 12자 이하로
    입력되었나 검사한다. */

    /*
    new RegExp('정규식 패턴') => 자바스크립트 정규식 객체를 만든다.
    . => 모든 문자 1글자를 대신한다. => 어떤 문자라도 1글자가 나와야 한다.
    * => 모든 문자 0글자 이상을 대신한다. => 아무 문자가 안나와도 되고 몇 개가 나와도 상관없다.
    + => 모든 문자 1글자 이상을 대신한다. => 아무 문자나 1글자 이상 나와야 한다.
    ^ => 시작하는
    $ => 끝나는
    */


    /*let alp = 0;
    let num = 0;
    let spe = 0;
    for(let i = 0 ; i<len; i++) {
        if(alp = /[a-zA-Z]/ ) {
            // 영문자 개수
            alp++;
        } else if (num = /[0-9]/) {
            // 숫자 개수
            num++;
        } else {
            // 특수문자 개수
            spe++;
        }
    }

    if(alp > 0 && num > 0 && spe > 0) {
        alert('비밀번호는 영문자, 숫자, 특수문자를 각각 1글자 이상 포함해야 합니다. ');
        obj.password.focus();
        obj.password.value = '';
        obj.repassword.value = '';
        return false
    }*/
    //const pattern = new RegExp('^.{8}$'); // 글자수 제한 => 무조건 8자만 허용한다.
    //const pattern = new RegExp('^.{1,8}$'); // 글자수 제한 => 8자 이내만 허용한다.
    //const pattern = new RegExp('^.{8,}$'); // 글자수 제한 => 8자 이내만 허용한다.
    //const pattern = new RegExp('^.{8,12}$'); // 글자수 제한 => 8자 이상 12자 이내만 허용한다.
    //숫자만 허용
    //[] => 허용 가능한 문자를 []안에 나열한다.
    //const num = new RegExp('^[0123456789]+$'); '+'를 안쓰면 딱 1글자만 검사한다.
   // const pattern = new RegExp('^[0-9a-zA-Z!@#$%^&]{8,12}$');

    //긍정형 전방 탐색 기능으로 특정 문자가 포함되어있나 검사한다. => (?=.*)
    //const pattern = new RegExp('^?=.*[0-9]+'); //숫자가 포함되어있나 검사한다.
    // const pattern = new RegExp('^?=.*[A-Z]+'); //대문자가 포함되어있나 검사한다.
    // const pattern = new RegExp('^?=.*[a-z]+'); //소문자가 포함되어있나 검사한다.
    // const pattern = new RegExp('^?=.*[A-Za-z]+'); //영문자가 포함되어있나 검사한다.
    // const pattern = new RegExp('^?=.*[ㄱ-힣]+'); //한글이 포함되어있나 검사한다.
    // const pattern = new RegExp('^?=.*[!@#$%^&]+'); //지정한 특수문자가 포함되어있나 검사한다.
    const pattern = new RegExp('^(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[!@#$%^&])[0-9a-zA-Z!@#$%^&]{8,12}$');

    /*  test() 함수는 인수로 지정된 문자열이 정규식 패턴에 만족하나 검사해서 만족하면 true, 만족하지 않으면
    false를 리턴한다.    */
    if(!pattern.test(pw)) {
        alert('비밀번호는 영문자, 숫자, 특수문자(!@#$%^&)를 각각 1글자 이상 포함해야 합니다. ');
        obj.password.focus();
        obj.password.value = '';
        obj.repassword.value = '';
        return false
    }

    //입력한 두 개의 비밀번호가 같은가 검사한다.
    if(obj.password.value.trim() != obj.repassword.value.trim() ) {
        alert('비밀번호를 다시 입력해주세요');
        obj.password.focus();
        obj.password.value = '';
        obj.repassword.value = '';
        return false
    }
    /*
    let pw1 = document.getElementById( 'password' ).value;
    let pw2 = document.getElementById( 'repassword' ).value;
    if(pw1 == pw2) {
       alert('성공');
    } else {
       alert('실패');
    }
    */
    return true;
}