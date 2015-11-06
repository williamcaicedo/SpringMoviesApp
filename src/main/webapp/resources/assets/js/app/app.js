/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var springMoviesApp = angular.module("springMoviesApp", [
    'ngRoute',
    'ui.bootstrap',
    'ui.grid',
    'springMoviesAppServices',
    'springMoviesAppControllers',
    'currencyMask',
    'lodash'
    
]);


springMoviesApp.config(['$routeProvider', 
    function($routeProvider) {
        $routeProvider.
                when('/admin', {
                    templateUrl: 'assets/js/app/views/admin.html',
                    controller: 'adminController'
                }).when('/movie/:movieId', {
                    templateUrl: 'assets/js/app/views/movie.html',
                    controller: 'movieController'
                }).when('/', {
                    templateUrl: 'assets/js/app/views/home.html',
                    controller: 'homeController'
                }).otherwise({
                    redirectTo: '/'
                });
        
}]);
