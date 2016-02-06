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
		})
    }
);
