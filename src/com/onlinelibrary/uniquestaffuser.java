package com.onlinelibrary;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
public class uniquestaffuser {

public static boolean checkuser(String username){
	boolean status=false;
	Connection con=GetCon.getCon();
	try {
		
		PreparedStatement ps=con.prepareStatement("Select * from NEWSTAFFMEMBER where username = ?");
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
