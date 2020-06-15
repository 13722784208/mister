package com.zzh.server.xmlTest;

import java.util.HashSet;
import java.util.Set;

public class Mapping {
    private String name;
    private Set<String> log;

    public Mapping() {
        this.log=new HashSet<>();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<String> getLog() {
        return log;
    }

    public void setLog(Set<String> log) {
        this.log = log;
    }


    public void add(String s){
        log.add(s);
    }
    @Override
    public String toString() {
        return "Mapping{" +
                "name='" + name + '\'' +
                ", log=" + log +
                '}';
    }
}
