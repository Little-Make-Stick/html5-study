package com.bookstraptest.server;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bookstraptest.sqlDB.MyDB;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class MyMessageServlet
 */
public class MyMessageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MyDB testDB;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyMessageServlet() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("application/json;charset=UTF-8");
		
//		String text=request.getQueryString();
//		String[] array=text.split("?account=");
//		String account=array[1]; 
		
		String sql = "";
		sql="select * from student where account=?";
		String[] parms = new String[1];
		parms[0]=request.getParameter("account");
		ResultSet rss=testDB.getData(sql, parms);
		JsonObject jobj=new JsonObject();
		try {
			if(rss.next()){
				jobj.addProperty("show_message_result","get_message_succeed");
				jobj.addProperty("name",rss.getString("account"));
				jobj.addProperty("telephone",rss.getString("telephone"));
				jobj.addProperty("email",rss.getString("email"));
				jobj.addProperty("birthday",rss.getString("birthday"));
				jobj.addProperty("province",rss.getString("province"));
				jobj.addProperty("city",rss.getString("city"));
				jobj.addProperty("account",rss.getInt("account"));
				jobj.addProperty("password",rss.getString("password"));
				System.out.println("get message succeed");
			}else {
				jobj.addProperty("show_message_result","get_message_failed");
				System.out.println("get message failed");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		testDB.close();
		response.getWriter().print(jobj);
	}

}
