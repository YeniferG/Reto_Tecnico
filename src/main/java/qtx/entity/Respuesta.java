package qtx.entity;

import org.hibernate.type.descriptor.sql.TinyIntTypeDescriptor;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "respuestas")
public class Respuesta implements Serializable {

    @Id
    @Column(name = "idRespuestas")
    private int idRespuesta;
    @Column
    private String respuesta;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "Preguntas_idPreguntas")
    private Pregunta pregunta;
    @Column
    private char verificacion;

    public Respuesta() {
    }

    public Respuesta(int idRespuesta, String respuesta, Pregunta pregunta, char verificacion) {
        this.idRespuesta = idRespuesta;
        this.respuesta = respuesta;
        this.pregunta = pregunta;
        this.verificacion = verificacion;
    }

    public int getIdRespuesta() {
        return idRespuesta;
    }

    public void setIdRespuesta(int idRespuesta) {
        this.idRespuesta = idRespuesta;
    }

    public String getRespuesta() {
        return respuesta;
    }

    public void setRespuesta(String respuesta) {
        this.respuesta = respuesta;
    }

    public Pregunta getPregunta() {
        return pregunta;
    }

    public void setPregunta(Pregunta pregunta) {
        this.pregunta = pregunta;
    }

    public char isVerificacion() {
        return verificacion;
    }

    public void setVerificacion(char verificacion) {
        this.verificacion = verificacion;
    }

    @Override
    public String toString() {
        return "Respuesta{" +
                "idRespuesta=" + idRespuesta +
                ", respuesta='" + respuesta + '\'' +
                ", pregunta=" + pregunta +
                ", verificacion=" + verificacion +
                '}';
    }
}
