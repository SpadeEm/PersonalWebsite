package com.java.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.java.dao.NoteDao;
import com.java.entity.Note;
import com.java.util.FreemarkerUtil;

@Controller
@RequestMapping("/note")
public class NoteController {
	@Autowired
	private NoteDao noteDao;
	//获取所有笔记并分页
	@RequestMapping(value="/getAllNotes")
	public String getAllNotes(@RequestParam(value="pn",defaultValue="1")Integer pn,Model model){
		PageHelper.startPage(pn,5);
		List<Note> listNotes = noteDao.getAllNotes();
    	PageInfo page = new PageInfo(listNotes,5);
    	model.addAttribute("PageInfo", page);
		return "blog";
	}
	//添加笔记
	@RequestMapping(value="/addNotes", method={RequestMethod.POST})
	@ResponseBody
	public Map<String,Object> addNotes(@RequestParam("noteTitle")String noteTitle,@RequestParam("noteContent")String noteContent){
		Map<String,Object> map = new HashMap<String,Object>();
		Calendar c = Calendar.getInstance();
		if(noteTitle == null || noteTitle.length() <= 0){
			map.put("result", false);
			return map;
		}
		noteDao.addNotes(noteTitle, noteContent,c.getTime());
		map.put("result", true);
		return map;
	}
	//修改笔记
	@RequestMapping(value="/editNoteById",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> editNoteById(@RequestParam("noteId")String noteId,@RequestParam("noteTitle")String noteTitle,
			@RequestParam("noteContent")String noteContent){
		Integer id = Integer.parseInt(noteId.substring(1));
		Map<String,Object> map = new HashMap<String,Object>();
		noteDao.updateNoteById(id, noteTitle, noteContent);
		map.put("result", true);
		return map;
	}
	//通过noteId查看笔记
	@RequestMapping(value="/getNoteById",method={RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public Map<String,Object> getNoteById(@RequestParam("noteId")String noteId,Model model){
		Map<String,Object> map = new HashMap<String,Object>();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Integer id = Integer.parseInt(noteId.substring(1));
		Note note = noteDao.getNoteById(id);
		String dateString = formatter.format(note.getCreateTime());
    	map.put("createTime", dateString);
		map.put("result", note);
		return map;
	}
	//删除笔记
	@RequestMapping(value="/deleteNoteById",method={RequestMethod.POST})
	@ResponseBody
	public Map<String,Object> deleteNoteById(@RequestParam("noteId")String noteId){
		Map<String,Object> map = new HashMap<String,Object>();
		Integer id = Integer.parseInt(noteId.substring(1));
		noteDao.deleteNoteById(id);
		map.put("result", true);
		return map;
	}
	
	//导出笔记
	@RequestMapping(value="/downNote")
    public String downResumeDoc(@RequestParam("noteId")Integer noteId,@RequestParam("noteContent")String noteContent,
    		HttpServletRequest request,HttpServletResponse response) 
            throws IOException{
        request.setCharacterEncoding("utf-8");
        Map<String,Object> map = new HashMap<String,Object>();
//        Integer id = Integer.parseInt(noteId.substring(1));
        Note note = noteDao.getNoteById(noteId);
        //给map填充数据
        String str = noteContent;
        if(str.contains("<")||str.contains(">")||str.contains("&")){  
            str = str.replaceAll("&", "&amp;");  
            str = str.replaceAll("<", "&lt;");  
            str = str.replaceAll(">", "&gt;");  
            str = str.replace("'", "&apos;");//替换单引号  
            str = str.replace("\"", "&quot;"); // 替换双引号  
            str = str.replace("\t", "&nbsp;&nbsp;");// 替换跳格  
            str = str.replace(" ", "&nbsp;");// 替换空格  
      }  
        map.put("title", note.getNoteTitle());
        map.put("content", noteContent);

        //提示：在调用工具类生成Word文档之前应当检查所有字段是否完整
        //否则Freemarker的模板殷勤在处理时可能会因为找不到值而报错，这里暂时忽略这个步骤
        File file = null;
        InputStream fin = null;
        ServletOutputStream out = null;

        try{
            //调用工具类WordGenerator的createDoc方法生成Word文档
            file = FreemarkerUtil.createDoc(map, "note");
            fin = new FileInputStream(file);

            response.setCharacterEncoding("utf-8");
            response.setContentType("application/msword");
            response.addHeader("Content-Disposition", "attachment;filename=note.doc");

            out = response.getOutputStream();
            byte[] buffer = new byte[1024];//缓冲区
            int bytesToRead = -1;
            // 通过循环将读入的Word文件的内容输出到浏览器中  
            while((bytesToRead = fin.read(buffer)) != -1) {  
                out.write(buffer, 0, bytesToRead);
            }

        }catch(Exception ex){
            ex.printStackTrace();
        }finally{
            if(fin != null){
            	fin.close();
            }
            if(out != null){
            	out.close();
            } 
            if(file != null){
            	file.delete();// 删除临时文件  
            }
        }
        return null;
    }
}
