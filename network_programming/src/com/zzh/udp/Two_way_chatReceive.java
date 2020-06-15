package com.zzh.udp;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.SocketException;

public class Two_way_chatReceive extends Thread {
    private DatagramPacket dgp;
    private DatagramSocket dgs;
    private String s;
    private byte[] date;
    private int sport;
    public Two_way_chatReceive(int sport) {
        try {
            dgs = new DatagramSocket(sport);
            date = new byte[1024 * 60];
        } catch (SocketException e) {
            e.printStackTrace();
        }

    }
    @Override
    public void run() {
        while(true){
            dgp = new DatagramPacket(date, 0, date.length);
            try {
                dgs.receive(dgp);
                byte[] data = dgp.getData();
                int length = dgp.getLength();
                s = new String(data, 0, length);
                System.out.println(s);
            } catch (IOException e) {
                e.printStackTrace();
            }
            if(s.equals("byb")){
                break;
            }
        }
        dgs.close();
        super.run();
    }
}
