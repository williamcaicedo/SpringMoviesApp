/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.utb.softeng.moviesapp.dao;

import co.utb.softeng.moviesapp.entities.Actor;
import java.util.List;

/**
 *
 * @author William
 */
public interface ActorDAO {
    
    public List<Actor> getAllActors(boolean includeMovies);
    public Actor getById(Long id);
    public List<Actor> getByName(String name);
    public List<Actor> getByMovieId(Long movieId);
    public List<Actor> getByMovieName(String movieName);
    public void saveOrUpdate(Actor actor);
    public void delete(Long id);
    
}
