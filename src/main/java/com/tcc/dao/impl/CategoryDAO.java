package com.tcc.dao.impl;

import java.util.List;

import com.tcc.dao.ICategoryDAO;
import com.tcc.mapper.CategoryMapper;
import com.tcc.models.CategoryModel;

public class CategoryDAO extends AbstractDAO<CategoryModel> implements ICategoryDAO {

	@Override
	public List<CategoryModel> findAll() {
		String sql = "SELECT * from category";
		return query(sql, new CategoryMapper());
	}
}
