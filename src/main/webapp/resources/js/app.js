/**
 * Created by fangshuai on 2015-04-01-0001.
 */
var loadPage = function () {
    var imgNum = $('img').length;
    $('img').load(function () {
        if (!--imgNum) {
            var height = $('.bg-right').height();
            if (height < 500)
                height = 500;
            $('.bg-sidebar').css('height', height - 15);
            $('.bg-right').css('height', height + 50);
        }
    });
};