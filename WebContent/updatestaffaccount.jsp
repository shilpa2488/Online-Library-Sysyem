<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Education</title>
<meta name="keywords" content="free css templates, education, school, college, university, templatemo.com" />
<meta name="description" content="Education template is for academic related websites" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");
if(sds == null){alert("You are using a free package.\n You are not allowed to remove the tag.\n");}
}
</script>

<SCRIPT LANGUAGE="JavaScript">
function dil(form)
{
   for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Fill out all Fields");
		   document.F1.accountno.focus();
		   return false;
		}
   }

   if(isNaN(document.F1.accountno.value))
   {
       alert("Accountno must  be  number & can't be null");
	   document.F1.accountno.value="";
	   document.F1.accountno.focus();
	   return false;
   }
   if(!isNaN(document.F1.username.value))
   {
       alert("User Name  must  be  char's & can't be null");
	   document.F1.username.value="";
	   document.F1.username.focus();
	   return false;
   }
   return true;
   }

</SCRIPT>

</head>
<body>
<div id="templatemo_header_wrapper">
    <div id="templatemo_header">
    	<h2 align="center">Online Library</h2>
    
    </div> <!-- end of templatemo_header -->

</div>

<div id="templatemo_menu_wrapper">
    <div id="templatemo_menu">
        
        <ul>
           <li><a href="index.html">Home</a></li>
           <li><a href="admin.jsp">Admin</a></li>
           <li><a href="Login.jsp">Login</a></li>
           <li><a href="aboutus.jsp">About Us</a></li>
           <li><a href="contactus.jsp">Contact Us</a></li>
                   </ul>    	
     
    </div> <!-- end of templatemo_menu -->
</div>

<div id="templatemo_content_wrapper1">

    
     <div id="templatemo_content">
    
    	<div class="content_box">
    
    	<td valign="top">
    <%  out.print("<font color='black'><font size='5'>Manage Your Account");
	%>
	<%  out.print("<br>");
	%>
		
  	   		  <% 
%>

		  <% 
%>
<%String un = session.getAttribute("un").toString(); %>
<%out.print("<font size='3'><td><a href='updatestaffdetails.jsp'>Update Details</a></td>");  %>
<table height="100" border='1' align="center"><%  

      	try {
			Connection con=GetCon.getCon();
			
			//PreparedStatement ps=con.prepareStatement("Select * from neworder4 where id = '"+custid1+"' ");
			PreparedStatement ps=con.prepareStatement("Select * from NEWSTAFFMEMBER where username=?");
			ps.setString(1,un);
			ResultSet rs=ps.executeQuery();
			//out.print("<td><a href='deletebookdetails.jsp'>Delete</a></td>");	
			//out.print("<td><a href='updatedetails.jsp'>update</a></td>");	
			//out.print("<td><a href='issuenewbook1.jsp'>open book</a></td>");	
			
			
			out.print("<tr><th>ID</th><th>USERNAME</th><th>PASSWORD</th><th>PHONE</th></th><th>ADDRESS</th><th>DEPARTMENT</th></tr>");
			while(rs.next()){
				//int id=rs.getInt(1);
			    //session.setAttribute("id",id);			
				out.print("<tr>");
				
				out.print("<td>" + rs.getString(1) + "</td>");
				out.print("<td>" + rs.getString(2) + "</td></td>");			
				out.print("<td>" + rs.getString(3) + "</td></td>");			
				out.print("<td>" + rs.getString(5) + "</td></td>");				
				out.print("<td>" + rs.getString(6) + "</td></td>");
				out.print("<td>" + rs.getString(7) + "</td></td>");
				//out.print("<td><a href='updatedetails.jsp'>update</a></td>");
				out.print("</tr>");
				
				  
			}
		
			} catch (SQLException e) {
			e.printStackTrace();
		}

		%></table><%
%>
 

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="com.onlinelibrary.*" %>
  

	
        

        </div>
        
    
    </div> <!-- end of content -->
    
    <div class="cleaner"></div>

</div>

<div id="templatemo_footer_wrapper">

    <div id="templatemo_footer">
    
        <ul class="footer_menu">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="admin.jsp">Admin</a></li>
                    <li><a href="member.jsp">Member</a></li>
                    <li><a href="bookdetailsformember.jsp">Book Details</a></li>
                     <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="contactus.jsp">Contact Us</a></li>
            </ul>
                
                Copyright � 2070 <a href="#">S And N Library</a> 
               </div>
    
</div>
</body>
</html>