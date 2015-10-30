/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var controllerModule = angular.module('springMoviesAppControllers');

controllerModule.controller('homeController', ['$scope', 'movieService', '_', 
    function ($scope, movieService, _) {
        $scope.movies = [];

        $scope.getAllMovies = function () {
            var promise = movieService.getAllMovies();
            promise.then(function (response) {
                $scope.movies = response.data;
            });
        };
        
        $scope.getAllMovies();
    }]);





