package com.bookstraptest.server;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;
import com.bookstraptest.sqlDB.MyDB;;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MyDB testDB;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
    public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		super.init(config);
		testDB = new MyDB(config.getInitParameter("url"),config.getInitParameter("driver"));
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
		
		sql = "select * from student where account=? and password=? ";
		String[] parms = new String[2];	
		parms[0]=request.getParameter("account");
		parms[1]=request.getParameter("password");
		
		ResultSet rss=testDB.getData(sql, parms);
		JsonObject jobj=new JsonObject();
		String[] parms1 = new String[1];	
		parms1[0]=request.getParameter("account");
		try {
			if(rss.next()){
				jobj.addProperty("login_result","login_succeed");
				testDB.UpdateData("insert into stud_login values (?,'logined')",parms1);
				System.out.println("µÇÂ¼³É¹¦");
				
				jobj.addProperty("name",rss.getString("name"));
				jobj.addProperty("telephone",rss.getString("telephone"));
				jobj.addProperty("email",rss.getString("email"));
				jobj.addProperty("birthday",rss.getString("birthday"));
				jobj.addProperty("province",rss.getString("province"));
				jobj.addProperty("city",rss.getString("city"));
				jobj.addProperty("account",rss.getInt("account"));
				jobj.addProperty("password",rss.getString("password"));
				System.out.println("get message succeed");
			}else 
				jobj.addProperty("login_result","login_failed");
			testDB.close();
			response.getWriter().print(jobj);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
