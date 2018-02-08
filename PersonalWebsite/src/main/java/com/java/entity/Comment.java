package com.java.entity;

import java.util.Date;

public class Comment {
	private int commentId;
	private String commentName;
	private String commentContent;
	private String commentPic;
	private Date commentTime;
	private Note note;
	public int getCommentId() {
		return commentId;
	}
	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}
	public String getCommentName() {
		return commentName;
	}
	public void setCommentName(String commentName) {
		this.commentName = commentName;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public Note getNote() {
		return note;
	}
	public void setNote(Note note) {
		this.note = note;
	}
	public String getCommentPic() {
		return commentPic;
	}
	public void setCommentPic(String commentPic) {
		this.commentPic = commentPic;
	}
	public Date getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}
	
}
