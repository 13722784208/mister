package com.zzh.tcp;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.Socket;

public class kh_BasicLogin {
        public static void main(String[] args) throws Exception {
            Socket host = new Socket("localhost", 8888);
            BufferedReader br=new BufferedReader(new InputStreamReader(System.in));
            DataInputStream input = new DataInputStream(host.getInputStream());
            DataOutputStream out = new DataOutputStream(host.getOutputStream());
            out.writeUTF(br.readLine()+"\n");
            out.flush();
            String s = input.readUTF();
            System.out.println(s);
            br.close();
            out.close();
            input.close();
            host.close();
        }
    }

