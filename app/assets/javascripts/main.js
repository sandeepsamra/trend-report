$(window).load(function(){
	$('#preloader').fadeOut('slow',function(){$(this).remove();});
});

/******************************************************************************************************************************
Menu
*******************************************************************************************************************************/ 

$(document).ready(function() {

	var bodyEl = document.body,
		//content = document.querySelector( '.content-wrap' ),
		openbtn = document.getElementById( 'open-button' ),
		closebtn = document.getElementById( 'close-button' ),
		isOpen = false;

	function init() {
		initEvents();
	}

	function initEvents() {
		openbtn.addEventListener( 'click', toggleMenu );
		if( closebtn ) {
			closebtn.addEventListener( 'click', toggleMenu );
		}

		/* close the menu element if the target it´s not the menu element or one of its descendants..
		content.addEventListener( 'click', function(ev) {
			var target = ev.target;
			if( isOpen && target !== openbtn ) {
				toggleMenu();
			}
		} );
		*/
	}

	function toggleMenu() {
		if( isOpen ) {
			classie.remove( bodyEl, 'show-menu' );
		}
		else {
			classie.add( bodyEl, 'show-menu' );
		}
		isOpen = !isOpen;
	}

	init();

	//Dropdown menu

	$('#nav-link-click').on('mouseover', function() {
    $('ul#hide-link').removeClass('hide-link');
  });

   $('#nav-link-click').on('mouseout', function() {
    $('ul#hide-link').addClass('hide-link');
  });

  $('li.sublink').on('mouseover', function() {
    $('ul#sub-hide-link').removeClass('sub-hide-link');
  });

  $('li.sublink').on('mouseout', function() {
    $('ul#sub-hide-link').addClass('sub-hide-link');
  });

});

/******************************************************************************************************************************
Log in & sign up forms
*******************************************************************************************************************************/ 

$(document).ready(function() {

//Switch between forms on landing page

	$('#log-in-click').on('click', function() {
		$('#sign-up-form').addClass('hide-form');
		$('#sign-in-form').removeClass('hide-form');
	});

	$('#sign-up-click').on('click', function() {
		$('#sign-in-form').addClass('hide-form');
		$('#sign-up-form').removeClass('hide-form');
	});

//Sign up form validations

	$(function() {
    $('#sign-up-form').submit(function(event) {
    	$('#form-group-fname').removeClass('has-error');
    	$('#form-group-lname').removeClass('has-error');
    	$('#form-group-email').removeClass('has-error');
    	$('#form-group-password').removeClass('has-error');
    	$('#form-group-pconfirm').removeClass('has-error');
      var errors = [];
      if ($('#form-fname').val().length <= 0){
        errors.push("You didn't enter a first name.");
        $('#form-group-fname').addClass('has-error');
      };

      if ($('#form-lname').val().length <= 0){
        errors.push("You didn't enter a last name.");
        $('#form-group-lname').addClass('has-error');
      };

      if ($('#form-email').val().indexOf('@') === -1){
        errors.push("Your email is not the right format.");
        $('#form-group-email').addClass('has-error');
      };

			if ($('#form-password').val().length < 6){
        errors.push("Your password must be at least 6 characters long.");
        $('#form-group-password').addClass('has-error');
      };

      if ($('#form-pconfirm').val() !== $('#form-password').val()){
        errors.push("You didn't confirm your password.");
        $('#form-group-pconfirm').addClass('has-error');
      };

      if (errors.length > 0) {
      	event.preventDefault();
      	$('div#sign-up-errors').children("h4").remove();
      	$('div#sign-up-errors').append('<h4>' + 'ERRORS: ' + '</h4>');
      	for (i = 0; i < errors.length; i += 1) {
      		$('div#sign-up-errors').append('<h4>' + errors[i] + '</h4>');
      	}
      }
    });
  });

});
/******************************************************************************************************************************
Waypoints
*******************************************************************************************************************************/ 

$(document).ready(function() {

	$('.wp1').waypoint(function() {
		$('.wp1').addClass('animated fadeInLeft');
	}, {
		offset: '75%'
	});
	$('.wp2').waypoint(function() {
		$('.wp2').addClass('animated fadeInUp');
	}, {
		offset: '75%'
	});
	$('.wp3').waypoint(function() {
		$('.wp3').addClass('animated fadeInDown');
	}, {
		offset: '55%'
	});
	$('.wp4').waypoint(function() {
		$('.wp4').addClass('animated fadeInDown');
	}, {
		offset: '75%'
	});
	$('.wp5').waypoint(function() {
		$('.wp5').addClass('animated fadeInUp');
	}, {
		offset: '75%'
	});
	$('.wp6').waypoint(function() {
		$('.wp6').addClass('animated fadeInDown');
	}, {
		offset: '75%'
	});

});

/******************************************************************************************************************************
Nav Button
*******************************************************************************************************************************/ 

$(window).load(function() {

	$('.nav_slide_button').click(function() {
		$('.pull').slideToggle();
	});

});


$(function() {

	$('a[href*=#]:not([href=#])').click(function() {
		if (location.pathname.replace(/^\//, '') === this.pathname.replace(/^\//, '') && location.hostname === this.hostname) {

			var target = $(this.hash);
			target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
			if (target.length) {
				$('html,body').animate({
					scrollTop: target.offset().top - 125
				}, 1000);
				return false;
			}
		}
	});

});

/******************************************************************************************************************************
Nav Transform
*******************************************************************************************************************************/ 

document.querySelector("#nav-toggle").addEventListener("click", function() {
	this.classList.toggle("active");
});

