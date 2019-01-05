package com.manage.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.beans.Page;
import com.manage.dao.IManageDao;
import com.manage.interfa.IManageServiceInterface;

@Service
public class ManageService implements IManageServiceInterface {

	@Autowired
	private IManageDao dao;

	public Page findAll(String name, Integer pageno) {
		Page page = new Page();
		page.setPageno(pageno);
		page.setTotalRows(dao.selectRows(name));
		Map map = new HashMap();
		map.put("PageStartIndex", page.getPageStartIndex());
		map.put("PageSize", page.getPageSize());
		map.put("name", name);
		page.setDatas(dao.selectAll(map));
		return page;
	}

	@Override
	public Integer loginUser(Map map) {
		return dao.loginUser(map);
	}

	@Override
	public void remove(Integer id) {
		dao.deleteCu(id);
	}
}
