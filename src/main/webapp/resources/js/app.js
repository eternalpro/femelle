/**
 * Created by fangshuai on 2015-04-01-0001.
 */
var loadPage = function () {

    var $$ = function(func){
        if (document.addEventListener) {
            window.addEventListener("load", func, false);
        } else if (document.attachEvent) {
            window.attachEvent("onload", func);
        }
    };

    $$(function(){
        var height = $('.bg-right').height();
        console.log(height);
        if (height < 500)
            height = 500;
        $('.bg-sidebar').css('height', height - 15);
        $('.bg-right').css('height', height + 50);
    });
};

var loadPageWithHeight = function (h) {
    var imgNum = $('img').length;
    $('img').load(function () {
        if (!--imgNum) {
            var height = $('.bg-right').height();
            if (height < 500)
                height = 500;
            $('.bg-sidebar').css('height', height - 15 + h);
            $('.bg-right').css('height', height + 50 + h);
        }
    });
};