package com.tcc.controllers.client;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tcc.models.NewsModel;
import com.tcc.services.ICategoryService;
import com.tcc.services.INewService;

@WebServlet(urlPatterns = { "/trang-chu" })
public class HomeController extends HttpServlet {

	@Inject
	private ICategoryService categoryService;

	@Inject
	private INewService newsService;

	private static final long serialVersionUID = 6497133302780878717L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("catgories", categoryService.findAll());
		RequestDispatcher rd = req.getRequestDispatcher("/views/client/home.jsp");
		rd.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
}
