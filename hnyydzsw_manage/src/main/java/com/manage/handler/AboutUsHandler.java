package com.manage.handler;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.manage.beans.AboutUs;
import com.manage.interfa.IAboutUsServiceInterface;

/**
 * 关于我们——handler
 * 
 * @author ZH
 *
 */
@Controller
@RequestMapping("/aboutUs")
public class AboutUsHandler {

	@Resource
	private IAboutUsServiceInterface service;

	@RequestMapping("/findAll.do")
	public ModelAndView findAll() {
		ModelAndView mv = new ModelAndView();
		// 查询数据
		List<AboutUs> result = service.findAllService();
		System.out.println(result);
		// 放入mv
		mv.addObject("adboutUs", result);
		mv.setViewName("/Node/index.jsp");
		// 返回数据
		return mv;
	}

	@RequestMapping("/add.do")
	public ModelAndView addAboutUs(String title, String content, MultipartFile file, HttpSession session)
			throws IllegalStateException, IOException {
		ModelAndView mv = new ModelAndView();
		if (!file.isEmpty()) {
			// 获取文件存储路径
			String path = session.getServletContext().getRealPath("/img");
			// 获取文件时间
			long fileTime_up = System.currentTimeMillis();
			// 强转成string类型
			String filTime = String.valueOf(fileTime_up);
			// 获取上传文件名
			String fileName = file.getOriginalFilename();
			// 存储文件
			File file_up = new File(path, fileName);
			file.transferTo(file_up);
			// 路径拼接
			String img = "/img" + "/" + fileName;
			// 将文件信息封装到实体类里
			AboutUs au = new AboutUs();
			au.setContent(content);
			au.setImg(img);
			au.setTitle(title);
			// 存储数据
			service.addAboutUsService(au);
		}
		mv.setViewName("/aboutUs/findAll.do");
		return mv;
	}
	
	/**
	 * 删除
	 * @param id
	 * @return
	 */
	@RequestMapping("/remove.do")
	public ModelAndView removeAboutUs(Integer id) {
		ModelAndView mv = new ModelAndView();
		service.removeAboutUs(id);
		mv.setViewName("/aboutUs/findAll.do");
		return mv;
	}
}
