$(document).on('turbolinks:load',function(){
    var counter = $('.counter');
    if (counter.length) {
        document.cookie = "user=John";
        setInterval((counter) => {var num = parseInt(counter.text()); if (num > 0) counter.text(num+1)}, 1000, counter);
    }
});
