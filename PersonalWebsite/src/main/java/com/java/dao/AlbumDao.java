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
}
