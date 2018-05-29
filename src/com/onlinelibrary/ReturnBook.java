package com.onlinelibrary;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.jasper.tagplugins.jstl.core.Out;

public class ReturnBook {
	static int status=0;
	public static int returnBook(String id) throws SQLException{
		Connection con=GetCon.getCon();
		con.setAutoCommit(false);
		PreparedStatement ps;
		try {
			
			ps = con.prepareStatement("delete  from CHECKOUTDETAILS where id = '"+id+"'");
			int rs = ps.executeUpdate();
			System.out.println("rs : "+rs);
			if(rs==1){
				System.out.println("Book returned");
				con.commit();
				return 1;
			}
			
			
			
		} catch (SQLException e) {			
			e.printStackTrace();
		}
		return 1;
	}

}
	
