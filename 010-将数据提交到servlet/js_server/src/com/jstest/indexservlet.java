package com.jstest;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.*;



public class indexservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MyDB test;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public indexservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		test = new MyDB(config.getInitParameter("url"),config.getInitParameter("driver"));
	}

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json;charset=UTF-8");
		String sql = "";
		
		sql = "select * from users where account=? and password=? ";
		String[] parms = new String[2];	
		parms[0]=request.getParameter("account");
		parms[1]=request.getParameter("password");
		
		ResultSet rss=test.getData(sql, parms);
		JsonObject jobj=new JsonObject();
		try {
			if(rss.next())
				jobj.addProperty("result","ok");
			else 
				jobj.addProperty("result","no");
			response.getWriter().print(jobj);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
