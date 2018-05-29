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
		   alert("Fill out this Fields")
		   document.F1.bookid.focus()
		   return false
		}
   }

   if(isNaN(document.F1.bookid.value))
   {
       alert("Accountno must  be  number & can't be null")
	   document.F1.bookid.value=""
	   document.F1.bookid.focus()
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
     
    </div> <!-- end of templatemo_menu -->
</div>

<div id="templatemo_content_wrapper1">

	
    
     <div id="templatemo_content">
    
    	<div class="content_box">
    
    	<td valign="top">
    	
  	   			<form name=F1 onSubmit="return dil(this)" action="amemberupdate3.jsp" >
				  <table height="250" cellspacing="5" cellpadding="3">	 
				  
				  <%if(request.getAttribute("wrong")!=null)
			{
			out.print("<div>");
			out.print("<font color='blue'><font size='4'>"+request.getAttribute("wrong")+"");
			
			out.print("</div>"); 
			}%>
				<%   
				  String un = request.getParameter("username"); 	
				  
				  try {
						Connection con=GetCon.getCon();
						PreparedStatement ps=con.prepareStatement("Select * from NEWMEMBER where username= ? ");
						ps.setString(1,un);
						ResultSet rs=ps.executeQuery();
						while(rs.next())
						{
						%>										
		<tr><td>ID:</td><td> <input type="text" name="id" value="<%=rs.getString("ID")%>" readonly="readonly"/></td></tr>
		<tr><td>USERNAME:</td><td> <input type="text" name="Username" value="<%=rs.getString("USERNAME")%>"/></td></tr>	
		<tr><td>PASSWORD:</td><td> <input type="text" name="Password" value="<%=rs.getString("PASSWORD")%>"/></td></tr>
		<tr><td>PHONE:</td><td> <input type="text" name="Phone" value="<%=rs.getString("PHONE")%>"/></td></tr>
		<tr><td>ADDRESS:</td><td> <input type="text" name="Address" value="<%=rs.getString("ADDERESS")%>"/></td></tr>							
				
												
						<% }}
						
				  catch (SQLException e) {
						e.printStackTrace();
					}
						%>
						<tr><td></td><td><input type="submit" value="Submit"/>
						<INPUT TYPE=RESET VALUE="CLEAR"></td></tr>
						</table>
               				
				
		 

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
                
                Copyright © 2070 <a href="#">S And N Library</a> 
               </div>
    
</div>
</body>
</html>