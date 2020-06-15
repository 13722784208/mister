package com.zzh.tcp;

import org.omg.Messaging.SyncScopeHelper;

import java.io.*;
import java.net.Socket;

/**
 * 这是针对我们的客户端进行的交流。后期会让他与别的用户进行一个友好的交流
 * 目前呢只让他与服务器进行友好交流互通3.0版本    顺便带上Git的使用  看一下
 *
 */
public class Kh_BasicNcies {
    public static void main(String[] args) throws Exception {
        Socket host = new Socket("localhost", 8888);
        BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
        BufferedReader input = new BufferedReader(new InputStreamReader(host.getInputStream()));
        BufferedWriter out = new BufferedWriter(new OutputStreamWriter(host.getOutputStream()));
        while (true) {
            out.write(br.readLine()+"\n");
            out.flush();
            String s = input.readLine();
            System.out.println(s);
            if (s.equals("byb")){
                break;
            }
        }
        br.close();
        out.close();
        input.close();
        host.close();
    }
}
