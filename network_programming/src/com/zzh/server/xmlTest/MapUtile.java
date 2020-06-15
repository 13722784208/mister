package com.zzh.server.xmlTest;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MapUtile {
    List<Entity> entitys;
    List<Mapping> mappings;
    Map<String,String> entitysMap=new HashMap<>();
    Map<String,String> mappingsMap=new HashMap<>();
    public MapUtile(List<Entity> entitys, List<Mapping> mappings) {
        this.entitys = entitys;
        this.mappings = mappings;
        for (Entity e:entitys){
            entitysMap.put(e.getName(),e.getClz());
        }
        for (Mapping m:mappings){
            for (String s:m.getLog()){
                mappingsMap.put(s,m.getName());
            }
        }
    }

    public String getClz(String s){
        String s1 = mappingsMap.get(s);
        return entitysMap.get(s1);
    }
}
