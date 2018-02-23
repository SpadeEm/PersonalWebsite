package com.java.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
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
	//显示评论
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
	//添加评论
	@RequestMapping(value="/addComment", method={RequestMethod.POST})
	@ResponseBody
	public Map<String,Object> addComment(@RequestParam("commentName")String commentName,
			@RequestParam("commentContent")String commentContent,@RequestParam("commentPic")String commentPic,
			@RequestParam("nId") String noteId){
		Map<String,Object> map = new HashMap<String,Object>();
		Integer id = Integer.parseInt(noteId.substring(1));
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		Calendar c = Calendar.getInstance();
		String dateString = formatter.format(c.getTime());
		boolean result = commentDao.addComment(commentName, commentContent, commentPic, dateString, id);
		map.put("result", result);
		return map;
	}
	//删除评论
	/*public void deleteCommentById(@RequestParam("commentId")Integer commentId){
		
	}*/
}
