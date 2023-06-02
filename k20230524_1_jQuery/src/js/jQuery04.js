/*  input 태그의 type 속성별 선택
          :button: type 속성이 'button'인 모든 요소를 선택한다.
          :checkbox: type 속성이 'checkbox'인 모든 요소를 선택한다.
          :file: type 속성이 'file'인 모든 요소를 선택한다.
          :image: type 속성이 'image'인 모든 요소를 선택한다.
          :password: type 속성이 'password'인 모든 요소를 선택한다.
          :radio: type 속성이 'radio'인 모든 요소를 선택한다.
          :reset: type 속성이 'reset'인 모든 요소를 선택한다.
          :submit: type 속성이 'submit'인 모든 요소를 선택한다.
          :text: type 속성이 'text'인 모든 요소를 선택한다.
          :checked: type 속성이 'checkbox' 또는 'radio'인 요소 중에서 체크된 모든 요소들를 선택한다.
          :selected: option 요소 중에서 선택된 모든 요소들을 선택한다.
          :focus: 현재 포커스를 가지고 있는 요소를 선택한다.
          :disabled: 비활성화 되어있는 모든 요소를 선택한다.
          :enabled: 활성화 되어있는 모든 요소를 선택한다.   */

function choice() {
   /* 전체 선택
    let inputs = document.getElementsByTagName('input');
    console.log(inputs.length);

    개별 선택
    let inputs = document.getElementsByTagName('input')[0];
    console.log(inputs.value); */

    /* javascript는 value 속성을 사용해서 '~~.value' 형태로 값을 얻어오고 '~~~.value = 값' 형태로 넣어준다.
    jQuery는 value 속성을 사용하지 않고 val() 함수를 사용해서 '~~~~.val()' 형태로 값을 얻어오고 '~~~.val(값)'
    형태로 값을 넣어준다.*/

    // jQuery
    /* 전체선택
    let inputs = $('input:text'); //input 태그 중에서 type 속성의 값이 text인 태그 전체 얻어옴
    console.log(inputs.length); */

    //아래와 같이 시행하면 input 태그의 type 속성이 text인 요소가 여러개 있더라도 첫 번째 요소의 값만 얻어온다.
    /*let doc = $('input:text').val();
    console.log(doc);*/
    //let inputs = $('input:text');

    /*let text = $('input:text');
    console.log(text.val());
    let text2 = $('input:text');
    console.log(text2.val());*/

    //text2.value = '이순신';
    text.val('을지문덕');
    $('input:text').eq(1).val('강감찬');
}

function choice2() {
    /*  let input = document.getElementsByTagName('input')
    console.log(input);
    console.log(input.value);

    document.querySelectorAll('#a').innerHTML = '<h1>' + input.value + '</h1>';*/

    // let text = $('input:radio').val();
    let text = $('input:radio:eq(0)').val();
    console.log(text);

   /*  javascript는 innerHTML, innerText, textContent()를 사용해서 태그 내부에 텍스트를 넣는다.
     jQuery는 innerHTML 역할을 하는 html() 함수나, innertext, textContent() 역할을 하는 text() 함수로
     태그 내부에 텍스트를 넣어준다.*/

    //   html() 함수는 태그를 지원하고 text() 함수는 태그를 지원하지 않는다.
    $('#a').html('<h1>' + text + '</h1>')
}

function choice3() {
    let text = $('input:checkbox:eq(0)').val();
    $('#a').html('<h1>' + text + '</h1>');
}

$(() => {
    let select = document.getElementsByTagName('select')[0];
    console.log(select);

    //  이벤트연결객체.이벤트 = function () { }
   /* select.onchange =  () => {
        console.log(select.selectedIndex); //몇 번째 option이 선택되었나 얻어온다.
        console.log(select.options[select.selectedIndex]);
        console.log(select.options[select.selectedIndex].value); //선택된 option의 값을 얻어온다.
        document.getElementsByTagName('input')[0].value = select.options[select.selectedIndex].value;
    }*/

    /* javascript는 onclick, onchange와 같이 이벤트 이름이 'on'으로 시작하지만 jQuery는 이벤트
    이름이 'on'으로 시작하지 않는다. => click, change */

    //  이벤트연결객체.이벤트함수( () => { })

    $('select').eq(0).change( () => {
       //option:selected는 option 태그 중에서 선택(selected)된 option 태그를 얻어온다.
        let select = $('select:eq(0) > option')
    });
})