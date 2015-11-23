/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.utb.softeng.moviesapp.controllers;

import co.utb.softeng.moviesapp.entities.Actor;
import co.utb.softeng.moviesapp.entities.Movie;
import co.utb.softeng.moviesapp.services.MovieService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author William
 */

@Controller
@RequestMapping("/movie")
//@Secured("IS_AUTHENTICATED_ANONYMOUSLY")
public class MoviesController {
    
    @Autowired
    MovieService movieService;
    
    
    
    @RequestMapping(value={"/",""}, method = RequestMethod.GET)
    public @ResponseBody List<Movie> getAllMovies() {
        return movieService.getAllMovies();
    }
    
    @RequestMapping(value="/{id}", method = RequestMethod.GET)
    public @ResponseBody Movie getMovieById(@PathVariable Long id) {
        return movieService.getMovieById(id);
    }
    
    @RequestMapping(value = "/name/{name}", method = RequestMethod.GET)
    public @ResponseBody List<Movie> getMovieByName(@PathVariable String name) {
        return movieService.getMovieByName(name);
    }
    
    @RequestMapping(value = "/actor/{actorId}", method = RequestMethod.GET)
    public @ResponseBody List<Movie> getMovieByActorId(@PathVariable Long actorId) {
        return movieService.getMovieByActorId(actorId);
    }
    
    @RequestMapping(value = "/actor/name/{name}", method = RequestMethod.GET)
    public @ResponseBody List<Movie> getMovieByActorName(@PathVariable String name) {
        return movieService.getMovieByActorName(name);
    }
    
    
    @Secured("ROLE_ADMIN")
    @RequestMapping(value = "/", method = RequestMethod.PUT)
    public @ResponseBody Movie createMovie(@RequestBody Movie movie) {
        movieService.saveOrUpdateMovie(movie);
        return movie;
    }
    
    
    @Secured("ROLE_ADMIN")
    @RequestMapping(value = "/",method = RequestMethod.POST) 
    public @ResponseBody Movie updateMovie(@RequestBody Movie movie) {
        movieService.saveOrUpdateMovie(movie);
        return movie;          
    }
    
    @Secured("ROLE_ADMIN")
    @RequestMapping(value="/{id}/actors", method = RequestMethod.POST)
    public @ResponseBody Movie addActorsToMovie(@RequestBody List<Actor> actors, 
            @PathVariable Long movieId) {
        return movieService.addActorsToMovie(actors, movieId);
    }
    
    @Secured("ROLE_ADMIN")
    @RequestMapping(value = "/",method = RequestMethod.DELETE) 
    public @ResponseBody Movie deleteMovie(@RequestBody Movie movie) {
        movieService.deleteMovie(movie.getId());
        return movie;          
    }
    
    
    
}
