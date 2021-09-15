package com.tcc.dao.impl;

import java.util.List;

import com.tcc.dao.INewsDAO;
import com.tcc.mapper.NewMapper;
import com.tcc.models.NewsModel;

public class NewsDAO extends AbstractDAO<NewsModel> implements INewsDAO {
	@Override
	public List<NewsModel> findByCategoryId(Long categoryId) {
		String sql = "SELECT * FROM news WHERE categoryid = ?";
		return query(sql, new NewMapper(), categoryId);
	}

	@Override
	public Long save(NewsModel newModel) {
		StringBuilder sql = new StringBuilder("INSERT INTO news(title,");
		sql.append(" thumbnail, shortDescription, content, categoryid,");
		sql.append(" createdDate, createdBy)");
		sql.append(" VALUE(?,?,?,?,?,?,?)");
		return insert(sql.toString(), newModel.getTitle(),newModel.getThumbnail(),
				newModel.getShortDescription(), newModel.getContent(),
				newModel.getCategoryId(), newModel.getCreatedDate(), newModel.getCreatedBy());
	}

	@Override
	public NewsModel findOne(Long id) {
		String sql = "SELECT * FROM news WHERE id = ?";
		List<NewsModel> news = query(sql, new NewMapper(), id);
		return news.isEmpty()? null: news.get(0);
	}

	@Override
	public void update(NewsModel updateModel) {
		StringBuilder sql =  new StringBuilder("UPDATE news ");
				sql.append("SET title = ?, thumbnail = ?, shortDescription = ?, ");
				sql.append("content = ?, categoryid = ?, modifiedDate = ?, modifiedBy = ? ");
				sql.append("WHERE id = ?");
		update(sql.toString(), updateModel.getTitle(), updateModel.getThumbnail(),
				updateModel.getShortDescription(),updateModel.getContent(),
				updateModel.getCategoryId(),updateModel.getModifiedDate(),
				updateModel.getModifiedBy(),updateModel.getId());
	}

	@Override
	public void delete(Long id) {
		String sql = "DELETE FROM news WHERE id = ?";
		update(sql,id);
	}
}
