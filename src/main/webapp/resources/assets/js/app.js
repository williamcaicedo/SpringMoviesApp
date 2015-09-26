/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$.ajax({
    type: 'GET',
    url: apiUrl + 'movie/'
}).done(function (response) {
    var html = '';
    _.each(response, function (movie) {

        html += "<div class='movie'>Name: " + movie.name + "<br/>";
        html += "Director: " + movie.director + "<br/>";
        html += "Genre: " + movie.genre + "</div>";

    });
    $('#moviesDiv').html(html);
});

$("#addMovieButton").click(function (e) {
    var movie = {
        name: $("#movieName").val(),
        director: $("#movieDirector").val(),
        genre: $("#movieGenre").val(),
        income: $("#movieIncome").val(),
        rating: $("#movieRating").val(),
        releaseDate: $("#movieReleaseDate").val()
    };
    $.ajax({
        type: 'PUT',
        contentType: "application/json",
        url: apiUrl + 'movie/',
        data: JSON.stringify(movie)
    }).done(function (response) {
        alert("Se creo la pel\xEDcula con nombre " + response.name);
    });
});