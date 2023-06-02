$( () => {
    //<div> 태그의 첫 번째 요소로 <p> 태그를 만들어 넣어준다.
    $('button').eq(0).click( function () {
      /*  prepend() : 인수로 지정된 요소를 선택된 요소 내부에 첫 번째 요소로 추가한다.
        - prepend()함수는 태그를 만들고 필요한 속성까지 모두
        - $('<tag>') : 인수로 지정된 태그를 만든다. */

        //$('div').eq(0).prepend($('<p>').addClass('prepend')).find('p:eq(0)').text('prepend');
        //$('div').eq(0).prepend($('<p>').text('prepend').addClass('prepend'));
        //jQuery는 변수를 선언할 때 앞에 '$'를 붙여 선언하면 태그를 기억하는 변수가 된다.
        let $p =$('<p>').text('prepend').addClass('prepend');
        $('div').eq(0).prepend($p);
        //$('p:eq(1)').hide(); //'1'이 사라지고 새롭게 만들어진 텍스트로 대체

        //태그를 만들어 넣으면 태그가 추가되지만 태그를 선택해서 넣으면 선택한 태그가 이동된다.
        //$('div').prepend($('div > p:last'))

    });

    //<div>태그의 마지막 요소로 <p> 태그를 만들어 넣어준다.
    $('button').eq(1).click(function () {
       //append() : 인수로 지정된 요소를 선택된 요소 내부에 마지막 요소로 추가한다.
        $('div').append($('<p>').text('append').addClass('append'));
        // $('p:eq(5)').hide();
    });

    $('button').eq(2).click(function () {
        $('div').html('<marquee>html 요소를 변경합니다. </marquee>');
        // $('p:eq(5)').hide();
    });

    $('button').eq(3).click(function () {
        $('div').text('<marquee>html 요소를 변경합니다. </marquee>');
        // $('p:eq(5)').hide();
    });

});