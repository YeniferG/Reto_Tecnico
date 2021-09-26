package edu.concurso.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Entity
@Table
public class Jugador implements Serializable{

    @Id
    @Column
    private int idJugador;
    @Column
    private String nombre;
    @Column
    private int identificacion;
    @Column
    private int premioAcumulado;
    @Column
    private String estadoJuego;
    @Column(name = "fecha_JuegoGanado")
    private Date fechaJuegoGanado;

    public Jugador() {
    }

    public Jugador(int idJugador, String nombre, int identificacion, int premioAcumulado, String estadoJuego, Date fechaJuegoGanado) {
        this.idJugador = idJugador;
        this.nombre = nombre;
        this.identificacion = identificacion;
        this.premioAcumulado = premioAcumulado;
        this.estadoJuego = estadoJuego;
        this.fechaJuegoGanado = fechaJuegoGanado;
    }

    public List<Jugador> jugadores(){

        return jugadores();
    }

    public int getIdJugador() {
        return idJugador;
    }

    public void setIdJugador(int idJugador) {
        this.idJugador = idJugador;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getIdentificacion() {
        return identificacion;
    }

    public void setIdentificacion(int identificacion) {
        this.identificacion = identificacion;
    }

    public int getPremioAcumulado() {
        return premioAcumulado;
    }

    public void setPremioAcumulado(int premioAcumulado) {
        this.premioAcumulado = premioAcumulado;
    }

    public String getEstadoJuego() {
        return estadoJuego;
    }

    public void setEstadoJuego(String estadoJuego) {
        this.estadoJuego = estadoJuego;
    }

    public Date getFechaJuegoGanado() {
        return fechaJuegoGanado;
    }

    public void setFechaJuegoGanado(Date fechaJuegoGanado) {
        this.fechaJuegoGanado = fechaJuegoGanado;
    }

    @Override
    public String toString() {
        return "Jugador{" +
                "idJugador=" + idJugador +
                ", nombre='" + nombre + '\'' +
                ", identificacion=" + identificacion +
                ", premioAcumulado=" + premioAcumulado +
                ", estadoJuego='" + estadoJuego + '\'' +
                ", fechaJuegoGanado=" + fechaJuegoGanado +
                '}';
    }
}
