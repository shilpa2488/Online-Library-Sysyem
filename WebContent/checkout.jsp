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
    		  <%if(request.getAttribute("sorrynewstaff")!=null)
			{
			out.print("<div>");
			out.print("<font color='blue'><font size='4'>"+request.getAttribute("sorrynewstaff")+"");
			
			out.print("</div>"); 
			}
			
			 %>
	
  
    	<% 
%>

<table width="300" height="100" border="1" align="center"><%
	HttpSession ses2 = request.getSession(false);
/*  String id = (String)ses2.getAttribute("id");
		String an = (String)ses2.getAttribute("authorname");
		String bn = (String)ses2.getAttribute("bookname");*/
		String un = (String)ses2.getAttribute("username");
		String id = request.getParameter("id"); 
		String bn = request.getParameter("bookname");
		String an = request.getParameter("authorname");
		System.out.println("id :"+id);
		System.out.println("an :"+an);
		System.out.println("bn :"+bn);
		System.out.println("un :"+un);
	//	String bookname=(String)session.getAttribute("bookname");
	//	String authorname=(String)session.getAttribute("authorname");
    //    String username=(String)session.getAttribute("username");
		int status = CheckoutBook.checkout(id, bn, an, un);
		try {
	if(status>0){
		
		out.print("<font color='blue'><font size='5'>Checkout done successfully..!");
		out.print("Please find the details below");
		out.println("<br>");
		out.println("<br>");
		out.println("<br>");
		request.setAttribute("checkout","checkout done successfully");
		Connection con=GetCon.getCon();
		PreparedStatement ps=con.prepareStatement("Select * from checkoutdetails where username = '"+un+"'");		
		ResultSet rs=ps.executeQuery();						
		out.print("<tr><th>BOOK</th><th>AUTHOR</th><th>IssueDate</th><th>ReturnDate</th></tr>");
		while(rs.next()){
			String issue = rs.getString(4);
			String rd = rs.getString(5);
			StringBuffer text = new StringBuffer(issue);
			StringBuffer text1 = new StringBuffer(rd);

				out.print("<tr>");
			out.print("<td>" + rs.getString(2) + "</td>");
			out.print("<td>" + rs.getString(3) + "</td>");
			out.print("<td>" + text.replace( 11 ,21 ,"") + "</td>");
			out.print("<td>" + text1.replace( 11 ,21 ,"") + "</td>");
			
			//if(rs.next())
			}			         				        									
		
		}
	else{
		out.print("your given name is wrong");
		request.setAttribute("wrong","your bookname and authorname is wrong");
%>			
				<INPUT TYPE=RESET VALUE="CLEAR"></td></tr>
				<jsp:forward page="issuenewbook.jsp"></jsp:forward> 
				<% 
			}		
		 }catch (SQLException e) {
			e.printStackTrace();
		}
		
		//}
		
			//}
			%></table><%
%>
    	
    	
		<%-- </table>--%>


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
                    
                     <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="contactus.jsp">Contact Us</a></li>
            </ul>
                
                Copyright © 2070 <a href="#">S And N Library</a> 
               </div>
    
</div>
</body>
</html>