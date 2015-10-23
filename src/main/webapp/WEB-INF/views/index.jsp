<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html ng-app="springMoviesApp">
    <head>
        <title>SpringMoviesApp</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/css/material.min.css" rel="stylesheet">
        <link href="assets/css/ripples.min.css" rel="stylesheet">
        <link href="assets/css/roboto.min.css" rel="stylesheet">
        <link href="assets/css/font-awesome.min.css" rel="stylesheet">
    </head>
    <body ng-controller="homeController">
        <div class="navbar navbar-default">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="javascript:void(0)">Spring MoviesApp</a>
            </div>
            <div class="navbar-collapse collapse navbar-responsive-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="javascript:void(0)">Home</a></li>
                    
                    <li class="dropdown">
                        <a href="bootstrap-elements.html" data-target="#" class="dropdown-toggle" data-toggle="dropdown">Actions <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="" ng-click="addMovie()">Add Movie</a></li>
                            <li class="divider"></li>
                        </ul>
                    </li>
                </ul>
                <form class="navbar-form navbar-left">
                    <input type="text" class="form-control col-lg-8" placeholder="Search">
                </form>
               
            </div>
        </div>
        

        <hr>
        <h2>Movies:</h2>
        <div class="row">

            <div class="col-lg-5">
                <h2>Pel&iacute;culas</h2>
                <div ng-repeat="movie in movies">
                    <h3><b>{{movie.name}}</b></h3>
                    <h4>Director: <b>{{movie.director}}</b></h4>
                    <h4>Calificaci&oacute;n: <b>{{movie.rating}}</b></h4>
                    <hr>
                </div>
            </div>

        </div>
    </body>
</html>

<script type="text/ng-template" id="addMovieModal">
        <div class="modal-header">
            <button type="button" class="close" ng-click="cancel();" aria-hidden="true">&times;</button>
            <h4 class="modal-title">Add a movie</h4>
        </div>
        <div class="modal-body">
            <form name="movieForm" novalidate>

            <div class="row">
                <div class="col-md-5">
                    <div class="form-group">
                        <label for="name" class="control-label">Nombre: </label>
                        <input id="name" class="form-control" type="text" ng-model="movie.name" required/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    <div class="form-group">
                        <label for="director" class="control-label">Director: </label>
                        <input id="director" class="form-control" type="text" ng-model="movie.director" required/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    <div class="form-group">
                        <label for="genre" class="control-label">G&eacute;nero: </label>
                        <input id="genre" class="form-control" type="text" ng-model="movie.genre" required/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    <div class="form-group">
                        <label for="income" class="control-label">Recaudo bruto: </label>
                        <input id="income" class="form-control" type="number" ng-model="movie.grossIncome" required/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    <div class="form-group">
                        <label for="rating" class="control-label">Calificaci&oacute;n: </label>
                        <input id="rating" class="form-control" type="number" ng-model="movie.rating" required/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    <div class="form-group">
                        <label for="releaseDate" class="control-label">Fecha de estreno: </label>
                        <input id="releaseDate" class="form-control" type="date" ng-model="movie.releaseDate" required/>
                    </div>
                </div>
            </div>
            

        </form>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-primary" ng-disabled="movieForm.$invalid" ng-click="ok()">Add</button>
            <button class="btn btn-warning" type="button" ng-click="cancel()">Cancel</button>
        </div>
</script>

<script>
    apiUrl = "${apiUrl}";
</script>

<!--jQuery-->
<script src="assets/js/lib/jquery-1.11.1.min.js"></script>
<!--lodash-->
<script src="assets/js/lib/lodash.min.js"></script>
<!--Angular stuff-->
<script src="assets/js/lib/angular.min.js"></script>
<script src="assets/js/lib/angular-route.min.js"></script>
<script src="assets/js/lib/angular-currency-mask.js"></script>
<!--bootstrap and material design stuff-->
<script src="assets/js/lib/bootstrap.min.js"></script>
<script src="assets/js/lib/material.min.js"></script>
<script src="assets/js/lib/ripples.min.js"></script>
<!--angular - boostrap "interface"-->
<script src="assets/js/lib/ui-bootstrap-tpls-0.14.0.min.js"></script>

<!--my own stuff-->
<script src="assets/js/app/moduleRegistration.js"></script>
<script src="assets/js/app/services/movieService.js"></script>
<script src="assets/js/app/controllers/homeController.js"></script>
<script src="assets/js/app/app.js"></script>
