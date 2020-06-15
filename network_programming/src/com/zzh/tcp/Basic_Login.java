package com.zzh.tcp;

import org.omg.Messaging.SyncScopeHelper;

import java.io.*;
import java.net.ServerSocket;
import java.net.Socket;

public class Basic_Login {
    public static void main(String[] args) throws Exception {
        ServerSocket ss = new ServerSocket(8888);
        Socket accept = ss.accept();
        DataInputStream buff = new DataInputStream(accept.getInputStream());
        String s = buff.readUTF();
        System.out.println(s);
        DataOutputStream writer = new DataOutputStream(accept.getOutputStream());
        writer.writeUTF(s);
        writer.flush();
        writer.close();
        buff.close();
        accept.close();
        ss.close();
    }
}
