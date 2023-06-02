$( () => {
    // id 속성이 base인 div 태그를 선택해서 뒤에 인수로 지정한 새로운 요소를 추가한다.
    $('button:eq(0)').click( function () {
        //after() : 선택된 요소 외부 뒤에 새로운 요소를 추가한다.
       //$('#base').after('<div>after</div><br/>');
       //$('#base').after($('<div>').text('after'));
        let $div = $('<div>').text('after');
        $('#base').after($div);
    });

    $('button:eq(1)').click( function () {
        /* insertAfter() : 새로운 요소를 인수로 지정한 요소 외부 뒤에 추가한다.
        $(추가할 요소).insertAfter(선택자); */
        //$('<div>after</div><br/>').insertAfter('#base');
        //$('<div>').text('aftre').insertAfter('#base');
        let $div = $('<div>').text('after');
        ($div).insertAfter('after');
         $('#base').after($div);
    });

    $('button:eq(2)').click( function () {
        // before() : 선택된 요소 외부 앞에 인수로 지정한 새로운 요소를 추가한다.
      //$('#base').before('<div>after</div><br/>');
       $('#base').before($('<div>').text('before'));
        let $div = $('<div>').text('before');
        ($div).before('after');
        // $('#base').after($div);
    });

    $('button:eq(3)').click( function () {
        /* insertBefore() : 새로운 요소를 인수로 지정한 요소 외부 뒤에 추가한다.
        $(추가할 요소).insertBefore(선택자); */
        //$('<div>before</div><br/>').insertBefore('#base');
        //$('<div>').text('before').insertBefore('#base');
        let $be = $('<div>').text('before');
        ($be).insertBefore('before');
        $('#base').before($be);
    });

});