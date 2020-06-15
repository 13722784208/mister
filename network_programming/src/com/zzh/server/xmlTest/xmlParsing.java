package com.zzh.server.xmlTest;

import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

public class xmlParsing {
    public static void main(String[] args) throws Exception {
        /*找到我们的sax工厂*/
        SAXParserFactory sax = SAXParserFactory.newInstance();
        SAXParser parser = sax.newSAXParser();
        PseronHandler hand = new PseronHandler();
        parser.parse(Thread.currentThread().getContextClassLoader().getResourceAsStream("com/zzh/server/xmlTest/web.xml"),hand);
        /*创建一个新类讲两个集合以map的形式带上   key 名  value 类   等在通过反射将类加载进来进行走*/
        MapUtile mapUtile = new MapUtile(hand.getEntitys(), hand.getMappings());
        String red = mapUtile.getClz("/g");
        System.out.println(red);
        Class aClass = Class.forName(red);
        Object o = aClass.getConstructor().newInstance();

    }
}
