package com.zzh.server.xmlTest;

public class LoginServlet implements Servlet {
    public LoginServlet(){
        System.out.println("LoginServlet");
    }
    @Override
    public void test() {
        System.out.println("servletLoginServlet");
    }
}
