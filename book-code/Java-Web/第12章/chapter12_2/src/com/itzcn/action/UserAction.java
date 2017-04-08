package com.itzcn.action;

import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public String add(){//添加
		return "add";
	}
	public String del(){//删除
		return "del";
	}
	public String up(){//修改
		return "up";
	}
	public String show(){//列出
		return "show";
	}

}
