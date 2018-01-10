package com.java.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.java.entity.Note;

public interface NoteDao {
	//查询所有笔记
	public List<Note> getAllNotes();
	//添加笔记
	public void addNotes(@Param("noteTitle")String noteTitle,@Param("noteContent")String noteContent,@Param("createTime")Date createTime);
	//修改笔记
	public void updateNoteById(@Param("noteId")Integer noteId,@Param("noteTitle")String noteTitle,@Param("noteContent")String noteContent);
	//通过noteId查询笔记
	public Note getNoteById(@Param("noteId")Integer noteId);
	//通过noteId删除笔记
	public void deleteNoteById(@Param("noteId")Integer noteId);
}
