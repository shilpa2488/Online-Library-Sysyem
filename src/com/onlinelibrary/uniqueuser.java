package com.onlinelibrary;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class uniqueuser {

public static boolean checkuser(String username){
	boolean status=false;
	Connection con=GetCon.getCon();
	try {
		
		PreparedStatement ps=con.prepareStatement("Select * from NEWMEMBER where username = ?");
		ps.setString(1,username);
		ResultSet rs=ps.executeQuery();
		if(rs.next()){status=true;}
		else{status=false;}
			
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return status;
}
}
