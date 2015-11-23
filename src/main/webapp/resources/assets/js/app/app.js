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


springMoviesApp.config(['$routeProvider', '$httpProvider',
    function ($routeProvider, $httpProvider) {
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
        }).when('/login', {
            templateUrl: 'assets/js/app/views/login.html',
            controller: 'loginController'
        })
        .otherwise({
            redirectTo: '/'
        });

        $httpProvider.defaults.headers.common["X-Requested-With"] = 'XMLHttpRequest';

    }])
        .run(['$rootScope','$location','authService', function ($rootScope, $location, authService) {
            $rootScope.$on("$routeChangeStart", function (event, next, current) {
                if (next.templateUrl === "assets/js/app/views/admin.html") { 
                    authService.login().then(function(response) {
                        if (!response.success) 
                            $location.path('/login');
                    });
                    
                }
            });
        }]);
