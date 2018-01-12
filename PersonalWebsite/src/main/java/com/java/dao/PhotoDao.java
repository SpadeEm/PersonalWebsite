package com.java.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.java.entity.Photo;

public interface PhotoDao {
	public List<Photo> getAllPhoto();
	//保存照片
	public void savePhotoByAlbumId(@Param("photoName")String photoName,@Param("photoPath")String photoPath,
			@Param("realPath")String realPath,@Param("albumId")Integer albumId);
	//通过photoPath删除photo
	public Boolean deletePhoByPath(@Param("photoPath")String photoPath);
	//查询photo的realPath
	public String getRealPath(@Param("photoPath")String photoPath);
	//通过albumId查找photo的realPath
	public List<String> getPhoByAlbumId(@Param("albumId")Integer albumId);
}
