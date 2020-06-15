package com.zzh.tcp;

import java.io.*;
import java.net.Socket;

public class haha {
    public haha() {
    }

    public static void main(String[] args) throws Exception {
        System.out.println("-----Client-----");
        Socket client = new Socket("localhost", 8888);
        BufferedReader console = new BufferedReader(new InputStreamReader(System.in));
        DataOutputStream dos = new DataOutputStream(client.getOutputStream());
        DataInputStream dis = new DataInputStream(client.getInputStream());
        boolean isRunning = true;

        while(isRunning) {
            String msg = console.readLine();
            dos.writeUTF(msg);
            dos.flush();
            msg = dis.readUTF();
            System.out.println(msg);
        }

        dos.close();
        dis.close();
        client.close();
    }
}
