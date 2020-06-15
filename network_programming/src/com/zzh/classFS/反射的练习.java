package com.zzh.classFS;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class 反射的练习 {
    public static void main(String[] args) throws Exception {
        Class<?> aClass = Class.forName("com.zzh.classFS.Entity");
        String name = aClass.getName();
        Field[] declaredFields = aClass.getDeclaredFields();
        System.out.println(declaredFields[0].getName());
        Method getAge = aClass.getDeclaredMethod("getAge");
        Entity entity = (Entity) aClass.getConstructor().newInstance();
        getAge.invoke(entity);
        getAge.setAccessible(true);
        Constructor<?> constructor = aClass.getConstructor();
    }
}
