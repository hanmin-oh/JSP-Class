$( () => {
    $('.run').click(function () {
        $('#box').animate(
            { 'left' : '400px','opacity' : 0.1} , 1000 , 'linear'
        ).animate(
            {'top' : '350px', 'opacity' : 0.4, 'width' : '20px', 'height' : '20px'} , 1500 , 'linear'
        ).animate(
            {'left' : '0px', 'opacity' : 0.8, 'width' : '20px', 'height' : '20px' } , 1500 , 'linear'
        ).animate(
            { 'top' : '0px', 'opacity' : 1, 'width' : '200px', 'height' : '200px' } , 1500 , 'linear'
        ).slideUp(1000);
    });
})