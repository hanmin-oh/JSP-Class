$( () => {
    console.log($('.delete').index());
    $('div > img').bind('click' , function() {
        //$('div').hide();
        console.log($('.delete').index());
    });
    /*$('.delete').click( function () {
         $(this).parent().slideUp(1000 , 'easeInBounce');
    });

    $('#view').click( function () {
        $('div').slideDown(1000 , 'easeInBounce');
    });    */
});