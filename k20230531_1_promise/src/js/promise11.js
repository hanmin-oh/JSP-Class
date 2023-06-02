function timer(time) {
    return new Promise( (resolve, reject) => setTimeout( () => {
        resolve(time);
    } , time))
}

console.time(1);
Promise.all([timer(500) , timer(800), timer(1000)]).then( time => {
    console.log(time);
    console.timeEnd(1);
} );

console.time(2);
Promise.race([timer(500) , timer(800), timer(1000)]).then( time => {
    console.log(time);
    console.timeEnd(2);
} );
