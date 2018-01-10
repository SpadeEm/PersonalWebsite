package com.java.controller;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public Map<String,Object> editNoteById(@RequestParam("noteId")Integer noteId,@RequestParam("noteTitle")String noteTitle,
			@RequestParam("noteContent")String noteContent){
		Map<String,Object> map = new HashMap<String,Object>();
		noteDao.updateNoteById(noteId, noteTitle, noteContent);
		map.put("result", true);
		return map;
	}
	//通过noteId查看笔记
	@RequestMapping(value="/getNoteById",method={RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public Map<String,Object> getNoteById(@RequestParam("noteId")String noteId,Model model){
		Map<String,Object> map = new HashMap<String,Object>();
		String strId = noteId.substring(1);
		Integer id = Integer.parseInt(strId);
		Note note = noteDao.getNoteById(id);
		map.put("result", note);
		return map;
	}
	
	@RequestMapping(value="/deleteNoteById",method={RequestMethod.POST,RequestMethod.GET})
	@ResponseBody
	public String deleteNoteById(@RequestParam("noteId")Integer noteId){
		noteDao.deleteNoteById(noteId);
		return null;
	}
}
