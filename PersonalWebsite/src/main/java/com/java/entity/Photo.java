package com.java.entity;

public class Photo {
	private Integer photoId;
	private String photoName;
	private String photoPath;
	private Album album;
	
	public Album getAlbum() {
		return album;
	}
	public void setAlbum(Album album) {
		this.album = album;
	}
	public Integer getPhotoId() {
		return photoId;
	}
	public void setPhotoId(Integer photoId) {
		this.photoId = photoId;
	}
	public String getPhotoName() {
		return photoName;
	}
	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}
	public String getPhotoPath() {
		return photoPath;
	}
	public void setPhotoPath(String photoPath) {
		this.photoPath = photoPath;
	}
	

}
