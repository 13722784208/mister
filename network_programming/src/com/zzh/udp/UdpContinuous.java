package com.zzh.udp;


import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetSocketAddress;

public class UdpContinuous {
    public static void main(String[] args) throws Exception {
        DatagramSocket dgs=new DatagramSocket(8888);
        BufferedReader bais;
        bais = new BufferedReader(new InputStreamReader(System.in));
       while(true){
           String s = bais.readLine ();
           byte[] data=s.getBytes();
           DatagramPacket dgp=new DatagramPacket(data,0,data.length,new InetSocketAddress("localhost",9999));
           dgs.send(dgp);
           if (s.equals("byb")){
             break;
           }
       }
        dgs.close();
    }
}
