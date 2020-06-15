package com.zzh.tcp;


import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.net.ServerSocket;
import java.net.Socket;

public class kh_basic {
    public static void main(String[] args) throws Exception {
        /*穿件客户端socket */
        Socket sock = new Socket("localhost", 8888);
        DataOutputStream dos = new DataOutputStream(sock.getOutputStream());
        dos.writeUTF("123123");
        dos.close();
        sock.close();
    }
}
