function hasClass( elem, klass ) {
     return (" " + elem.className + " " ).indexOf( " "+klass+" " ) > -1;
}

var app = angular
    .module('needy',
    [
        'ngMaterial'
    ]
)
app
.controller('MainCtrl',
    function ($scope, $element) {

		var lastScrollTop = 0;
		$(window).scroll(function(event){
		   var st = $(this).scrollTop();
		   //var position = $('.backbuildings').css("bottom");
		   var position = $('.new-footer').css("height");
		   var position_b = $('.backbuildings').css("height");
		   //alert(position);
		   if (st > lastScrollTop){
			var parallax = new Waypoint({
			  element: document.getElementById('foot'),
			  handler: function(direction) {
			  	var buildings = angular.element( document.querySelector( '.new-footer' ) );
			  	var recalc = parseInt(position.substring(0, position.length - 2), 10) -3;
			  	var recalc_b = parseInt(position_b.substring(0, position_b.length - 2), 10) -1;
			  	$('.new-footer').css('height', recalc + 'px');
			  	$('.backbuildings').css('height', recalc_b + 'px');
			  },
			offset: '280'
			});
		   } 
		   else 
		   {
			var parallax = new Waypoint({
			  element: document.getElementById('foot'),
			  handler: function(direction) {
			  	var buildings = angular.element( document.querySelector( '.new-footer' ) );
			  	var recalc = parseInt(position.substring(0, position.length - 2), 10) +3;
			  	var recalc_b = parseInt(position_b.substring(0, position_b.length - 2), 10) +1;
			  	$('.new-footer').css('height', recalc + 'px');
			  	$('.backbuildings').css('height', recalc_b + 'px');
			  },
			offset: '280'
			});
		   }
		   lastScrollTop = st;
		});

        $scope.test= 'Hola soy needy!';
		var waypoint = new Waypoint({
		  element: document.getElementById('basic-waypoint'),
		  handler: function(direction) {
		  	var myEl = angular.element( document.querySelector( '#menubar-big' ) );

			if($("#menubar-big").hasClass("not-up")==false)
			{
				myEl.addClass('not-up'); 
			}
			else
			{
				$("#menubar-big").removeClass("not-up");
			}
		  },
		offset: '380'
		});
    }
);
