const amountP = document.getElementById("amount");

var totalAmount = 0;
var change;

setInterval(() => {
    var n = getRandomInt(1000);

    changeTotal(n);
}, getRandomInt(10)*200);

function changeTotal(amount) {

    var random = Math.random();
    if (random < 0.5) {
        change = true;
    } else {
        change = false;
    }

    switch(change) {
        case true:
            totalAmount += amount;
            break;
        case false:
            totalAmount -= amount;
            break;
    }

    // switch(Math.sign(totalAmount)){
    //     case 1:
    //         amountP.style.color = `#00F00`;
    //         break;
    //     case -1:
    //         amountP.style.color = `ff0000`;
    //         break;
    // }

    if(Math.sign(totalAmount) === 1){
        amountP.style.color = `#00F000`;
    } else {
        amountP.style.color = `#ff0000`;
    }


    amountP.innerHTML = `${totalAmount}kr`;
    document.title = `${totalAmount}kr`
    console.log(Math.sign(totalAmount));
}
function getRandomInt(max) {
    return Math.floor(Math.random() * max);
}