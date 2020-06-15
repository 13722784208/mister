package com.zzh.server;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import java.util.ArrayList;
import java.util.List;

public class XmlParsing {
    public static void main(String[] args) throws Exception {
        /*1.加载sax工厂*/
        SAXParserFactory sax = SAXParserFactory.newInstance();
        /*2.获取sax解析器*/
        SAXParser parser = sax.newSAXParser();
        /*3.书写解析过程*/
        Phandler hand = new Phandler();
        /*4.创建*/
        parser.parse(Thread.currentThread().getContextClassLoader().getResourceAsStream("com/zzh/server/p.xml"),hand);
        List<Person> persons = hand.getPersons();
        System.out.println(persons.size()+"******************");
        for (Person p:persons){
            System.out.println(p);
        }
    }
}
class Phandler extends DefaultHandler {
    public List<Person> getPersons() {
        return persons;
    }

    public Person getPerson() {
        return person;
    }

    private List<Person> persons;
    private Person person;
    private String tag;
    @Override
    public void startDocument() throws SAXException {
        this.persons = new ArrayList();
    }

    @Override
    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
        super.startElement(uri, localName, qName, attributes);
        if (qName != null) {
            this.tag = qName;
            if (this.tag.equals("person")) {
                this.person = new Person();
            }
        }
        System.out.println("开始元素--->"+qName+"--->");
    }

    @Override
    public void characters(char[] ch, int start, int length) throws SAXException {
        super.characters(ch, start, length);
           String gg= new String(ch, start, length).trim();
           if(gg.length()>0){
               if(tag.equals("name")){
                       System.out.println(gg);
                       person.setName(gg);
               }else if(tag.equals("age")){
                   System.out.println(gg);
                   person.setAge(Integer.valueOf(gg));
               }
           }


    }

    @Override
    public void endElement(String uri, String localName, String qName) throws SAXException {
        super.endElement(uri, localName, qName);
        if (qName!=""&&qName!=null&&qName.equals("person")){
            persons.add(person);
        }
    }

    @Override
    public void endDocument() throws SAXException {
        super.endDocument();
        System.out.println("结束文档");
    }
}
