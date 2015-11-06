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
        <link href="assets/css/ui-grid.min.css" rel="stylesheet">
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
                    <li class="active"><a href="#/admin">Admin</a></li>

                    <!--li class="dropdown">
                        <a href="" data-target="#" class="dropdown-toggle" data-toggle="dropdown">Actions <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="" ng-click="addMovie()">Add Movie</a></li>
                            <li class="divider"></li>
                            <li><a href="" ng-click="addActor()">Add Actor</a></li>
                        </ul>
                    </li-->
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
<script src="assets/js/lib/ui-grid.min.js"></script>

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
<script src="assets/js/app/controllers/adminController.js"></script>
<script src="assets/js/app/app.js"></script>
