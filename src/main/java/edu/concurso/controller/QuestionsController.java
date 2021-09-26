package edu.concurso.controller;

import edu.concurso.entity.Categoria;
import edu.concurso.entity.Conexion;
import edu.concurso.entity.Pregunta;
import edu.concurso.entity.Respuesta;

import java.util.List;
import java.util.Scanner;

public class QuestionsController {

    Scanner input = new Scanner(System.in);

    public void showQuestionsByCategory(String userName, int userIdentification){

        Conexion con = new Conexion();
        int prizePool = 0;
        PlayerController playerController = new PlayerController();
        String status = "Ganado";

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
                System.out.println(".....................................................................");
                System.out.println("¿Desea Continuar el Juego?\n1. Aceptar\n2. Salir");
                int answerUser = input.nextInt();
                System.out.println(".....................................................................");
                if(answerUser == 2){
                    System.out.println("GAME OVER!\nGracias por participar vuelve pronto");
                    status = "Retiro Voluntario";
                    System.out.println(".....................................................................");
                    break;
                }
            }else if(respuestas.get(answerQuestion).isVerificacion() == '0'){
                prizePool=0;
                System.out.println("¡Respuesta Incorrecta! "+"Vuelve a intentarlo en otro momento\nTus premios obtenidos fueron: "+prizePool+" puntos");
                status = "Perdido";
                System.out.println(".....................................................................");
                break;
            }

        }
        System.out.println("*** Acabas de ganarte "+prizePool+" puntos ***");

        playerController.saveInformationPlayer(userName,userIdentification,prizePool,status);

    }

    private void showAnswers(List<Respuesta> respuestas){
        int opciones = 0;
        for(Respuesta answer: respuestas) {
            System.out.println("  "+opciones++ +". " + answer.getRespuesta());
        }
    }

}
