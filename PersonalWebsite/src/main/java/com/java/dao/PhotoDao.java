package com.java.dao;

import java.util.List;

import com.java.entity.Photo;

public interface PhotoDao {
	public List<Photo> getAllPhoto();
	
	public void addPhoto();
}
