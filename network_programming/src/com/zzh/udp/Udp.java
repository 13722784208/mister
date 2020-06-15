package com.zzh.udp;

import java.net.*;

public class Udp {
    public static void main(String[] args) throws Exception {
        System.out.println("发送中********");
        DatagramSocket dgs=new DatagramSocket(8888);
        String s="这位是啥？";
        byte [] i=s.getBytes();
        DatagramPacket dgp=
                new DatagramPacket(i,0,i.length,
                        new InetSocketAddress("localhost",9999));
        dgs.send(dgp);
        dgs.close();
    }



}
