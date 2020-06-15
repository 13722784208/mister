package com.zzh.udp;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetSocketAddress;

public class Two_way_chat extends Thread {
    DatagramSocket dgs;
    private int sport;
    private int gport;
    BufferedReader bais;
    DatagramPacket dgp;
    public Two_way_chat(int sport,int gport) throws Exception {
        this.sport=sport;
        this.gport=gport;
        dgs=new DatagramSocket(sport);
        bais = new BufferedReader(new InputStreamReader(System.in));
    }
    @Override
    public void run() {
        while(true){
            String s = null;
            try {
                s = bais.readLine ();
                byte[] data=s.getBytes();
                dgp=new DatagramPacket(data,0,data.length,new InetSocketAddress("localhost",gport));
                dgs.send(dgp);
            } catch (IOException e) {
                e.printStackTrace();
            }
            if (s.equals("byb")){
                break;
            }
        }
        dgs.close();
        super.run();
    }
}
