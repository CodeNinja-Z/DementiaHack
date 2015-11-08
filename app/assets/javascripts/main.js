$(document).ready(function(){ 
	$(".button-collapse").sideNav();

	// the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    $('.modal-trigger').leanModal();



    /* edit patient page */
    $('.phone-list .chip.add').on('click', function() {
    	var content = $('.phone-list .template').html()
        $('.phone-list .caregiver-phones').after(content);
    });

    $(document.body).on('click', '.phone-list .chip.remove', function() {
    	$(this).parent().remove();
    });


    /* populate schedule and bind events */
    if ( $('.bubble').length > 0 ) {
    	var d = new Date();
    	var day = d.getDay();
    	var time = getMedTime(d);
    	var ready = readyForMeds(d);
    	day = 5;

		for (var i = 0; i < day; i++ ) {
    		var row = $('.bubble tr').eq(i + 1);
    		$(row).find('td:not(".label")').each(function() {
    			$(this).addClass('correct');
    			console.log($(this))
    		});
    	}

	   	// this days events
	   	if ( time > 0 ) {
	   		$('.bubble tr').eq(day + 1).find('td').eq(1).addClass('correct');
	   	} 
	   	if ( time > 1 ) {
	   		$('.bubble tr').eq(day + 1).find('td').eq(2).addClass('correct');
	   	}
	   	if ( time > 2 ) {
	   		$('.bubble tr').eq(day + 1).find('td').eq(3).addClass('correct');
	   	}
	   	if ( time > 3 ) {
	   		$('.bubble tr').eq(day + 1).find('td').eq(4).addClass('correct');
	   	}

	   	// next event
	   	if ( time < 4 ) {
	   		$('.bubble tr').eq(day + 1).find('td').eq( time + 1 ).addClass('next');
	   	}
    }

    function getMedTime(d) {
    	var h = d.getHours();
    	if (h < 9) {
    		return 0;
    	} else if (h < 13) {
    		return 1;
    	} else if (h < 18) {
    		return 2;
    	} else if (h < 20) {
    		return 3;
    	} else {
    		return 4;
    	}
    }

    function readyForMeds(d) {
		var h = d.getHours();
    	if (h >= 7 && h < 9) {
    		return true;
    	} else if (h >= 11 && h < 13) {
    		return true;
    	} else if (h >= 16 && h < 18) {
    		return true;
    	} else if (h >= 20 && h < 22) {
    		return true;
    	} else {
    		return false;
    	}
    }
});
