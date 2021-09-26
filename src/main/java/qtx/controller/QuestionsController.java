package qtx.controller;

import qtx.entity.Categoria;
import qtx.entity.Conexion;
import qtx.entity.Pregunta;
import qtx.entity.Respuesta;

import java.util.List;
import java.util.Scanner;

public class QuestionsController {

    Scanner input = new Scanner(System.in);

    public void showQuestionsByCategory(String userName, int userIdentification){

        Conexion con = new Conexion();
        int prizePool = 0;
        PlayerController playerController = new PlayerController();
        String estado = "Ganado";

        List<Categoria> categorias = con.conexion().createQuery("FROM Categoria").getResultList();
        for(Categoria category: categorias){
            Pregunta pregunta = category.getPreguntas().get((int)(Math.random()*4));
            System.out.println("* "+ pregunta.getPregunta());
            List<Respuesta> respuestas = pregunta.getRespuesta();
            showAnswers(respuestas);
            int answerQuestion = input.nextInt();
            if(respuestas.get(answerQuestion).isVerificacion() == '1'){
                prizePool += category.getPremio();
                System.out.println("¡Respuesta Correcta! *** Has Ganado "+category.getPremio()+" puntos"
                        +" *** Ahora tienes "+prizePool+" puntos");
                System.out.println("_________________________________");
                System.out.println("¿Desea Continuar el Juego?\n1. Aceptar\n2. Salir");
                int answerUser = input.nextInt();
                System.out.println("_________________________________");
                if(answerUser == 2){
                    System.out.println("GAME OVER!\nGracias por participar vuelve pronto");
                    estado = "Retiro Voluntario";
                    System.out.println("_________________________________");
                    break;
                }
            }else if(respuestas.get(answerQuestion).isVerificacion() == '0'){
                prizePool=0;
                System.out.println("¡Respuesta Incorrecta! "+"Vuelve a intentarlo en otro momento\nTus premios obtenidos fueron: "+prizePool+" puntos");
                estado = "Perdido";
                System.out.println("_________________________________");
                break;
            }

        }
        System.out.println("Acabas de ganarte "+prizePool+" puntos.");

        playerController.saveInformationPlayer(userName,userIdentification,prizePool,estado);

    }

    private void showAnswers(List<Respuesta> respuestas){
        int opciones = 0;
        for(Respuesta answer: respuestas) {
            System.out.println("  "+opciones++ +". " + answer.getRespuesta());
        }
    }

}
