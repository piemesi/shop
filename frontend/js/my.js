
$(window).on('hashchange', function() {
    if (window.location.hash) {
        var page = window.location.hash.replace('#', '');
        if (page == Number.NaN || page <= 0) {
            return false;
        } else {
            getPosts(page);
        }
    }
});

function getPosts(page) {
   $.ajax({
        url : '?page=' + page,
         dataType: 'json',
    })
//         .success(function (data) {
// console.log(data)
//             // $('.grid').html(data);
//             $('.grid').append(data)
//             location.hash = page;
//         })
        .done(function (data) {
            // console.log(data.body)
        // $('.grid').html(data);
            $('.navigation').html(data.navpanel)
        $('.grid').html(data.body)
        location.hash = page;
    }).fail(function () {
        alert('Posts could not be loaded.');
    });
}

$(document).ready(function () {

    $(".nav li a").on('click', function(){

        console.log('111111')

        if($(this).hasClass('direct-link')){
            window.location.href = $(this).attr('href');
        }
        $('.bottomborder').removeClass('bottomborder')
        $(this).addClass('bottomborder')
    })

    /*==================== PAGINATION =========================*/
    // $(window).on('hashchange',function(){
    //     page = window.location.hash.replace('#','');
    //     getProducts(page);
    // });
    //
    //
    // $('.pagination a').on('click',function(){
    //
    //     // getPosts($(this).attr('href').split('page=')[1]);
    //     e.preventDefault();
    //
    //     var page = $(this).attr('href').split('page=')[1];
    //     // alert($('#pageItem').val());
    //     getPosts(page); //, $('#pageItem').val()
    //     location.hash = page;
    //
    //     return false;
    //     // $(this).preventDefault();
    //     // var page = $(this).attr('href').split('page=')[1];
    //     // getProducts(page);
    //     // location.hash = page;
    // })
    //
    // $(document).on('click','.pagination a', function(e){
    //     e.preventDefault();
    //     var page = $(this).attr('href').split('page=')[1];
    //     alert($('#pageItem').val());
    //      getProducts(page);
    //     location.hash = page;
    // });
    // function getProducts(page, pageItem){
    //     $.ajax({
    //         // url: '/ajax/product?page=' + page+'&pageItem='+pageItem,
    //         url: '/ajax/'+pageItem+'/' + page,
    //
    //         data: {pageItem:pageItem}
    //     }).done(function(data){
    //         $('.content').html(data);
    //     });
    // }







});




$(document).on('click', '.pagination a', function (e) {

    e.preventDefault();

    getPosts($(this).attr('href').split('page=')[1]);
});
