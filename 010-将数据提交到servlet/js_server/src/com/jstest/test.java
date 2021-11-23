package com.jstest;

import java.sql.ResultSet;
import java.sql.SQLException;

public class test {

	public static void main(String[] args){
		MyDB temp = new MyDB("jdbc:mysql://localhost:3306/temp","com.mysql.jdbc.Driver");
        String sql = "";
		
		sql = "select * from users where account=? and password=? ";
		String[] parms = new String[2];	
		parms[0]="mitsuha";
		parms[1]="123456";
		ResultSet rss=temp.getData(sql, parms);
		try {
			if(rss.next()){
				System.out.println("account="+rss.getString("account")+"\npassword="+rss.getString("password")+"\n");
			}else {
				System.out.println("no");

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
