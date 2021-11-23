package com.jstest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class MyDB {
	private Connection con;
	private PreparedStatement stat;
	private ResultSet rs;
	private String url;
	
	public MyDB(String url,String driver) {
		this.url = url;
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ResultSet getData(String sql,Object[] parms) {
		try {
			con = DriverManager.getConnection(url,"root","123456");
			stat = con.prepareStatement(sql);
			for(int i=0;i<parms.length;i++)
				stat.setObject(i+1, parms[i]);
			rs = stat.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	
	public boolean UpdateData(String sql,Object[] parms){
		try{
			con = DriverManager.getConnection(url,"root","123456");
			stat = con.prepareStatement(sql);
			for(int i=0;i<parms.length;i++)
				stat.setObject(i+1, parms[i]);
			stat.executeUpdate();
			return true;
			
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	
	public void close() {
		try {
			if(rs!=null)
				rs.close();
			if(stat!=null)
				stat.close();
			if(con!=null)
				con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
