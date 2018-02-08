package com.java.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.java.entity.Comment;

public interface CommentDao {
	public List<Comment> getCommentByNoteId(@Param("noteId")Integer noteId);
}
