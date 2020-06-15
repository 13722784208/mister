package com.zzh.tcp;

import org.omg.Messaging.SyncScopeHelper;

import java.io.*;
import java.net.Socket;
import java.sql.SQLOutput;
import java.util.Scanner;

public class Kh_BasicNcie {
    public static void main(String[] args) throws Exception {
        BufferedWriter buff;
        BufferedReader br;
        new Scanner(System.in);
        Socket socket = new Socket("localhost",9999);
        buff = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()));

        while (true){
            br = new BufferedReader(new InputStreamReader(System.in));
            String s = br.readLine();
            System.out.println(s);
            buff.write(s+"\r\n");
            buff.flush();
            if(s.equals("byb")){
                break;
            }
        }
        buff.close();
        socket.close();

    }
}
