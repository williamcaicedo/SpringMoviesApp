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
        <link href="assets/css/material-fullpalette.min.css" rel="stylesheet">
        <link href="assets/css/ripples.min.css" rel="stylesheet">
        <link href="assets/css/roboto.min.css" rel="stylesheet">
        <link href="assets/css/font-awesome.min.css" rel="stylesheet">
    </head>
    <body class="container-fluid">
        <div ng-controller="navbarController" class="navbar navbar-default">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#/">Spring MoviesApp</a>
            </div>
            <div class="navbar-collapse collapse navbar-responsive-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#/">Home</a></li>

                    <li class="dropdown">
                        <a href="" data-target="#" class="dropdown-toggle" data-toggle="dropdown">Actions <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="" ng-click="addMovie()">Add Movie</a></li>
                            <li class="divider"></li>
                            <li><a href="" ng-click="addActor()">Add Actor</a></li>
                        </ul>
                    </li>
                </ul>
                <form class="navbar-form navbar-left">
                    <input type="text" class="form-control col-lg-8" placeholder="Search">
                </form>

            </div>
        </div>

        <div ng-view autoscroll>

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
    <label for="name" class="control-label">Name: </label>
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
    <label for="genre" class="control-label">Genre: </label>
    <input id="genre" class="form-control" type="text" ng-model="movie.genre" required/>
    </div>
    </div>
    </div>
    <div class="row">
    <div class="col-md-5">
    <div class="form-group">
    <label for="income" class="control-label">Gross Income: </label>
    <input id="income" class="form-control" type="number" ng-model="movie.grossIncome" required/>
    </div>
    </div>
    </div>
    <div class="row">
    <div class="col-md-5">
    <div class="form-group">
    <label for="rating" class="control-label">Rating: </label>
    <input id="rating" class="form-control" type="number" ng-model="movie.rating" required/>
    </div>
    </div>
    </div>
    <div class="row">
    <div class="col-md-5">
    <div class="form-group">
    <label for="releaseDate" class="control-label">Release Date: </label>
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

<script type="text/ng-template" id="addActorModal">
    <div class="modal-header">
    <button type="button" class="close" ng-click="cancel();" aria-hidden="true">&times;</button>
    <h4 class="modal-title">Add an actor</h4>
    </div>
    <div class="modal-body">
    <div class="modal-body">
        <form name="actorForm" class="my-form" novalidate>
                    

                    <div class="row">
                        <div class="col-md-6">

                            <div class="form-group">
                                <label for="firstName" class="control-label">First Name</label>
                                <input ng-model="actor.firstName" type="text" class="form-control" id="firstName" required>
                            </div>

                        </div>
                        <div class="col-md-6">

                            <div class="form-group">
                                <label for="lastName" class="control-label">Last Name</label>
                                <input ng-model="actor.lastName" type="text" class="form-control" id="lastName" required>
                            </div>

                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="gender" class="control-label">Gender</label>
                                <select id="gender" class="form-control" ng-model="actor.gender" required>
                                    <option>Male</option>
                                    <option>Female</option>
                                </select>
                            </div>
                        </div>
                
                        <!--div class="col-md-6">
                            <div class="form-group">
                                <label for="actorPhoto" class="control-label">Photo</label>
                                <input ng-model="actor.photo" fileread="photo" type="file" class="form-control" id="actorPhoto">
                            </div>
                        </div-->
                    </div>
            
                    <div class="row">
                        <div class="col-md-6">
                        <label for="birth" class="control-label">Birth Date</label>
                        <input id="birth" class="form-control" type="date" ng-model="actor.birthDate" required/>
                            
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
<script src="assets/js/lib/ripples.min.js"></script>
<script src="assets/js/lib/material.min.js"></script>

<!--angular - boostrap "interface"-->
<script src="assets/js/lib/ui-bootstrap-tpls-0.14.0.min.js"></script>

<!--my own stuff-->
<script src="assets/js/app/moduleRegistration.js"></script>
<script src="assets/js/app/services/movieService.js"></script>
<script src="assets/js/app/services/actorService.js"></script>
<script src="assets/js/app/controllers/homeController.js"></script>
<script src="assets/js/app/controllers/movieController.js"></script>
<script src="assets/js/app/controllers/navbarController.js"></script>
<script src="assets/js/app/app.js"></script>
