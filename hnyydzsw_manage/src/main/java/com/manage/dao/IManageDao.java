package com.manage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.poi.ss.formula.functions.T;

public interface IManageDao {

	Integer loginUser(Map map);

	Integer selectRows(@Param("name") String name);

	List<T> selectAll(Map map);

	void deleteCu(@Param("id") Integer id);

}
