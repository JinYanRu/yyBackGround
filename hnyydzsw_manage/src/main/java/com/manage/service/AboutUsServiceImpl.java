package com.manage.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.manage.beans.AboutUs;
import com.manage.dao.IAboutUsDao;
import com.manage.interfa.IAboutUsServiceInterface;

/**
 * 关于我们——service
 * @author ZH
 *
 */
@Service
public class AboutUsServiceImpl implements IAboutUsServiceInterface {

	@Resource
	private IAboutUsDao dao;
	
	/**
	 * 查询数据
	 */
	@Override
	public List<AboutUs> findAllService() {
		return dao.findAllDao();
	}

	/**
	 * 新增
	 */
	@Override
	public void addAboutUsService(AboutUs au) {
		dao.insertAboutUsDao(au);
	}

	/**
	 * 删除
	 */
	@Override
	public void removeAboutUs(Integer id) {
		dao.deleteAboutUs(id);
	}

}
