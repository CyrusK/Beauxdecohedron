(function($) {
  $(function() {
    $('.jcarousel').jcarousel({
        itemFallbackDimension: 400
    });

    $('.jcarousel-control-prev')
        .on('jcarouselcontrol:active', function() {
          $(this).removeClass('inactive');
        })
        .on('jcarouselcontrol:inactive', function() {
          $(this).addClass('inactive');
        })
        .jcarouselControl({
          target: '-=1'
        });

    $('.jcarousel-control-next')
        .on('jcarouselcontrol:active', function() {
          $(this).removeClass('inactive');
        })
        .on('jcarouselcontrol:inactive', function() {
          $(this).addClass('inactive');
        })
        .jcarouselControl({
          target: '+=1'
        });
  });
})(jQuery);
