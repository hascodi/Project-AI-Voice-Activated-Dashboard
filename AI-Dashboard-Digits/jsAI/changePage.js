function changePage(result) {
    console.log("Result " + result)

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
}

