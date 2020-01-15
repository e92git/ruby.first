$(document).on('turbolinks:load',function(){
    var counter = $('.counter');
    if (counter.length) {
        document.cookie = "user=John";
        setInterval((counter) => {var num = parseInt(counter.text()); if (num > 0) counter.text(num+1)}, 1000, counter);
    }
});

$('body').on('ajax:success', function(event) {
    // insert the failure message inside the "#account_settings" element
    // $(this).append(xhr.responseText)
    alert('ok ajax:success');
});


// $('.article_send_ajax').click(function () {
//     alert('a');
// });

// $.post( "ajax/test.html", function( data ) {
//     $( ".result" ).html( data );
// });