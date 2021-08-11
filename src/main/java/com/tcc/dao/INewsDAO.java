package com.tcc.dao;

import java.util.List;

import com.tcc.models.NewsModel;

public interface INewsDAO extends GenericDAO<NewsModel> {
	List<NewsModel> findByCategoryId(long categoryId);
	Long save(NewsModel newModel);
}
