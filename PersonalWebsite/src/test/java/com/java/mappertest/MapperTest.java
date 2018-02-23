package com.java.mappertest;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.java.dao.AlbumDao;
import com.java.dao.NoteDao;
import com.java.dao.PhotoDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class MapperTest {
	@Autowired
	private PhotoDao phoDao;
	@Autowired
	private AlbumDao albumDao;
	@Autowired
	private NoteDao noteDao;
	
	@Test
	public void testCRUD(){
		Boolean result = noteDao.deleteNoteById(20);
		System.out.println(result);
	}
}
