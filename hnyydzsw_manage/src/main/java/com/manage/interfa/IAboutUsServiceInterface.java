package com.manage.interfa;

import java.util.List;

import com.manage.beans.AboutUs;

/**
 * 关于我们——service接口
 * @author ZH
 *
 */
public interface IAboutUsServiceInterface {

	/**
	 * 查询相关数据
	 * @return
	 */
	List<AboutUs> findAllService();

	/**
	 * 添加信息
	 * @param au
	 */
	void addAboutUsService(AboutUs au);

	/**
	 * 删除
	 * @param id
	 */
	void removeAboutUs(Integer id);

}
