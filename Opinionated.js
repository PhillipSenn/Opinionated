$('.bar').sparkline('html', { type: 'bar' }); 

$('.slider').slider({
	value:0,
	min: 0,
	max: 4,
	slide: mySlide
})

function mySlide( myEvent, myUI ) {
	$(this).closest('td').find('.myText').remove()
	if (myUI.value === 0) {
		$(this).closest('td').find('.ui-slider').prepend('')
	} else if (myUI.value === 1) {
		$(this).closest('td').find('.ui-slider').prepend('<span class="myText">This is the way that I do it</span>')
	} else if (myUI.value === 2) {
		$(this).closest('td').find('.ui-slider').prepend('<span class="myText">Sometimes I do it that way</span>')
	} else if (myUI.value === 3) {
		$(this).closest('td').find('.ui-slider').prepend('<span class="myText">I never do it that way</span>')
	} else if (myUI.value === 4) {
		$(this).closest('td').find('.ui-slider').prepend('<span class="myText">I would cut you.</span>')
	}
}
$(document).on('change','select',selectChanged)
function selectChanged() {
	$('.msg').text("It doesn't post anywhere yet - sorry.").addClass('label-danger')
}
