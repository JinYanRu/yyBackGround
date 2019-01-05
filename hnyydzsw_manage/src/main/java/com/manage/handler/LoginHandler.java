package com.manage.handler;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.manage.beans.Page;
import com.manage.interfa.IManageServiceInterface;

@Controller
@RequestMapping("/manage")
public class LoginHandler {

	@Resource
	private IManageServiceInterface service;
	
	@RequestMapping("/login.do")
	public String login(String username,String password,HttpServletRequest request,HttpSession session) {
		//查询核对用户名和密码
		Map map = new HashMap();
		map.put("username", username);
		map.put("password", password);
		Integer result = service.loginUser(map);
		//如果不正确，跳回登录页面
		if(null == result) {
			request.setAttribute("mesage", "用户名或密码错误！");
			return "/index.jsp";
		}
		//如果正确，查询详情数据放入request并返回页面
		session.setAttribute("username", username);
		String name = null;
		Integer pageno = 1;
		Page page = service.findAll(name, pageno);
		System.out.println(page);
		request.setAttribute("page", page);
		return "/User/user_index.jsp";
	}
}
