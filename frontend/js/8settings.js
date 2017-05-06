// import isotope from './10isotope'
// import flickity from '15flickity.pkgd.min'
// import scl from './9setting_catalog_list'

// import flickity from 'flickity';

//
// require ("materialize-css")

import 'jquery';
import 'jquery.cookie'

window.$ = window.jQuery = require('jquery');
require ("./my")

$(document).ready(function () {
  //


    let flickity = require ('flickity');

    $('.gallery').flickity({wrapAround: true, pageDots: false, autoPlay: 3000});
    $('.btn-menu').on('click', function () {
        $('.mask').toggleClass('active');
        $('html,body').toggleClass('not-scroll');
    });
    $('.mask').on('click', function () {
        $(this).removeClass('active');
        $("#hmt").removeAttr("checked");
        $('html,body').removeClass('not-scroll');
    });
    slider_resize();
    $(window).resize(function () {
        slider_resize();
    });
    function slider_resize() {
        var win = $(window).width();
        if (win > 768) {
            var height = $('.item_slider').width() / 2.25;
            $('.main_slider, .gallery, .item_slider').height(height);
        } else {
            var height = $('.item_slider').width() / 1.5;
            $('.main_slider, .gallery, .item_slider').height(height);
        }
    }

    $('.in_basket a.add_to_cart').on('click', function () {
        $(this).text('����������');
        setTimeout(function () {
            $('.in_basket a').css('display', 'none');
            $('.go_cart').css('display', 'block');
        }, 1500);
    });
    $('.navigation-arrows a').on('click', function (e) {
        e.preventDefault();
        $('.navigation-arrows a').addClass('loading').text('������...');
        $.ajax({
            type: "GET", url: $(this).attr('href') + '.grid', dataType: "html", success: function (out) {
                result = $(out).find('.grid .grid-item');
                nextlink = $(out).find('.navigation-arrows a').attr('href');
                $('.grid').append(result).isotope('appended', result);
                $('.navigation-arrows a').removeClass('loading').text('����� ���!');
                if (nextlink != undefined && nextlink != '') {
                    $('.navigation-arrows a').attr('href', nextlink);
                } else {
                    $('.navigation-arrows').remove();
                }
            }
        });
    });
});