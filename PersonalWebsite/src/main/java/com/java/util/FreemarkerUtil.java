package com.java.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;

import freemarker.template.Configuration;
import freemarker.template.Template;

public class FreemarkerUtil {
		private static Configuration configuration = null;
	    private static Map<String,Template> allTemplate = null;

	    static{
	        configuration = new Configuration();
	        configuration.setDefaultEncoding("UTF-8");
	        configuration.setClassForTemplateLoading(FreemarkerUtil.class, "/com/java/templates");
//	        try {
//	            configuration.setDirectoryForTemplateLoading(new File("E:\\"));
//	        } catch (IOException e1) {      
//	            e1.printStackTrace();
//	        }
	        allTemplate = new HashMap<String,Template>();
	        try{
	            allTemplate.put("note", configuration.getTemplate("note.ftl"));
	        }catch(IOException e){
	            e.printStackTrace();
	            throw new RuntimeException(e);
	        }
	    }

	    private FreemarkerUtil(){
	    }

	    public static File createDoc(Map<String,Object> dataMap,String type){
	    	//windows路径
	        /*String name = "D:/personal/"+(int)(Math.random()*100000)+".doc";*/
	        //Linux路径
	        String name = "/home/personal/"+(int)(Math.random()*100000)+".doc";
	        File f = new File(name);
	        Template t = allTemplate.get(type);
	        try{
	            //这个地方不能使用FileWriter因为需要指定编码类型否则声场的word文档会因为有无法识别的编码而无法打开
	            Writer w = new OutputStreamWriter(new FileOutputStream(f),"utf-8");
	            t.process(dataMap,w);
	            w.close();
	        }catch(Exception e){
	            e.printStackTrace();
	            throw new RuntimeException(e);
	        }
	        return f;
	    }
}
