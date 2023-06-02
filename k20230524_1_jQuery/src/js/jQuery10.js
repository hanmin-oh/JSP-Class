$( () => {

    // 0번째 p 태그를 선택한 후 <span> 태그를 선택한다.
    /*$('p:eq(0)').css('color' , 'red');
    $('span').css('color' , 'green');*/

    //0번쨰 <p> 태그를 선택한 후 <sapn>태그를 선택한다.
    // $('p:eq(0) > span').css('backgroundColor' , 'olive');

    $('p:eq(0)').css('backgroundColor' , 'olive');
    $('p').eq(0).add('span:eq(1)').css('color' , 'green');

    //$('div').children().css('color' , 'blue');
    $('div').children().click( function () {
        if($(this).is('span')) {
            $(this).css('color' , 'blue');
        }
        if($(this).is('b')) {
            $(this).css('color' , 'blue');
        }
        if($(this).is('p')) {
            $(this).css('color' , 'aqua');
        }
    });
});


























