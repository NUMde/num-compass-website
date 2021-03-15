/* ========================================================================= */
/*	Page Preloader
/* ========================================================================= */

$(window).on("load", function () {
	$('#preloader').fadeOut('slow', function () {
		$(this).remove();
	});
});

(function ($) {
    "use strict";

    /* ========================================================================= */
    /*	Portfolio Filtering Hook
    /* =========================================================================  */
    $('.play-icon i').click(function () {
        var video = '<iframe allowfullscreen src="' + $(this).attr('data-video') + '"></iframe>';
        $(this).replaceWith(video);
    });

})(jQuery);
