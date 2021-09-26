package edu.concurso.view;

import java.util.Scanner;

public class PlayerView {

    Scanner input = new Scanner(System.in);

    public void receiveDataUser(){

        System.out.println("Diligencia la siguiente información para iniciar: \nNombre de Usuario: ");
        String userName = input.nextLine();
        System.out.println("Identificación: ");
        int userIdentification = input.nextInt();
        GameView gameView = new GameView();
        gameView.startGame(userName,userIdentification);
    }



}
