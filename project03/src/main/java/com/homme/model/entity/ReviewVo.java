package com.homme.model.entity;

public class ReviewVo {
	int id;
	String text;
	int rating; // ������ ���� �ʵ��߰�
	int bookId;
	int userId;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	@Override
	public String toString() {
		return "Review [id=" + id + ", text=" + text + ", rating=" + rating + ", bookId=" + bookId + ", userId="
				+ userId + "]";
	}

	
}
