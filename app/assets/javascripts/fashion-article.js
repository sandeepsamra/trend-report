$(document).ready(function() {
	 // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  $('.nav.navbar-nav > li').on('click', function(e) {
      $('.nav.navbar-nav > li').removeClass('active');
      $(this).addClass('active');
  });

  $('.nav.navbar-nav > li').on('mouseover', function(e) {
      $('.nav.navbar-nav > li').removeClass('active');
      $(this).addClass('active');
  });

  $('.nav.navbar-nav > li').on('mouseout', function(e) {
      $('.nav.navbar-nav > li').removeClass('active');
  });

});