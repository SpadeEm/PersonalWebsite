package com.java.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.java.entity.Note;

public interface NoteDao {
	public List<Note> getAllNotes();
	
	public void addNotes(@Param("noteTitle")String noteTitle,@Param("noteContent")String noteContent,@Param("createTime")Date createTime);
}
