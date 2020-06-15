package com.zzh.server;

/*反射练习*/
public class Reflection {
    public static void main(String[] args) throws Exception {
//        前两种的查找class文件是必须要加载进来的类才可以   第三种直接就可以去寻找
//        所以我们一般推荐的都是第三种方法
        /*第一种*/
        Class<Test> testClass = Test.class;
        /*第二种*/
        com.zzh.server.Test test = new com.zzh.server.Test();
        Class<? extends com.zzh.server.Test> aClass = test.getClass();
        /*第三种*/
        Class<?> acla = Class.forName("com.zzh.server.Test");
//        通过class类文件创建我们的对象 从jdk1.9开始我们不在推荐直接使用newinstance
//        而是通过构造器进行创建这样更加的安全。
        com.zzh.server.Test test1 = aClass.newInstance();
        Object o = acla.getConstructor().newInstance();
    }
}
class Test{
    public Test(){

    }
}
