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
		   alert("Fill out all Fields")
		   document.F1.accountno.focus()
		   return false
		}
   }

   if(isNaN(document.F1.accountno.value))
   {
       alert("Accountno must  be  number & can't be null")
	   document.F1.accountno.value=""
	   document.F1.accountno.focus()
	   return false
   }
   if(!isNaN(document.F1.username.value))
   {
       alert("User Name  must  be  char's & can't be null")
	   document.F1.username.value=""
	   document.F1.username.focus()
	   return false
   }

   if(!isNaN(document.F1.password.value))
   {
       alert("Password  must  be  char's & can't be null")
	   document.F1.password.value=""
	   document.F1.password.focus()
	   return false
   }
   
   return true   
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
    	

		  <% 

%>

<table width="300" height="250" border="1" align="center"><%

         String bn=request.getParameter("staffname");
	//	String an=request.getParameter("authorname"); 
		System.out.println(bn);
		//System.out.println(an);
      	  	try {
			Connection con=GetCon.getCon();
			PreparedStatement ps=con.prepareStatement("select * from NEWSTAFFMEMBER where USERNAME like '%"+bn+"%'");
	//PreparedStatement ps=con.prepareStatement("select ID,BOOKNAME,AUTHOR,< a href='pdf'>'pdf'</a> from BOOKDETAILS where bookname = '"+bn+"' and authorname='"+an+"' ");
			ResultSet rs=ps.executeQuery();
					
			out.print("<tr><th>ID</th><th>USERNAME</th><th>PHONE</th><th>ADDRESS</th></tr>");
			//while(rs.next()){
			if(rs.next()){
					out.print("<tr>");
				
				out.print("<td>" + rs.getString(1) + "</td>");
				out.print("<td>" + rs.getString(2) + "</td>");
				out.print("<td>" + rs.getString(5) + "</td>");
				out.print("<td>" + rs.getString(6) + "</td>");
				//<a href="pdf"='<%out.print(rs.getstring(4));</a>
				//out.print("<td>" + "<href=rs.getString(4)> + "</td>");
				//out.print("<td>"<a href="rs.getString(4)">pdf</a>+"<td>");
				out.print("</tr>");
				out.print("<a href='showstaff.jsp'>back</a>");		
				}			
			else{          			
	        out.print("your given name is wrong" +bn);
			request.setAttribute("wrong","<font color=gray size=3>Staff name is invalid \n please try again</font>");
			%>			
			<jsp:forward page="searchstaff.jsp"></jsp:forward> 
			<% 
				
			}
        
			//}
		
			} catch (SQLException e) {
			e.printStackTrace();
		}
	
		%></table><%
%>
 

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="com.onlinelibrary.*" %>
  
    	
    	
		
             	
				</form>
  		
			</td>
	
        
        	
        </div>
        
        
    
    </div> <!-- end of content -->
    

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