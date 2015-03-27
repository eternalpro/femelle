(function () {

    $('ul.menu>li').each(function(i, o){
        var $this = $(this);
        var $sub = $('.' + $this.data('target'));
        $sub.css('left', (128 * i - 25) + 'px');
    });

    $('ul.menu>li').on('mouseover', function () {
        var $this = $(this);
        $('.' + $this.data('target')).show();
    });
    $('ul.menu>li').on('mouseleave', function () {
        var $this = $(this);
        $('.' + $this.data('target')).hide();
    });

})();