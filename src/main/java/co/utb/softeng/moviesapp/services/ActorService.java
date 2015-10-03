/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.utb.softeng.moviesapp.services;

import co.utb.softeng.moviesapp.entities.Actor;
import java.util.List;

/**
 *
 * @author William
 */
public interface ActorService {
    
    public List<Actor> getAllActors();
    public Actor getActorById(Long id);
    public List<Actor> getActorByName(String name);
    public List<Actor> getActorByMovieName(String movieName);
    public void saveOrUpdateActor(Actor actor);
    public void deleteActor(Long id);
    
    
}
