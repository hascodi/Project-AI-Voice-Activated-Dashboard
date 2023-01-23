function changePage(result) {
    console.log("Result " + result)
    // Toastify({
    //     text: result,
    //     gravity: "top", // `top` or `bottom`
    //     position: "left", // `left`, `center` or `right`
    //     offset: {
    //         x: 50, // horizontal axis - can be a number or a string indicating unity. eg: '2em'
    //         y: 10 // vertical axis - can be a number or a string indicating unity. eg: '2em'
    //     },
    // }).showToast();

    switch (result) {
        case 'down':
            url = '../index.html'
            break
        case 'go':
            url = '../pages/inbox.html'
            break
        case 'left':
            url = '../pages/animations.html'
            break
        case 'no':
            url = '../pages/flot-charts.html'
            break
        case 'right':
            url = '../pages/normal-table.html'
            break
        case 'stop':
            url = '../pages/form-elements.html'
            break
        case 'up':
            url = '../pages/notification.html'
            break
        case 'yes':
            url = '../pages/contact.html'
            break
    }
    window.open(url, '_top')
}

function sleep(milliseconds) {
    const date = Date.now();
    let currentDate = null;
    do {
        currentDate = Date.now();
    } while (currentDate - date < milliseconds);
}
