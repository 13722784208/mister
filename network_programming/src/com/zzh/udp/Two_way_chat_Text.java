package com.zzh.udp;

public class Two_way_chat_Text {
    public static void main(String[] args) throws Exception {
        Thread thread = new Thread(new Two_way_chat(8888,8808));
        thread.start();
        new Thread(new Two_way_chatReceive(7777)).start();
    }
        }
