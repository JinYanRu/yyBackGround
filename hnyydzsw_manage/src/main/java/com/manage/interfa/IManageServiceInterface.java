package com.manage.interfa;

import com.manage.beans.Page;

import java.util.Map;

import com.manage.beans.Manage;

public interface IManageServiceInterface {

	Page findAll(String name,Integer pageno);

	Integer loginUser(Map map);

	void remove(Integer id);

}
