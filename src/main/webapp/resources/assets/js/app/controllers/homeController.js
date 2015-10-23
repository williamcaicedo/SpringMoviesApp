/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var controllerModule = angular.module('springMoviesAppControllers');

controllerModule.controller('homeController', ['$scope', '$uibModal', 'movieService', '_', 
    function ($scope, $uibModal, movieService, _) {
        $scope.movies = [];

        $scope.getAllMovies = function () {
            movieService.getAllMovies().then(function (response) {
                $scope.movies = response.data;
            });
        };


        $scope.addMovie = function () {
            $uibModal.open({
                templateUrl: 'addMovieModal',
                controller: 'homeController.addMovieModal',
                size: 'md'
            }).result.then(function (m) {
                movieService.createMovie(m);
                $scope.getAllMovies();
            });
        };
        
        $scope.getAllMovies();
    }]);

controllerModule.controller('homeController.addMovieModal', ['$scope', '$modalInstance', function ($scope, $modalInstance) {
        $scope.movie = {};

        $scope.cancel = function () {
            $modalInstance.dismiss('cancel');
        };

        $scope.ok = function () {

            $modalInstance.close($scope.movie);
        };
    }]);



