package com.zzh.tcp;

import org.omg.Messaging.SyncScopeHelper;

import java.io.*;
import java.net.ServerSocket;
import java.net.Socket;

public class BasicNice {
    public static void main(String[] args) throws Exception {
        BufferedReader bis;
        Socket accept ;
        ServerSocket serverSocket = new ServerSocket(9999);
        accept = serverSocket.accept();
        bis = new BufferedReader(new InputStreamReader(accept.getInputStream()));
        while (true){
            String s = bis.readLine();
            System.out.println(s);
            if(s.equals("byb")){
                break;
            }
        }
        bis.close();
        accept.close();
        serverSocket.close();

    }
}
