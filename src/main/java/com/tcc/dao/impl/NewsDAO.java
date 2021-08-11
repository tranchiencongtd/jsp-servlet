package com.tcc.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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

	@Override
	public Long save(NewsModel newModel) {
		String sql = "INSERT INTO news(title,content,categoryid) VALUE(?,?,?)";
		return insert(sql, newModel.getTitle(),newModel.getContent(),newModel.getCategoryId());
	}
}
