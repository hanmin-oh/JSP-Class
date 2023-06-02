$( () => {
    // id 속성이 base인 div 태그를 선택해서 뒤에 인수로 지정한 새로운 요소를 추가한다.
    $('p:eq(0)').click( function () {
        //remove() : 선택된 요소를 얻어온 후 삭제한다.
        let obj = $(this).remove();
        console.log(obj.html());
        $('h2').append(obj);
    });

    $('p:eq(1)').click( function () {
        // detach() : 선택된 요소를 얻어온 후 삭제한다. 삭제된 요소와 관련된 이벤트가 유지된다.
        let obj = $(this).detach();
        console.log(obj.html());
        $('h2').append(obj);
        //$('p:eq(1)').html(obj);

    });

    if(console.log('detach')) {
        console.log('콘솔에 조건문 쓰기');
    }

    $('p:eq(2)').click( function () {
        // empty() : 선택된 요소의 모든 자식 요소를 삭제한다.
        //$(this).empty();
        $('div').empty();

    });

    $('p:eq(3)').click( function () {
        // unwrap() : 선택된 요소의 부모 요소만 삭제한다.
        $('p').unwrap();
    });

});