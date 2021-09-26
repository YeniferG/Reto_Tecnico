package edu.concurso.controller;

import edu.concurso.entity.Jugador;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.Date;

public class PlayerController {

    public void saveInformationPlayer(String userName, int userIdentification, int prizePool, String estado){

        EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistencia");
        EntityManager em = emf.createEntityManager();

        Jugador player = new Jugador();
        player.setNombre(userName);
        player.setIdentificacion(userIdentification);
        player.setPremioAcumulado(prizePool);
        player.setEstadoJuego(estado);
        player.setFechaJuegoGanado(new Date());

        em.getTransaction().begin();
        em.persist(player);
        em.getTransaction().commit();
        em.close();

    }


}
