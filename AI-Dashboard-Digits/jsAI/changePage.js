function changePage(result) {
    console.log("Result " + result)
    Toastify({
        text: result,
        gravity: "top", // `top` or `bottom`
        position: "left", // `left`, `center` or `right`
        offset: {
            x: 50, // horizontal axis - can be a number or a string indicating unity. eg: '2em'
            y: 10 // vertical axis - can be a number or a string indicating unity. eg: '2em'
        },
    }).showToast();

    switch (result) {
        case '1':
            url = '../index.html'
            break
        case '2':
            url = '../pages/inbox.html'
            break
        case '3':
            url = '../pages/animations.html'
            break
        case '4':
            url = '../pages/flot-charts.html'
            break
        case '5':
            url = '../pages/normal-table.html'
            break
        case '6':
            url = '../pages/form-elements.html'
            break
        case '7':
            url = '../pages/notification.html'
            break
        case '8':
            url = '../pages/contact.html'
            break
    }
    window.open(url + "?" + result, '_top')
    Toastify({
        text: result,
        duration: 3000,
        close: true,
        gravity: "top", // `top` or `bottom`
        position: "left", // `left`, `center` or `right`
        stopOnFocus: true, // Prevents dismissing of toast on hover
        style: {
            background: "linear-gradient(to right, #00b09b, #96c93d)",
        }
    }).showToast();
}

