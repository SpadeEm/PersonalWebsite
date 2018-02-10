package com.java.mappertest;

import static org.junit.Assert.*;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.java.dao.AlbumDao;
import com.java.dao.CommentDao;
import com.java.dao.NoteDao;
import com.java.entity.Album;
import com.java.entity.Comment;
import com.java.entity.Note;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class NoteJunitTest {
	@Autowired
	private AlbumDao albumDao;
	@Autowired
	private NoteDao noteDao;
	@Autowired
	private CommentDao commentDao;

	@Before
	public void setUp() throws Exception {
	}

	@Test
	public void test() {
		Map<String,Object> map = new HashMap<String,Object>();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		List<Comment> list = commentDao.getCommentByNoteId(18);
		map.put("result", list);
		System.out.println(map);
	}

}
