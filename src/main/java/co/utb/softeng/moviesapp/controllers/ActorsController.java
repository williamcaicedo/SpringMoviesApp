/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.utb.softeng.moviesapp.controllers;

import co.utb.softeng.moviesapp.entities.Actor;
import co.utb.softeng.moviesapp.services.ActorService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
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
@RequestMapping("/actor")
public class ActorsController {
    
    @Autowired
    ActorService actorService;
    
    
    @RequestMapping(value={"/", ""}, method = RequestMethod.GET)
    public @ResponseBody List<Actor> getAllActors() {
        return actorService.getAllActors();
    }
    
    @RequestMapping(value={"/{id}"}, method = RequestMethod.GET)
    public @ResponseBody Actor getActorById(@PathVariable Long id) {
        Actor a = actorService.getActorById(id);
        return a;
    }
    
    @RequestMapping(value={"/", ""}, method = RequestMethod.PUT)
    public @ResponseBody Actor createActor(@RequestBody Actor actor) {
        actorService.saveOrUpdateActor(actor);
        return actor;
    }
    
    @RequestMapping(value={"/", ""}, method = RequestMethod.POST)
    public @ResponseBody Actor updateActor(@RequestBody Actor actor) {
        actorService.saveOrUpdateActor(actor);
        return actor;
    }
    
    
    
}
