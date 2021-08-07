package com.bookstraptest.sqlDB;

import java.sql.ResultSet;
import java.sql.SQLException;

public class test {

	public static void main(String[] args){
		MyDB temp = new MyDB("jdbc:mysql://localhost:3306/temp","com.mysql.jdbc.Driver");
        String sql = "";
		
		sql="select * from student where account=? and password=? ";
		String[] parms = new String[2];	
		parms[0]="1001";
		parms[1]="111111";
		sql="select * from stud_login where account=? ";
		String[] parms1 = new String[1];	
		parms1[0]="1001";
		sql="select max(account)as maxnum from student";
		String[] parms2 = new String[0];	
		//ResultSet rss=temp.getData(sql, parms);
		//ResultSet rss=temp.getData(sql, parms1);
		ResultSet rss=temp.getData(sql, parms2);
		try {
			if(rss.next()){
				//System.out.println("account="+rss.getString("account")+"\npassword="+rss.getString("password")+"\n");
				//System.out.println("account="+rss.getString("account")+"\nloginkey="+rss.getString("loginkey")+"\n");
				System.out.println("MAX£¨account£©="+rss.getInt("maxnum"));
			}else {
				System.out.println("no");

			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
