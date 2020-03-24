//= require jquery
//= require jquery_ujs
//= require popper

$(document).ready(function(){
    /**
     * This part causes smooth scrolling using scrollto.js
     * We target all a tags inside the nav, and apply the scrollto.js to it.
     */

    $("#main-nav a").click(function(event){
        var hash = this.hash;
        event.preventDefault();
        $('html, body').animate({
                scrollTop: $(hash).offset().top
        }, 800);
    });

    /**
     * This part handles the highlighting functionality.
     * We use the scroll functionality again, some array creation and
     * manipulation, class adding and class removing, and conditional testing
     */
    var aChildren = $("#main-nav li").children(); // find the a children of the list items
    var aArray = []; // create the empty aArray
    for (var i=0; i < aChildren.length; i++) {
        var aChild = aChildren[i];
        var ahref = $(aChild).attr('href');
        aArray.push(ahref);
    } // this for loop fills the aArray with attribute href values

    $(window).scroll(function(){
        var windowPos = $(window).scrollTop(); // get the offset of the window from the top of page
        var windowHeight = $(window).height(); // get the height of the window
        var docHeight = $(document).height();

        for (var i=0; i < aArray.length; i++) {
            var theID = aArray[i];
            var divPos = $(theID).offset().top; // get the offset of the div from the top of page
            var divHeight = $(theID).height(); // get the height of the div in question
            if (windowPos >= divPos && windowPos < (divPos + divHeight)) {
                $("a[href='" + theID + "']").addClass("nav-active");
            } else {
                $("a[href='" + theID + "']").removeClass("nav-active");
            }
        }

        if(windowPos + windowHeight == docHeight) {
            if (!$("#main-nav li:last-child a").hasClass("nav-active")) {
                var navActiveCurrent = $(".nav-active").attr("href");
                $("a[href='" + navActiveCurrent + "']").removeClass("nav-active");
                $("#main-nav li:first-child a").addClass("nav-active");
            }
        }
    });

    $( "a" ).click(function( event ) {
      event.preventDefault();
    });

    $("#nav-button").click(function(){
      $('#main-nav, #nav-button').toggleClass('open');
      $('body').toggleClass('modal-active');
    });

    $('#main-nav li a').click(function(){
      $('#main-nav, #nav-button').removeClass('open');
      $('body').removeClass('modal-active');
    })
});
