package com.zzh.udp;

import java.net.DatagramPacket;
import java.net.DatagramSocket;


public class UdpReceiveContinuous {

    public static void main(String[] args) throws Exception {
        DatagramPacket dgp;
        DatagramSocket dgs = new DatagramSocket(9999);
        byte [] date=new byte[1024*60];
       while(true){
           dgp = new DatagramPacket(date, 0, date.length);
           dgs.receive(dgp);
           byte[] data = dgp.getData();
           int length = dgp.getLength();
           String s = new String(data, 0, length);
           System.out.println(s);
           if(s.equals("byb")){
               break;
           }
       }
        dgs.close();
    }
}
