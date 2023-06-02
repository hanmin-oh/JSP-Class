$( () => {
    //자바스크립트로 주기적인 작업을 실행하기 위해서는 setInterval() 함수와 setTimeout() 함수를 사용한다.
    // 두 함수는 비슷하게 실행되지만 중요한 차이점을 가진다.
    
    /* - setInterval(실행할 함수 , 함수를 주기적으로 실행할 시간) : 지정된 시간마다 함수를 반복해서 실행한다.
     - clearIntetval(): setInterval() 함수의 실행을 중지시킨다.
     - setTimeout(실행할 함수, 시간) : 지정된 시간이되면 함수를 실행한다.
     - clearTimeout(): setTimeout() 함수의 실행을 중지시킨다.
     */
    $('button').click( function () {
        if($('button:eq(0)').text() == 'start') {
            $('button:eq(0)').text('stop');
        } else {
            $('button:eq(0)').text('start');
           alert('오늘 점심은 ' + $('img:eq(2)').attr('alt') + '를 먹어야 합니다.');
        }
    /* start 버튼이 클릭되면 active라는 클래스를 추가하고 이미지 롤링을 시작한다.
    stop 버튼이 클릭되면 active라는 클래스를 제거하고 이미지 롤링을 종료한다.  */
        $('img').toggleClass('active');
    })
    setInterval(function () {
        //menu의 첫 번째 이미지를 선택해서 마지막 이미지 위치로 이동시킨다.
        // appendTo() : 선택된 요소를 인수로 지정한 요소의 마지막에 추가(이동)한다.
        $('.active').first().appendTo($('#menu'));
    } , 100);
    /*$('#menu').setInterval(move , 100);
    let move = function () {
        $('.active').first().appendTo($('#menu'));
    };*/


});