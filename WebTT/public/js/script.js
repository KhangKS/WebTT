// Slider
var Slider=function(){
	if($('.slider-banner').length>0){
		$('.slider-banner').slick({
			infinite: true,
			arrows: true,
			dots: false,
			autoplay: true,
			autoplaySpeed: 1500,
			prevArrow:'<a href="#" title="" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>',
			nextArrow:'<a href="#" title="" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>'
		});
	}
};

$(function(){
	Slider();
});

