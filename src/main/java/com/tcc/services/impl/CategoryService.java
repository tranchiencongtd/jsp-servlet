package com.tcc.services.impl;

import java.util.List;

import javax.inject.Inject;

import com.tcc.dao.ICategoryDAO;
import com.tcc.models.CategoryModel;
import com.tcc.services.ICategoryService;

public class CategoryService implements ICategoryService {

	@Inject
	private ICategoryDAO categoryDao;

	@Override
	public List<CategoryModel> findAll() {
		return categoryDao.findAll();
	}

}
