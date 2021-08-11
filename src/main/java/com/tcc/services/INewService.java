package com.tcc.services;

import java.util.List;

import com.tcc.models.NewsModel;

public interface INewService {
	List<NewsModel> findByCategoryId(long categoryId);
	NewsModel save(NewsModel newsModel);
}
