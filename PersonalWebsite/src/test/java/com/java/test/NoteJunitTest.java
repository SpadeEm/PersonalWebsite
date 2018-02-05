package com.java.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.java.dao.AlbumDao;
import com.java.dao.NoteDao;
import com.java.entity.Album;
import com.java.entity.Note;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class NoteJunitTest {
	@Autowired
	private AlbumDao albumDao;
	@Autowired
	private NoteDao noteDao;

	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void test() {
		List<Note> list = noteDao.getAllNotes();
		for (Note n:list) {
			System.out.println(n.getNoteId());
		}
		System.out.println("success");
	}

}
