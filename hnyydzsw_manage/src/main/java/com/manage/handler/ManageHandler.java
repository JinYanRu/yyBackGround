package com.manage.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.manage.beans.Page;
import com.manage.beans.Manage;
import com.manage.interfa.IManageServiceInterface;

@Controller
@RequestMapping("/manage")
public class ManageHandler {

	@Autowired
	private IManageServiceInterface service;
	
	@RequestMapping("/findAll.do")
	@ResponseBody
	public ModelAndView findAll(String name,Integer pageno) {
		ModelAndView mv = new ModelAndView();
		if(null == pageno) {
			pageno=1;
		}
		if(name == "") {
			name = null;
		}
		Page page=service.findAll(name,pageno);
		mv.setViewName("/User/user_index.jsp");
		mv.addObject("page", page);
		mv.addObject("name", name);
		return mv;
	}
	
	@RequestMapping("/remove.do")
	public String remove(Integer id ) {
		service.remove(id);
		return "/manage/findAll.do";
	}
}
