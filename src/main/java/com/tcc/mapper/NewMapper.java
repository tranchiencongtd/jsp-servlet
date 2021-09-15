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
			news.setThumbnail(resultSet.getString("thumbnail"));
			news.setShortDescription(resultSet.getString("shortDescription"));
			news.setContent(resultSet.getString("content"));
			news.setCategoryId(resultSet.getLong("categoryid"));
			news.setCreatedDate(resultSet.getTimestamp("createdDate"));	
			news.setCreatedBy(resultSet.getString("createdBy"));
			if(resultSet.getTimestamp("modifiedDate")!=null) {
				news.setModifiedDate(resultSet.getTimestamp("modifiedDate"));
			} 
			if(resultSet.getTimestamp("modifiedBy")!=null) {
				news.setModifiedDate(resultSet.getTimestamp("modifiedBy"));
			} 
			return news;
		} catch (SQLException e) {
			return null;
		}
	}
}
