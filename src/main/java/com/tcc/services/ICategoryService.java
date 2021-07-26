package com.tcc.services;

import java.util.List;

import com.tcc.models.CategoryModel;

public interface ICategoryService {
	List<CategoryModel> findAll();
}
