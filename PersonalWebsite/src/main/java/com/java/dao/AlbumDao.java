package com.java.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.java.entity.Album;

public interface AlbumDao {
	//查询所有相册
	public List<Album> getAllAlbums();
	//添加相册
	public void addAlbum(@Param("albumName")String albumName,@Param("createTime")Date createTime);
	//按照Id查相册信息
	public Album getAlbumById(@Param("albumId")Integer albumId);
	//编辑相册
	public void updateAlbumById(@Param("albumId")Integer albumId,@Param("albumName")String albumName);
	//删除相册
	public Boolean deleteAlbumById(@Param("albumId")Integer albumId);
}
