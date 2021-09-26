package edu.concurso.view;

import edu.concurso.controller.QuestionsController;

import java.util.Scanner;

public class GameView {

    Scanner input = new Scanner(System.in);


    public void welcomeGame(){
        System.out.println("CONCURSO DE PREGUNTAS Y PALABRAS");
        System.out.println("*************************************");
        System.out.println("Bienvenido al juego Gana Con Toda" +
                "\n_________________________________");
        PlayerView playerView = new PlayerView();
        playerView.receiveDataUser();
    }

    public void startGame(String userName, int userIdentification){

        QuestionsController questionsController = new QuestionsController();

        System.out.println("--------------------------------" +
                "\nJugador "+userName+" ¿Desea iniciar el juego?" +
                "\n1. Aceptar\n2. Salir");
         int answerUser = input.nextInt();
        if (answerUser == 1) {
            System.out.println("_________________________________");
            questionsController.showQuestionsByCategory(userName,userIdentification);
        }else if(answerUser == 2){
            System.out.println("Vuelve Pronto "+userName+"!\nGAME OVER!");
        }else{
            validateAnswer(answerUser, userName);
            System.out.println("_________________________________");
        }
    }

    private void validateAnswer(int answerUser, String userName){

        while(optionInvalid(answerUser)){

            System.out.println("Opción Invalida!");
            System.out.println("\nJugador "+userName+" ¿Desea iniciar el juego?" +
                    "\n1. Aceptar\n2. Salir");
            answerUser = input.nextInt();

        }

    }

    private boolean optionInvalid(int answerUser){
        return answerUser != 1 && answerUser != 2;
    }


}
