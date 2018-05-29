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
    		  <%if(request.getAttribute("newstaff")!=null)
			{
			out.print("<div>");
			out.print("<font color='blue'><font size='4'>"+request.getAttribute("newstaff")+"");
			
			out.print("</div>"); 
			}
			
			 %>
	
  		
		
    	<% 
%>
<table height="190" width="300" border="0" cellspacing="10" cellpadding="0" align="center"><%
       
        String username=request.getParameter("username");
        //String id=request.getParameter("id");
		String password=request.getParameter("password");
	    boolean status=verifystafflogin.checkLogin2(username,password);
	 
		//if(status==true){
		//	out.print("Welcome    " + username);
		System.out.println(status);
		
		try {
		if(status==true){
			out.print("<font color='black'><font size='4'>Welcome    " + username);
		
			//out.println("<br><a href='bookdetailsformember.jsp'>Books</a> " );
		    out.println("<br><a href='staffnewbook.jsp'>Search new book</a> " );
		    out.println("<br><a href='updatestaffaccount.jsp'>Manage Account</a> " );
		    out.println("<br><a href='showmemberdetails.jsp'>Show Member Details</a> " );

           			
		}
		else{
			out.print("Please check your username and Password");
			request.setAttribute("check","Please check your username and Password");
			%>
			<jsp:forward page="stafflogin.jsp"></jsp:forward> 
			<% 
			}
		 }catch (Exception e) {
			e.printStackTrace();
		}
		
		session.setAttribute("un",username);
			%>
			</table><%
%>
    	
    	


<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="com.onlinelibrary.*" %>
 
             	<%--</table>--%>
             	
          
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
                    <li><a href="Login.jsp">Login</a></li>
                    <li><a href="bookdetailsformember.jsp">Book Details</a></li>
                     <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="contactus.jsp">Contact Us</a></li>
            </ul>
                
                Copyright © 2070 <a href="#">S And N Library</a> 
               </div>
    
</div>
</body>
</html>