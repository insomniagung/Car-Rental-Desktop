package database;

import java.net.ServerSocket;
import java.net.Socket;
import javax.swing.JOptionPane;

public class serverdb {
    static ServerSocket server;
    static Socket client;
    static boolean signal = false;

    public serverdb (){
        try {
         System.out.println("Loading n Waitting");
         JOptionPane.showMessageDialog(null,"Server Diaktifkan");
         server = new ServerSocket(parameter.PORT);
         signal = true;
        } 
        catch (Exception ex) {
         signal = false;
        }
        
        if (signal == true) {
         new terimaKoneksi("RunServer");
        }
    }
  

    public static class terimaKoneksi implements Runnable {
    Thread t;
     terimaKoneksi(String imeNiti) {
      t = new Thread(this, imeNiti);
      t.start();
     }
    
    public void run() {
     while (true) {
      try {
       try {
        client = server.accept();
        System.out.println("Akses Client.....");
       } 
       catch (Exception ex) {
        break;
       }
      } 
      catch (Exception e) {
       e.printStackTrace();
      }
     }
    }
    }    
}