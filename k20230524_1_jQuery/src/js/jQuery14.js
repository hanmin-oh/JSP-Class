$( () => {
    $('b').click( function () {
        //$('.sum_menu2:eq(0)').css('display' , 'block');
        //$(this).next().toggle();
        //$(this).next().slideToggle();
        $(this).next().slideDown();
        //$(this).parent().siblings().child().slideUp();
        $(this).parent().siblings().children('ul').slideUp();
    });

});