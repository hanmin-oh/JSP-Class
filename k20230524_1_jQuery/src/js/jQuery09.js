$( () => {
    //띄어쓰기는 자손(자식 포함)
    $('p').children('b').css({'fontSize' : '30px' , 'color': 'gray'});
    $('p').find('b').css({'fontSize' : '30px' , 'color': 'gray'});
    $('div > p > b').css({'fontSize' : '30px' , 'color': 'gray'});
    $('span').parents('p').css({'fontSize' : '30px' , 'color': 'blue'});
    // parents 선택자 안고르니 전체 선택된다?? -- 모든 조상 요소가 선택된다.
    $('b').eq(0).next().css({'fontSize' : '30px' , 'color': 'red'});
    //$('b:eq(2)').next().css({'fontSize' : '30px' , 'color': 'blue'}); //<b>태그에 next()를 쓸 순 없다?
    $('b').nextAll().css({'fontSize' : '30px' , 'color': 'green'});
});


























