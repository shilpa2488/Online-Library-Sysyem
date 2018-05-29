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
		   document.F1.bookname.focus()
		   return false
		}
   }

/*    if(isNaN(document.F1.authorname.value))
   {
       //alert("authorname must  be  char & can't be null")
	   document.F1.authorname.value=""
	   document.F1.authorname.focus()
	   return false
   } */
   
   
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
    	<h2><%  out.print("<font color=black>ADD BOOK");
	%></h2>
    	
  	   			<form name=F1 onSubmit="return dil(this)" action="updatebookdetails1.jsp" >
				  <table height="250" cellspacing="5" cellpadding="3">	
				  
    
				  <%if(request.getAttribute("wrong")!=null)
			{
					  
			out.print("<div>");
			out.print("<font color='blue'><font size='4'>"+request.getAttribute("wrong")+"");
			
			out.print("</div>"); 
			}
			
			 %>			
			 		
			 		<tr></tr>
				  	<tr></tr>
				  	<tr></tr>
					<tr><td>BOOK NAME:</td><td> <input type="text" name="bookname"/></td></tr>
					<tr><td>AUTHOR NAME:</td><td> <input type="text" name="authorname"/></td></tr>
					<tr><td>Link:</td><td> <input type="text" name="link"/></td></tr>
					
					<tr><td></td><td><input type="submit" value="ADD"/>
					
					<INPUT TYPE=RESET VALUE="CLEAR"></td></tr>
					</table>
               		</form>
		
 

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
                    <li><a href="Login.jsp">Login</a></li>
                    
                     <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="contactus.jsp">Contact Us</a></li>
            </ul>
                
                Copyright © 2070 <a href="#">S And N Library</a> 
               </div>
    
</div>
</body>
</html>