/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.utb.softeng.moviesapp.services.impl;

import co.utb.softeng.moviesapp.dao.ActorDAO;
import co.utb.softeng.moviesapp.entities.Actor;
import co.utb.softeng.moviesapp.services.ActorService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author William
 */
@Service
@Transactional
public class ActorServiceImpl implements ActorService{
    
    @Autowired
    ActorDAO actorDAO;

    @Override
    public List<Actor> getAllActors() {
        return actorDAO.getAllActors(false);
    }

    @Override
    public Actor getActorById(Long id) {
        return actorDAO.getById(id);
    }

    @Override
    public List<Actor> getActorByName(String name) {
        return actorDAO.getByName(name);
    }

    @Override
    public List<Actor> getActorByMovieName(String movieName) {
        return actorDAO.getByMovieName(movieName);
    }

    @Override
    public void saveOrUpdateActor(Actor actor) {
        actorDAO.saveOrUpdate(actor);
    }

    @Override
    public void deleteActor(Long id) {
        actorDAO.delete(id);
    }
    
}
