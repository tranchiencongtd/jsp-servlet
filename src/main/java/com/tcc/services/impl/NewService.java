package com.tcc.services.impl;

import java.sql.Timestamp;
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

	@Override
	public NewsModel save(NewsModel newsModel) {
		newsModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		newsModel.setCreatedBy("");
		Long id = newsDao.save(newsModel);
		return newsDao.findOne(id);
	}

	@Override
	public NewsModel update(NewsModel updateModel) {
		//NewsModel oldNew = newsDao.findOne(updateModel.getId());
		//updateModel.setCreatedBy(oldNew.getCreatedBy());
		//updateModel.setCreatedDate(oldNew.getCreatedDate());
		updateModel.setModifiedBy("");
		updateModel.setModifiedDate(new Timestamp(System.currentTimeMillis()));
		newsDao.update(updateModel);
		return newsDao.findOne(updateModel.getId());
	}

	@Override
	public void delete(long[] ids) {
		for(long id:ids) {
			//delete comment
			//delete news
			newsDao.delete(id);
		}
	}
	

}
