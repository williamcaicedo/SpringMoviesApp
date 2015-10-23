/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
 var servicesModule = angular.module('springMoviesAppServices');
 
 servicesModule.factory('movieService', ['$http', function($http) {
        return {
            getAllMovies: function() {
                return $http.get('http://localhost:8080/SpringMoviesApp/movie/');
            },
            createMovie: function(movie) {
                return $http.put('http://localhost:8080/SpringMoviesApp/movie/', movie);
            }
        };
}]);

