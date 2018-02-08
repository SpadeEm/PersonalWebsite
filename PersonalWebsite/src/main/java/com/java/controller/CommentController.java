package com.java.controller;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.dao.CommentDao;
import com.java.entity.Comment;

@Controller
@RequestMapping("/comment")
public class CommentController {
	@Autowired
	private CommentDao commentDao;
	
	@RequestMapping(value="/showCommentByNote", method={RequestMethod.POST})
	@ResponseBody
	public Map<String,Object> showCommentByNote(@RequestParam("noteId") String noteId){
		Map<String,Object> map = new HashMap<String,Object>();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Integer id = Integer.parseInt(noteId.substring(1));
		List<Comment> list = commentDao.getCommentByNoteId(id);
		map.put("result", list);
		return map;
	}
	
	@RequestMapping("/addComment")
	public void addComment(){
		
	}
}
