package com.java.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.entity.Comment;

public interface CommentDao {
	public List<Comment> getCommentByNoteId(@Param("noteId")Integer noteId);
	public boolean addComment(@Param("commentName")String commentName,@Param("commentContent")String commentContent,
			@Param("commentPic")String commentPic,@Param("createTime")String createTime,@Param("noteId")Integer noteId);
	public boolean deleteCommentById(@Param("commentId")String commentId);
}
