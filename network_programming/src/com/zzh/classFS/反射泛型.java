package com.zzh.classFS;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Map;

public class 反射泛型 {
    public static void main(String[] args) {
        try {
            input();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static void input() throws Exception {
        Class<?> clazz = Class.forName("com.zzh.classFS.Entity");
        /*gouzi(List<String> gouzi, Map<String,Integer> map*/
        Method gouzi = clazz.getDeclaredMethod("gouzi", List.class,Map.class);
        Type[] type = gouzi.getGenericParameterTypes();
        for (Type t:type){
            System.out.println(t);
            if (t instanceof ParameterizedType){
                Type[] actual = ((ParameterizedType) t).getActualTypeArguments();
                for (Type ty:actual){
                    System.out.println("参数类型"+ty);
                }
            }
        }
    }
}
