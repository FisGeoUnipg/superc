

function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
$(function(){
    var height = $(window).height();
    $('section').height(height);
  
  
    var s = skrollr.init({
		smoothScrolling: false,
		mobileDeceleration: 0.004,
		forceHeight: false
	});
	

	//The options (second parameter) are all optional. The values shown are the default values.
	skrollr.menu.init(s, {
		//skrollr will smoothly animate to the new position using `animateTo`.
		animate: true,
	
		//The easing function to use.
		easing: 'sqrt',
	
		//Multiply your data-[offset] values so they match those set in skrollr.init
		scale: 2,
	
		//How long the animation should take in ms.
		duration: function(currentTop, targetTop) {
			//By default, the duration is hardcoded at 500ms.
			return 1200;
	
			//But you could calculate a value based on the current scroll position (`currentTop`) and the target scroll position (`targetTop`).
			//return Math.abs(currentTop - targetTop) * 10;
		}
	
		
	});

});// JavaScript Document