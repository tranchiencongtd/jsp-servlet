package com.tcc.dao;

import java.util.List;

import com.tcc.models.CategoryModel;

public interface ICategoryDAO extends GenericDAO<CategoryModel> {
	List<CategoryModel> findAll();
}
