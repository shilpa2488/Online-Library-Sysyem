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
		   document.F1.accountno.focus()
		   return true
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
function AlertIt() {
	alert("Password  must  be  char's & can't be null");
	}
	
function clickAndDisable(link) {
	if (link.className != "visited") {
	       alert("new");
	       link.className = "visited";
	       return true;     
	    }
	    alert("old");
	    return false;
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
<%out.print("<a href='issuenewbook.jsp'>back</a>");%>
<table width="300" height="150" border="1" align="center"><%
		if(request.getParameter("bookname").length() !=0 && request.getParameter("authorname").length()!= 0){
			System.out.println("I am inside first if");
			String bn=request.getParameter("bookname");
			String an=request.getParameter("authorname"); 
			System.out.println(bn);
			System.out.println(an);
			System.out.println(an.length());
	      	  	try {
				Connection con=GetCon.getCon();
				PreparedStatement ps=con.prepareStatement("Select * from BOOKDETAILS where bookname = '"+bn+"' and authorname='"+an+"' ");		
				PreparedStatement ps1 = con.prepareStatement("Select * from CHECKOUTDETAILS where bookname = '"+bn+"' and authorname='"+an+"' ");
				ResultSet rs1=ps1.executeQuery();
				ResultSet rs=ps.executeQuery();
				
				out.print("<tr><th>ID</th><th>BOOKNAME</th><th>AUTHOR</th><th>Read_Online</th><th>CheckOut</th></tr>");
				while(rs.next()){
						out.print("<tr>");
					String id = rs.getString(1);
					String bookname = rs.getString(2);
					String authorname = rs.getString(3);					
					System.out.println("sp"+request.getParameter("id"));
					System.out.println("sa"+request.getAttribute("id"));
					out.print("<td>" + id + "</td>");
					out.print("<td>" + bookname + "</td>");
					out.print("<td>" + rs.getString(3) + "</td>");
					out.print("<td>" + rs.getString(4) + "</td>");
					boolean status = rs1.next();
					boolean check = false;
					if(!status){	
						System.out.println("I am inside here status is"+status);
						out.print("<td>");%>
						<a href="checkout.jsp?id=<%= rs.getString(1)%>&bookname=<%= rs.getString(2)%>&authorname=<%= rs.getString(3)%>">checkout</a>		
					<%
					out.print("</td>");
					}
					else{
					System.out.println("Now i am here with satus"+status);
						out.println("<td>" + "Already Booked");
					}
				}				
			} catch (SQLException e) {
				e.printStackTrace();
				out.print("your given name is wrong" +bn);
				request.setAttribute("wrong","your bookname and authorname is wrong");
				%>			
				<INPUT TYPE=RESET VALUE="CLEAR"></td></tr>
				<jsp:forward page="issuenewbook.jsp"></jsp:forward> 
				<% 	
			}
		}
		else if(request.getParameter("bookname").length()!=0 && request.getParameter("authorname").length()==0){
			String bn=request.getParameter("bookname"); 
			System.out.println(bn);
	      	  	try {
				Connection con=GetCon.getCon();
				PreparedStatement ps=con.prepareStatement("Select * from BOOKDETAILS where bookname = '"+bn+"'");		
				PreparedStatement ps1 = con.prepareStatement("Select * from CHECKOUTDETAILS where bookname = '"+bn+"'");
				ResultSet rs1=ps1.executeQuery();
				ResultSet rs=ps.executeQuery();
				System.out.println("result"+rs);
				out.print("<tr><th>ID</th><th>BOOKNAME</th><th>AUTHOR</th><th>Read_Online</th><th>CheckOut</th></tr>");
				while(rs.next()){
					out.print("<tr>");
					String id = rs.getString(1);
					String bookname = rs.getString(2);
					String authorname = rs.getString(3);
					out.print("<td>" + id + "</td>");
					out.print("<td>" + bookname + "</td>");
					out.print("<td>" + rs.getString(3).trim() + "</td>");
					out.print("<td>" + rs.getString(4) + "</td>");
					boolean status = rs1.next();
					boolean check = false;
					if(!status){
						System.out.println("I am inside here status is"+status);
						System.out.println("I am inside here status is"+id);
						System.out.println("I am inside here status is"+bookname);
						System.out.println("(rs.getString(1) is"+rs.getString(1));	
						out.print("<td>");%>
						<a href="checkout.jsp?id=<%= rs.getString(1)%>&bookname=<%= rs.getString(2)%>&authorname=<%= rs.getString(3)%>">checkout</a>		
					<%
					out.print("</td>");
					}else{
					System.out.println("Now i am here with satus"+status);
						out.println("<td>" + "Already Booked");
					}
				}
				} catch (SQLException e) {
				e.printStackTrace();
				out.print("your given name is wrong" +bn);
				request.setAttribute("wrong","your given book name is wrong");
				%>			
				<INPUT TYPE=RESET VALUE="CLEAR"></td></tr>
				<jsp:forward page="issuenewbook.jsp"></jsp:forward> 
				<%
			}
	      	  	}
		else if(request.getParameter("bookname").length()==0 && request.getParameter("authorname").length()!=0){			
			String an=request.getParameter("authorname"); 
			System.out.println(an);
	      	  	try {
				Connection con=GetCon.getCon();
				PreparedStatement ps=con.prepareStatement("Select * from BOOKDETAILS where authorname='"+an+"' ");		
				PreparedStatement ps1 = con.prepareStatement("Select * from CHECKOUTDETAILS where authorname='"+an+"' ");
				ResultSet rs1=ps1.executeQuery();
				ResultSet rs=ps.executeQuery();						
				out.print("<tr><th>ID</th><th>BOOKNAME</th><th>AUTHOR</th><th>Read_Online</th><th>CheckOut</th></tr>");
				if(rs.next()){
						out.print("<tr>");
					String id = rs.getString(1);
					String bookname = rs.getString(2);
					String authorname = rs.getString(3);					
					out.print("<td>" + id + "</td>");
					out.print("<td>" + bookname + "</td>");
					out.print("<td>" + rs.getString(3) + "</td>");
					out.print("<td>" + rs.getString(4) + "</td>");
					boolean status = rs1.next();
					boolean check = false;
					if(!status){	
						System.out.println("I am inside here status is"+status);
						out.print("<td>");%>
						<a href="checkout.jsp?id=<%= rs.getString(1)%>&bookname=<%= rs.getString(2)%>&authorname=<%= rs.getString(3)%>">checkout</a>		
					<%
					out.print("</td>");					
					}else{
					System.out.println("Now i am here with satus"+status);
						out.println("<td>" + "Already Booked");
					}					
					//if(rs.next())
					}				
				} catch (SQLException e) {
				e.printStackTrace();
				out.print("your given name is wrong" +an);
				request.setAttribute("wrong","your given author name is wrong");
				%>			
				<INPUT TYPE=RESET VALUE="CLEAR"></td></tr>
				<jsp:forward page="issuenewbook.jsp"></jsp:forward> 
				<% 	
			}
		}
	
		%></table><%
%>
 

<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*"%>
<%@ page import="com.onlinelibrary.*" %>

  		
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