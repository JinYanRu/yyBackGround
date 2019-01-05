package com.manage.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.manage.beans.AboutUs;

/**
 * 关于我们——dao接口
 * @author ZH
 *
 */
public interface IAboutUsDao {

	/**
	 * 查询数据
	 * @return
	 */
	List<AboutUs> findAllDao();

	/**
	 * 插入数据
	 * @param au
	 */
	void insertAboutUsDao(AboutUs au);

	/**
	 * 删除
	 * @param id
	 */
	void deleteAboutUs(@Param("id") Integer id);

}
