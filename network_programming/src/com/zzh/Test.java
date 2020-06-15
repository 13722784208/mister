package com.zzh;

public class Test {
    public static void main(String[] args) {
        int i=1;
        int j=1;
        while(i<=10){
            while(j<=10){
                System.out.println(j);
                j++;
            }
            j=1;
            i++;
        }
    }
}
