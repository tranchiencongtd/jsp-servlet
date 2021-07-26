package com.tcc.services.impl;

import java.util.List;

import javax.inject.Inject;

import com.tcc.dao.INewsDAO;
import com.tcc.models.NewsModel;
import com.tcc.services.INewService;

public class NewService implements INewService {

	@Inject
	private INewsDAO newsDao;

	@Override
	public List<NewsModel> findByCategoryId(long categoryId) {
		return newsDao.findByCategoryId(categoryId);
	}

}
