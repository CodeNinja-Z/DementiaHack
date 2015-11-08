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

});
