$( () => {
    $('img').hide();
    $('#show').show();
    $('button').click( function () {
        $('#imge').cycle({
            fx:     'shuffle',
            easing: 'easeOutBack',
            delay:  -8000
        });
    });
})