package com.zzh.udp;


import java.net.DatagramPacket;
import java.net.DatagramSocket;

/**
 * udp接收端的
 */
public class UdpReceive {
    public static void main(String[] args) throws Exception {
        System.out.println("接收中*************");
        /*创建socket套嵌字*/
        DatagramSocket dgs = new DatagramSocket(9999);
        byte [] i=new byte[1024*60];
        /*使用包进行数据传递*/
        DatagramPacket dgp = new DatagramPacket(i, 0, i.length);
        dgs.receive(dgp);
        byte [] arr=dgp.getData();
        int len=dgp.getLength();
        System.out.println(new String(arr,0,len));
        dgs.close();
    }
}
