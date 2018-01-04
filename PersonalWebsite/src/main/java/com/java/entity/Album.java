package com.java.entity;

import java.util.List;

public class Album {
	private Integer albumId;
	private String albumName;
	private List<Photo> listPho;
	public Integer getAlbumId() {
		return albumId;
	}
	public void setAlbumId(Integer albumId) {
		this.albumId = albumId;
	}
	public String getAlbumName() {
		return albumName;
	}
	public void setAlbumName(String albumName) {
		this.albumName = albumName;
	}
	public List<Photo> getListPho() {
		return listPho;
	}
	public void setListPho(List<Photo> listPho) {
		this.listPho = listPho;
	}
	

}
