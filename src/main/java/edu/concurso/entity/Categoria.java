package edu.concurso.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "categorias")
public class Categoria implements Serializable {

    @Id
    @Column(name = "idCategorias")
    private int idCategoria;
    @Column
    private String nombre;
    @Column
    private int premio;

    @OneToMany(mappedBy = "categoria", cascade = CascadeType.ALL)
    private List<Pregunta> preguntas = new ArrayList<>();

    public Categoria(){

    }

    public Categoria(String nombre, int premio) {
        this.nombre = nombre;
        this.premio = premio;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getPremio() {
        return premio;
    }

    public void setPremio(int premio) {
        this.premio = premio;
    }

    public List<Pregunta> getPreguntas() {
        return preguntas;
    }

    public void setPreguntas(List<Pregunta> preguntas) {
        this.preguntas = preguntas;
    }

    @Override
    public String toString() {
        return "Categoria{" +
                "nombre='" + nombre + '\'' +
                ", premio=" + premio +
                '}';
    }
}
