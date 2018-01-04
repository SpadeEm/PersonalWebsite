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
	
	@RequestMapping(value="/getAllNotes")
	public String getAllNotes(@RequestParam(value="pn",defaultValue="1")Integer pn,Model model){
		PageHelper.startPage(pn,5);
		List<Note> listNotes = noteDao.getAllNotes();
    	PageInfo page = new PageInfo(listNotes,5);
    	model.addAttribute("PageInfo", page);
		return "forward:/blog.jsp";
	}
	
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
}
