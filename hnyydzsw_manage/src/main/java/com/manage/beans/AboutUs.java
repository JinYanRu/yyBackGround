package com.manage.beans;

import java.io.Serializable;

/**
 * 关于我们
 * @author ZH
 *
 */
public class AboutUs implements Serializable{

	private Integer id;
	
	private String title;
	
	private String content;
	
	private String img;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "AboutUs [id=" + id + ", title=" + title + ", content=" + content + ", img=" + img + "]";
	}

	public AboutUs(Integer id, String title, String content, String img) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.img = img;
	}

	public AboutUs() {
		super();
	}

	
	
}
