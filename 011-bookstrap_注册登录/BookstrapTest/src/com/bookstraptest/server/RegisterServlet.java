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
 * Servlet implementation class bsServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MyDB testDB;

    /**
     * Default constructor. 
     */
    public RegisterServlet() {
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
		String sql = "";
		int account = 0;
		sql="select max(account)as maxnum from student";
		String[] parms1 = new String[0];
		ResultSet rss=testDB.getData(sql, parms1);
		try {
			if(rss.next()){
				account=rss.getInt("maxnum")+1;
			}else {
				System.out.println("no");

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		sql = "insert into student values (?,?,?,?,?,?,?,?)";
		String[] parms = new String[8];	
		parms[0]=request.getParameter("name");
		parms[1]=request.getParameter("telephone");
		parms[2]=request.getParameter("email");
		parms[3]=request.getParameter("birthday");
		parms[4]=request.getParameter("province");
		parms[5]=request.getParameter("city");
		parms[6]=String.valueOf(account);//account
		parms[7]=request.getParameter("password");
		System.out.println("account="+parms[6]);

		JsonObject jobj=new JsonObject();
		if(testDB.UpdateData(sql,parms)){
			jobj.addProperty("register_result","register_succeed");
			jobj.addProperty("account",parms[6]);
			System.out.println("×¢²á³É¹¦");
		}else 
			jobj.addProperty("register_result","register_failed");
		testDB.close();
		response.getWriter().print(jobj);
	}

}
