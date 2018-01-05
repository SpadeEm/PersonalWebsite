package com.java.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.java.entity.Photo;

public interface PhotoDao {
	public List<Photo> getAllPhoto();
	
	public void savePhotoByAlbumId(@Param("photoName")String photoName,@Param("photoPath")String photoPath,@Param("albumId")Integer albumId);
}
