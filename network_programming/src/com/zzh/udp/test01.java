package com.zzh.udp;

public class test01 {
    public static void main(String[] args) throws Exception {
      new Thread(new Two_way_chatReceive(8808)).start();
        Thread thread = new Thread(new Two_way_chat(6666,7777));
        thread.start();
    }
}
