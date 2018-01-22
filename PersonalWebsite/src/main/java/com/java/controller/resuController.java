package com.java.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/resu")
public class resuController {
	
	@RequestMapping(value="/sendMail")
	public void sendMail(){
		
	}
	
	@RequestMapping(value="/downFile")
	public void downFile(HttpServletRequest request,HttpServletResponse response){
		//windows路径
		File file = new File("D:/personal/resume.docx");
		//Linux路径
		/*File file = new File("/home/personal/resume.docx");*/
		response.setCharacterEncoding("utf-8");
	    response.setContentType("multipart/form-data");
	    response.setHeader("Content-Disposition", "attachment;fileName=resume.docx");
	    try {
	    	FileInputStream in = new FileInputStream(file);
			OutputStream out = response.getOutputStream();
			//创建缓冲区
	        byte buffer[] = new byte[1024];
	        int len = 0;
	         //循环将输入流中的内容读取到缓冲区当中
	        while((len=in.read(buffer))>0){
	             //输出缓冲区的内容到浏览器，实现文件下载
	            out.write(buffer, 0, len);
	        }
	        //关闭文件输入流
	        in.close();
	        //关闭输出流
	        out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	    
	}
}
