package com.tcc.controllers.admin.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.tcc.models.NewsModel;
import com.tcc.services.INewService;
import com.tcc.utils.HttpUtil;

@WebServlet(urlPatterns = { "/api-admin-new" })
public class NewAPI extends HttpServlet{

	private static final long serialVersionUID = -4971852822266011426L;
	
	@Inject
	private INewService newService;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		
		ObjectMapper mapper = new ObjectMapper();
		
		NewsModel newModel = HttpUtil.of(req.getReader()).toModel(NewsModel.class);
		newModel = newService.save(newModel);
		mapper.writeValue(resp.getOutputStream(), newModel);

	}
	
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		
		ObjectMapper mapper = new ObjectMapper();
		
		NewsModel newUpdate = HttpUtil.of(req.getReader()).toModel(NewsModel.class);
		newUpdate = newService.update(newUpdate);
		mapper.writeValue(resp.getOutputStream(), newUpdate);
	}
	
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		
		ObjectMapper mapper = new ObjectMapper();
		
		NewsModel news = HttpUtil.of(req.getReader()).toModel(NewsModel.class);
		newService.delete(news.getIds());
		
		mapper.writeValue(resp.getOutputStream(), "{}");
	}
		
}
