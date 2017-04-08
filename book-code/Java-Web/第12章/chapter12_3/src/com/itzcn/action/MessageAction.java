package com.itzcn.action;

import com.opensymphony.xwork2.ActionSupport;

public class MessageAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String title = null;//±êÌâ
	private String content = null;//ÄÚÈÝ
	
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

	public String execute(){
		return SUCCESS;
	}
	
	

}
