$(document).ready(function(){

	$('.carousel').carousel();

	function carouselNormalization() {
		var items = $('#carouselQuotes .item'), //grab all slides
		    heights = [], //create empty array to store height values
		    tallest; //create variable to make note of the tallest slide

		if (items.length) {
		    function normalizeHeights() {
		        items.each(function() { //add heights to array
								heights.push($(this).outerHeight());
		        });
		        tallest = Math.max.apply(null, heights); //cache largest value
		        items.each(function() {
		            $(this).css('min-height',tallest + 'px');
		        });
		    };
		    normalizeHeights();

		    $(window).on('resize orientationchange', function () {
		        tallest = 0, heights.length = 0; //reset vars
		        items.each(function() {
		            $(this).css('min-height','0'); //reset min-height
		        }); 
		        normalizeHeights(); //run it again 
		    });
		}
	}

	carouselNormalization();
    
	$(".hash-link").click(function(event){
			var hash = this.hash;
			event.preventDefault();
			$('html, body').animate({
					scrollTop: $(hash).offset().top
			}, 800);
	});

	$(".link").click(function(evn){
			evn.preventDefault();
	});

	$('.navbar-toggler').click(function(){
    $(this).toggleClass('open');
    $('.styleguide-header').toggleClass('open');
	});
	
	// Closes menu on mobile when clicking a menu item
  $('.navbar-nav a').on('click', function() {
    $('.navbar-toggler').removeClass('open');
    $('.navbar-collapse').removeClass('in');
    $('.navbar-toggler').addClass('collapsed');
	})
	
	$(document).scroll(function(){

		var scrollTop = $(document).scrollTop();
		var windowWeight = $(document).innerWidth();

    if(scrollTop > 0 && windowWeight < 768){
      $('.styleguide-header').addClass('fixed');
    }else{
      $('.styleguide-header').removeClass('fixed');
    }

  })
	
});
