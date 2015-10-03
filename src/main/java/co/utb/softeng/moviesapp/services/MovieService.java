/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.utb.softeng.moviesapp.services;

import co.utb.softeng.moviesapp.entities.Movie;
import java.util.List;

/**
 *
 * @author William
 */
public interface MovieService {
    
    public List<Movie> getAllMovies();
    public Movie getMovieById(Long id);
    public List<Movie> getMovieByName(String name);
    public List<Movie> getMovieByActorId(Long actorId);
    public List<Movie> getMovieByActorName(String actorName);
    public void saveOrUpdateMovie(Movie movie);
    public void deleteMovie(Long id);
    
    
}
