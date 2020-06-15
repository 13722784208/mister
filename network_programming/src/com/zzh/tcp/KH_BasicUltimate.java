package com.zzh.tcp;

import java.io.*;
import java.net.Socket;

public class KH_BasicUltimate{
    Socket host;
    BufferedReader br;
    BufferedReader input;
    BufferedWriter out;
    public KH_BasicUltimate(Socket host) throws Exception {
        this.host=host;
    }
public void close() throws IOException {
    br.close();
    out.close();
    input.close();
}
   public void kehu() throws Exception {
       input = new BufferedReader(new InputStreamReader(host.getInputStream()));
       out = new BufferedWriter(new OutputStreamWriter(host.getOutputStream()));
       br=new BufferedReader(new InputStreamReader(System.in));
        while (true) {
            try {
                out.write(br.readLine()+"\n");
                out.flush();
                String s = input.readLine();
                System.out.println(s);
                if (s.equals("byb")){
                    break;
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
