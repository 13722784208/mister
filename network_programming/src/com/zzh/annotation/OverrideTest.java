package com.zzh.annotation;

import java.util.Date;

import static java.lang.System.*;
/*测试我们Java内置的三个注解*/
public class OverrideTest  {
    public static void main(String[] args) {
        Date date = new Date();
        long time = date.getTime();
        int day = date.getDay();
        int month = date.getMonth()+1;
        int year = date.getYear();
        out.println("今天是周"+day+"   已过"+year+"天"+"  "+month+"月");
        la();
    }
    @Deprecated
    public static void la(){
        out.println("这是不推荐的");
    }
    @SuppressWarnings("all")
    public void gouzi(){
        out.println("  ");
    }

    @Override
    public String toString() {
        return super.toString();
    }
}
