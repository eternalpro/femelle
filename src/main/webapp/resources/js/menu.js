(function () {

    if ($.support.leadingWhitespace) {  // ¸ß°æ±¾ä¯ÀÀÆ÷
        $('ul.menu>li').each(function (i, o) {
            var $this = $(this);
            var $sub = $('.' + $this.data('target'));
            $sub.css('left', (130 * i - 18) + 'px');
        });
    } else {
        $('ul.menu>li').each(function (i, o) {
            var $this = $(this);
            var $sub = $('.' + $this.data('target'));
            $sub.css('left', (130 * i - 20) + 'px');
        });
    }


    $('ul.menu>li').on('mouseover', function () {
        var $this = $(this);
        $('.' + $this.data('target')).show();
    });
    $('ul.menu>li').on('mouseleave', function () {
        var $this = $(this);
        $('.' + $this.data('target')).hide();
    });

})();