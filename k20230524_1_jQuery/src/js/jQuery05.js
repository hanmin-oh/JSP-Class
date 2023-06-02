$(() => {
    //input 태그 중에서 type 속성값이 text인 모든 요소를 선택해서 배경색 변경하기
    $('input:text').css('backgroundColor' , 'gray');
    // select 태그의 name 속성이 email인 요소에서 change 이벤트가 발생되면 선택된 option의 value값을
    // name 속성값이 addr인 텍스트 상자에 넣는다.
    /*let email = document.querySelectorAll('select[name="email"]')[0]; //태그 활용해보기
    email.onchange = () => {
        let emailValue = email.options[email.selectedIndex].value;
        document.querySelectorAll('input[name="addr"]')[0].value = emailValue;
    }*/

    $('select[name="email"]').eq(0).change( function ()  {
        //콤보 상자는 1번에 1개만 선택되기 때문에 $(this)로 사용할 수 있다.(화살표함수 사용 불가)
        $('input[name="addr"]:eq(0)').val($(this).val());
    });

    //체크박스를 클릭할 때 마다 체크된 목록을 콘솔에 출력
    /*let hob1 = document.getElementsByName('hobbies')[0];
    let hob2 = document.getElementsByName('hobbies')[1];
    let hob3 = document.querySelectorAll('input[name="hobbies"]')[2];
    hob1.onclick = () => hobCheck();
    hob2.onclick = () => hobCheck();
    hob3.onclick = () => hobCheck();*/

    /*$('input:checkbox[name="hobbies"]').click(() => {
        let msg = [];
        // each() : 선택된 요소들의 index와 요소 자체를 리턴하며 인수로 지정한 함수를 반복 실행한다.
        // each() 함수는 익명 함수로 인수 2개를 넘긴다. 1번째 인수는 index이고 2번째 인수는 객체이다.
        // each() 함수는 익명 함수로 전달하는 인수가 필요없으면 직명 함수에서 인수를 생략할 수 있다.
        $('input:checked[name="hobbies"]:checked').each(function (index , obj) {
           msg.push( $('input:checked[name="hobbies"]:checked').eq(index).val())
        });
        console.log(msg.length == 0 ? '취미 없음' : msg.join(', '));
    });*/

    $('input:checkbox[name="hobbies"]').click(() => {
        let msg = [];
        //인수의 순서상 변수가 나와야 하는 데 사용하지 않을 경우 '_'로 처리한다.
        $('input:checked[name="hobbies"]:checked').each( (_ , obj) => msg.push(obj.value) );
        console.log(msg.length == 0 ? '취미 없음' : msg.join(', '));
    });

});

function hobCheck() {
    /* let hobbies = document.getElementsByName('hobbies');
    let msg = '';
    for (let i=0 ; i< hobbies.length ; i++) {
        if(hobbies[i].checked) {
            msg += hobbies[i].value + ' ';
        } else if((!(hobbies[1].checked))&&(!(hobbies[0].checked))&&(!(hobbies[2].checked))) {
            console.log('취미없음');
        }
    console.log(msg.length == 0 ? '취미 없음' : msg);
    } */
    let hobbies = $('input[name="hobbies"]:checked');
    let msg = [];
    for(let hobby of hobbies) {
       msg.push(hobby.value);
   }
   console.log(msg.length == 0 ? '취미 없음' : msg.join(', '));
}