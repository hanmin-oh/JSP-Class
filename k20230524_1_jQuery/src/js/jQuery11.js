/*     animate() 함수로 여러 css 스타일을 이용해서 사용자 이펙트를 정의할 수 있다.
  $('선택자').animate(
     {스타일}       필수, 이펙트를 구성할 css 스타일 속성을 지정한다.
     , 재생시간   선택, 이펙트가 지속될 시간을 밀리초 단위로 지정한다.
     , '속도함수'   선택, 이펙트의 시간당 속도를 지정한다.
                  swing: 시작, 끝 부분에서는 천천히 움직이고 중간 부분은 빠르게 움직인다.
                  linear: 시작, 중간, 끝 구분없이 일정한 속도로 움직인다.
     , 콜백함수()   선택, 이펙트 동작이 완료된 후 실행할 함수를 지정한다.
  );      */
$('h2').click( function () {
    $('p').toggle();
    $('p').each( function (index) {
        $(this).animate(
            {
                'top': 70 + index * 50 + 'px'
            }
            ,200
            ,'swing'
        );
    });
});

$( () => {
   /* bind() : jquery 이벤트에 실행할 함수를 연결한다.
    $('선택자').bind('이벤트' , '실행할 함수');
    $('p').bind('click' , function() { });*/

    $('p').bind('click' , function() {
        /*$(this).css('backgroundColor' , 'aqua');
        //클릭한 <p> 태그를 제외한 나머지 형제들의 배경색을 흰색으로
        $(this).siblings().css('backgroundColor' , 'white');*/

        /* contains() : 인수로 지정된 문자열을 포함하면 true, 포함하지 않으면 false를 리턴한다.
         if($(this).is('p:contains(hide)')) {
            $('#img').hide();
        } */

        /* command 사용
        if(command == 'hide()') {
          $('#img').hide();
          } else if(command == 'show()') {
              $('#img').show();
          }     */
        /* $('div > p').eq(0).click( function () {
                $('#img').hide();
           });
           $('p').eq(0).bind('click' , function() {
               $('#img').hide();
           });
           $('div > p').eq(1).click( function () {
               $('#img').show();
           }); */
            console.log($(this).index());
        switch ($(this).index()) {
            case 0:
                $('#img').hide(); break;
            case 1:
                $('#img').show(); break;
            case 2:
                $('#img').toggle(); break;
            case 3:
                $('#img').slideUp(); break;
            case 4:
                $('#img').slideDown(); break;
            case 5:
                $('#img').slideToggle(); break;
            case 6:
                $('#img').fadeOut(); break;
            case 7:
                $('#img').fadeIn(); break;
            case 8:
                $('#img').fadeToggle(); break;
            /* fadeTo(재생시간 , 투명도)
                fadeTo() 함수가 실행되서 투명도가 변경되면 변경된 투명도가 유지되며 표시되기 때문에
                투명도를 다시 1로 설정하는 처리가 필요할 수 있다.
            */
            case 9:
                $('#img').fadeTo(1000 , 0.3);
                $('#img').fadeTo(1000 , 1);
                break;
            case 10:
                $('#img').animate(
                    {
                        'width' : '300px',
                        'left' : '600px',
                        'top' : '150px'
                    }
                    ,1500
                    ,'linear'
                    , () => alert('콜백함수 실행')
                );
                //clone() : 선택한 요소를 복사해서 새로운 요소를 만든다.
                let img2 = $('#img').clone().attr('id' , 'img2').attr('src' , './images/img04.jpg');
                $('#img').before(img2);
                $('#img2').animate(
                    {
                        'width' : '250px',
                        'left' : '250px',
                        'top' : '200px',
                        'opacity' : '0.5'
                    }
                    ,1500
                    ,'linear'
                    , () => alert('clone() 실행')
                );
                break;
        }
    });


});


























