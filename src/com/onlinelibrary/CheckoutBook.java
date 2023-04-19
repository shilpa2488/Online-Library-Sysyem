package com.onlinelibrary;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.util.Date;

import org.apache.catalina.Session;

public class CheckoutBook {
	
	static int status=0;
	public static int checkout(String id,String bookname,String authorname,String username){
		Date now = new Date();
        Date now1 = new Date(); 
        DateFormat currentDate = DateFormat.getDateInstance();
        Date returndate = addDays(now1, 30);
        java.sql.Date sqlReturnDate = new java.sql.Date(returndate.getTime());
        java.sql.Date sqlIssueDate = new java.sql.Date(now.getTime());
		Connection con=GetCon.getCon();
		PreparedStatement ps;
		try {
			//Adding comment in release branch
			ps = con.prepareStatement("Insert into CHECKOUTDETAILS values(?,?,?,?,?,?)");
		 	ps.setString(1,id);
		    ps.setString(2,bookname);
		    ps.setString(3,authorname);
		    System.out.println("current date:"+sqlIssueDate);
		    System.out.println("return date:"+sqlReturnDate);
		    ps.setDate(4, sqlIssueDate);
			ps.setDate(5, sqlReturnDate);
			ps.setString(6, username);
				
			status=ps.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return status;
		
	}
	public static Date addDays(Date d, int days)
    {
		d.setTime(d.getTime() +  30L * 24 * 60 * 60 * 1000);
        System.out.println("30 days after today is: " + d);
        return d;
    }
    }


