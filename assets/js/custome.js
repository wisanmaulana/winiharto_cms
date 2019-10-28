/*configuration for thumnail slider-->
 
  http://sachinchoolur.github.io/lightslider/
  
 */
$(document).ready(function() {
/*-------------thumnail slider-----------------*/
			$("#content-slider").lightSlider({
                loop:true,
                keyPress:false,
                speed:4000,
                auto:true,
                loop:true,
                 pause: 5000
            });
            
            $("#thumbjobdetail").lightSlider({
                gallery: true,
				item: 1,
				loop:true,
				slideMargin: 0,
				thumbItem: 9
            });
            
/*-------------end thumnail slider----------*/
		});