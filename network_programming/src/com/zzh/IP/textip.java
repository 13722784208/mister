package com.zzh.IP;

import org.junit.Test;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.*;

public class textip {
    public static void main(String[] args) throws Exception {
        /*获取本地的地址*/
        InetAddress localHost = InetAddress.getLocalHost();
        /*获取本地的ip*/
        System.out.println(localHost.getHostAddress());
        /*获取本地计算机名*/
        System.out.println(localHost.getHostName());


        InetAddress byName = InetAddress.getByName("www.baidu.com");
        System.out.println(byName.getHostAddress());
        System.out.println(byName.getHostName());

/*测试端口*/
        InetSocketAddress isa = new InetSocketAddress("127.0.0.1",8080);
        InetAddress address = isa.getAddress();
        System.out.println(address);
        System.out.println(isa.getPort());

    }
    @Test

    /*爬虫设置*/
    public void  gouzi() throws Exception {
        URL rl = new URL("https://www.baidu.com/");
        URLConnection ur = rl.openConnection();
        InputStream input = rl.openStream();
        BufferedReader buff = new BufferedReader(new InputStreamReader( input,"UTF-8"));
        int i=0;
        StringBuffer s=new StringBuffer();
        while (null!=buff.readLine()){
            s.append(buff.readLine());

        }
        System.out.println(s.toString());
    }
}
