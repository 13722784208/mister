package com.zzh.server.xmlTest;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

import java.util.ArrayList;
import java.util.List;

public class PseronHandler extends DefaultHandler {
    private List<Entity> entitys;
    private Entity entity;
    private List<Mapping> mappings;
    private Mapping mapping;
    private String s;
    private boolean ismapping=false;
    @Override
    public void startDocument() throws SAXException {
        super.startDocument();
        entitys=new ArrayList<>();
        mappings=new ArrayList<>();
    }

    @Override
    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
        super.startElement(uri, localName, qName, attributes);
        if (qName!=null){
            this.s=qName;
            if (s.equals("servlet")){
                ismapping=false;
               this.entity=new Entity();
            }else if(s.equals("servlet-mapping")){
                ismapping=true;
                this.mapping=new Mapping();
            }
        }
    }

    @Override
    public void characters(char[] ch, int start, int length) throws SAXException {
        super.characters(ch, start, length);
        String name=new String(ch,start,length).trim();
        if (s.equals("servlet-name")){
            if(ismapping==true){
                if (name.length()>0){
                    mapping.setName(name);
                }
            }else if (ismapping==false){
               if (name.length()>0){
                   entity.setName(name);
               }
            }
        }else if(s.equals("servlet-class")&&name.length()>0){
            entity.setClz(name);
        }else if(s.equals("url-pattern")&&name.length()>0){
            mapping.add(name);
        }
    }

    @Override
    public void endElement(String uri, String localName, String qName) throws SAXException {
        super.endElement(uri, localName, qName);
        if (qName!=""&&qName.equals("servlet-mapping")) {
            mappings.add(mapping);
        }else if (qName!=""&&qName.equals("servlet")){
            entitys.add(entity);
        }
    }

    public List<Entity> getEntitys() {
        return entitys;
    }

    public List<Mapping> getMappings() {
        return mappings;
    }

    @Override
    public void endDocument() throws SAXException {
        super.endDocument();
    }
}
