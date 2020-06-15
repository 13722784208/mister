/*package com.zzh.tcp;

import java.io.*;
import java.net.ServerSocket;
import java.net.Socket;

public class BasicUltimate extends Thread{
    ServerSocket socket;
        private Socket accept ;
        private BufferedReader br;
        private BufferedWriter bufferw;
        private  String s;
        public  BasicUltimate(ServerSocket socket) throws Exception {
          this.socket=socket;
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
        }


    @Override
    public void run() {
        try {
            accept = socket.accept();
            br = new BufferedReader(new InputStreamReader(accept.getInputStream()));
            bufferw = new BufferedWriter(new OutputStreamWriter(accept.getOutputStream()));
        } catch (IOException e) {
            e.printStackTrace();
        }
        while (true){
            try {

                s = br.readLine();
                System.out.println(s);
                bufferw.write(s + "\n");
                bufferw.flush();
            } catch (IOException e) {
                e.printStackTrace();
            }
            if(s.equals("byb")){
                break;
            }
    }
        super.run();
}


}*/
package com.zzh.tcp;

import java.io.*;
import java.net.ServerSocket;
import java.net.Socket;

public class BasicUltimate {
    public BasicUltimate() {
    }

    public static void main(String[] args) throws IOException {
        System.out.println("-----Server-----");
        ServerSocket server = new ServerSocket(8888);

        while(true) {
            Socket client = server.accept();
            System.out.println("一个客户端建立了连接");
            (new Thread(() -> {
                DataInputStream dis = null;
                DataOutputStream dos = null;

                try {
                    dis = new DataInputStream(client.getInputStream());
                    dos = new DataOutputStream(client.getOutputStream());
                } catch (IOException var10) {
                    var10.printStackTrace();
                }

                boolean isRunning = true;

                while(isRunning) {
                    try {
                        String msg = dis.readUTF();
                        dos.writeUTF(msg);
                        dos.flush();
                    } catch (IOException var9) {
                        isRunning = false;
                    }
                }

                try {
                    if (dos == null) {
                        dos.close();
                    }
                } catch (IOException var8) {
                    var8.printStackTrace();
                }

                try {
                    if (dis == null) {
                        dis.close();
                    }
                } catch (IOException var7) {
                    var7.printStackTrace();
                }

                try {
                    if (client == null) {
                        client.close();
                    }
                } catch (IOException var6) {
                    var6.printStackTrace();
                }

            })).start();
        }
    }
}