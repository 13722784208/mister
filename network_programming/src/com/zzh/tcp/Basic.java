package com.zzh.tcp;

import org.omg.Messaging.SyncScopeHelper;

import java.io.*;
import java.net.ServerSocket;
import java.net.Socket;
/*
*
*
*
*
* */
public class Basic {
    public static void main(String[] args) throws Exception {
        /*服务器端使用serversocket进行接收在tcp中 ；*/
        ServerSocket ss = new ServerSocket(8888);
        /*.accept的方法为等待对方发送的方法*/
        Socket accept = ss.accept();
        /*使用流的方式读取进来  dateinputstream表示基本类型流  保持数据不变*/
        DataInputStream br = new DataInputStream(accept.getInputStream());
        String s = br.readUTF();
        System.out.println(s);
        br.close();
        accept.close();
        ss.close();
    }
}
