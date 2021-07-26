package com.tcc.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.tcc.models.NewsModel;

public class NewMapper implements RowMapper<NewsModel> {

	public NewsModel mapRow(ResultSet resultSet) {
		try {
			NewsModel news = new NewsModel();
			news.setId(resultSet.getLong("id"));
			news.setTitle(resultSet.getString("title"));
			return news;
		} catch (SQLException e) {
			return null;
		}
	}
}
