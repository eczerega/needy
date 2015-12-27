var app = angular
    .module('needy',
    [
        'ngMaterial'
    ]
)
app.controller('MainCtrl',
    function ($scope) {
        $scope.test= 'Hola soy needy!';
    }
);
