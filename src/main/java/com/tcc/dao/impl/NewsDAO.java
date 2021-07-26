package com.tcc.dao.impl;

import java.util.List;

import com.tcc.dao.INewsDAO;
import com.tcc.mapper.NewMapper;
import com.tcc.models.NewsModel;

public class NewsDAO extends AbstractDAO<NewsModel> implements INewsDAO {
	@Override
	public List<NewsModel> findByCategoryId(long categoryId) {
		String sql = "SELECT * FROM news WHERE categoryid = ?";
		return query(sql, new NewMapper(), categoryId);
	}
}
