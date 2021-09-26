package qtx.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "preguntas")
public class Pregunta implements Serializable {

    @Id
    @Column(name = "idPreguntas")
    private int idPregunta;
    @Column
    private String pregunta;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "Categorias_idCategorias")
    private Categoria categoria;
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "pregunta")
    private List<Respuesta> respuesta = new ArrayList<>();


    public Pregunta(){

    }

    public Pregunta(int idPregunta, String pregunta, Categoria categoria) {
        this.idPregunta = idPregunta;
        this.pregunta = pregunta;
        this.categoria = categoria;
    }

    public int getIdPregunta() {
        return idPregunta;
    }

    public void setIdPregunta(int idPregunta) {
        this.idPregunta = idPregunta;
    }

    public String getPregunta() {
        return pregunta;
    }

    public void setPregunta(String pregunta) {
        this.pregunta = pregunta;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public List<Respuesta> getRespuesta() {
        return respuesta;
    }

    public void setRespuesta(List<Respuesta> respuesta) {
        this.respuesta = respuesta;
    }

    @Override
    public String toString() {
        return "Pregunta{" +
                "idPregunta=" + idPregunta +
                ", pregunta='" + pregunta + '\'' +
                ", categoria=" + categoria +
                '}';
    }
}
