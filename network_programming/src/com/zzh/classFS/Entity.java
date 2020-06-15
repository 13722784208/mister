package com.zzh.classFS;

import java.util.List;
import java.util.Map;

public class Entity {
    private int age;
    String name;

    public Entity() {
    }

    public Entity(int age, String name) {
        this.age = age;
        this.name = name;
    }

    public int getAge() {
        System.out.println("888888888888");
        return age;
    }

    public void setAge(int age) {
        System.out.println("111111");
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    public void gouzi(List<String> gouzi, Map<String,Integer> map){
        System.out.println(123);
    }
}
