/*
package com.zzh.tcp;

import java.io.*;
import java.net.ServerSocket;
import java.net.Socket;

*/
/**
 *
 * 这是经过改良后可以使双方都能够进行交流进行的开发3版本
 * Basic_Nices这是服务器端；
 *//*


public class Basic_Nices {
    private  ServerSocket socket;
    private  Socket accept ;
    private  BufferedReader br;
    private  BufferedWriter bufferw;
    private  BufferedReader reader;
    private  String s;
    public  Basic_Nices() throws Exception {
        socket = new ServerSocket(8888);
        accept = socket.accept();
        br = new BufferedReader(new InputStreamReader(accept.getInputStream()));
        bufferw = new BufferedWriter(new OutputStreamWriter(accept.getOutputStream()));
        reader=new BufferedReader(new InputStreamReader(System.in));
    }

    public static void main(String[] args) throws Exception {
        Basic_Nices bn = new Basic_Nices();
        bn.ThreadWhile();
        bn.close();
    }
    public  void ThreadWhile() throws Exception {
                 bufferw.write(reader.readLine() + "\n");
                 bufferw.flush();
                 String s = br.readLine();
                 System.out.println(s);
    }
    public  void close() {
        try {
            if(reader!=null){
                reader.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            if (bufferw!=null){bufferw.close();}
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            if (br!=null){br.close();}
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            if (accept!=null){accept.close();}
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            if (socket!=null){socket.close();}
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

*/
package com.zzh.tcp;

import javax.xml.bind.SchemaOutputResolver;
import java.io.*;
import java.net.ServerSocket;
import java.net.Socket;

/**
 *
 * 这是经过改良后可以使双方都能够进行交流进行的开发3版本
 * Basic_Nices这是服务器端；
 */

public class Basic_Nices {
    private  ServerSocket socket;
    private  Socket accept ;
    private  BufferedReader br;
    private  BufferedWriter bufferw;
    private  String s;
    public  Basic_Nices() throws Exception {
        socket = new ServerSocket(8888);
        accept = socket.accept();
        br = new BufferedReader(new InputStreamReader(accept.getInputStream()));
        bufferw = new BufferedWriter(new OutputStreamWriter(accept.getOutputStream()));
    }

    public static void main(String[] args) throws Exception {
        Basic_Nices bn = new Basic_Nices();
        bn.ThreadWhile();
        bn.close();
    }
    public  void ThreadWhile() throws Exception {
        while (true){
            String s = br.readLine();
            System.out.println(s);
            bufferw.write(s + "\n");
            bufferw.flush();
        }
    }
    public  void close() {
        try {
            if (bufferw!=null){bufferw.close();}
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            if (br!=null){br.close();}
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            if (accept!=null){accept.close();}
        } catch (IOException e) {
            e.printStackTrace();
        }
        try {
            if (socket!=null){socket.close();}
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

