package com.demo.entries;

public class Text {
	private String title;
	private String message;
	private String time;
	private String section;
	private String author;
	public Text() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Text(String title, String message, String time, String section, String author) {
		super();
		this.title = title;
		this.message = message;
		this.time = time;
		this.section = section;
		this.author = author;
	}
	
	public String getSection() {
		return section;
	}
	public void setSection(String section) {
		this.section = section;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	@Override
	public String toString() {
		return "Text [title=" + title + ", message=" + message + ", time=" + time + ", author=" + author + "]";
	}
	
}
