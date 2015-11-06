/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var controllerModule = angular.module('springMoviesAppControllers');

controllerModule.controller('adminController', ['$scope', '$uibModal', 'movieService', 
    'actorService', '_',
    function ($scope, $uibModal, movieService, actorService, _) {
        $scope.movies = [];
        $scope.actors = [];

        $scope.getAllMovies = function () {
            movieService.getAllMovies()
                .then(function (response) {
                    $scope.movies = response.data;
                });
        };

        $scope.getAllActors = function () {
            actorService.getAllActors()
                .then(function (response) {
                    $scope.actors = response.data;
                });
        };

        $scope.addMovie = function () {
            $uibModal.open({
                templateUrl: 'addMovieModal',
                controller: 'adminController.addMovieModal',
                size: 'md'
            }).result.then(function (m) {
                movieService.createMovie(m)
                    .then(function (response) {
                        $scope.getAllMovies();
                    });
            });
        };
        $scope.addActor = function () {
            $uibModal.open({
                templateUrl: 'addActorModal',
                controller: 'adminController.addActorModal',
                size: 'md'
            }).result.then(function (a) {
                actorService.createActor(a)
                    .then(function (response) {
                        $scope.getAllActors();
                    });
            });
        };

        $scope.getAllMovies();
        $scope.getAllActors();
    }]);

controllerModule.controller('adminController.addMovieModal', ['$scope', '$modalInstance', function ($scope, $modalInstance) {
        $scope.movie = {};

        $scope.cancel = function () {
            $modalInstance.dismiss('cancel');
        };

        $scope.ok = function () {

            $modalInstance.close($scope.movie);
        };
    }]);

controllerModule.controller('adminController.addActorModal', ['$scope', '$modalInstance', function ($scope, $modalInstance) {
        $scope.actor = {};

        $scope.cancel = function () {
            $modalInstance.dismiss('cancel');
        };

        $scope.ok = function () {

            $modalInstance.close($scope.actor);
        };
    }]);
