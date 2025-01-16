<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*, com.hit.utility.DBUtil, javax.servlet.annotation.WebServlet" errorPage="errorpage.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <link rel="shortcut icon" type="image/png" href="images/Banner_Hit.png">
    <!--link rel="shortcut icon" type="image/ico" href="images/hit_fevicon.ico"-->
	
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tender Works</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/annimate.css">
    <link href="css/font-awesome.min.css" type="text/css" rel="stylesheet">
    <link href="css/SpryTabbedPanels.css" type="text/css" rel="stylesheet">
    <!--link rel="stylesheet" href="css/styles.css"-->
    <link href="https://fonts.googleapis.com/css?family=Black+Ops+One" rel="stylesheet">
    <link href="css/bootstrap-dropdownhover.min.css">
    <link rel="stylesheet" href="css/style2.css">
    <style>
	.tab{
	border-radius:1px;
		
		background-color:#E7E8D1;
		margin-left: 25%;
		width:450px;
		color:black;
		font-weight: bold;
		font-style:normal;
		text-align:center;
		font-size: 20px;
		margin-bottom:10px;
		padding:20px;
	}
    </style>
  </head>
<body>
	<!-- Including the header of the page  -->
	
	<jsp:include page="loginHeader.jsp"></jsp:include>
	
	<jsp:include page="menu.jsp"></jsp:include>
	
	<div class="clearfix hidden-sm hidden-xs" style="color:white;background-color: green; margin-top:-15px; margin-bottom: 12px"><marquee>Welcome to Tender Works</marquee>
 </div> <!--A green color line between header and body part-->
 
     <div class="container-fluid">
     
     	<div class="notice">
        <div class="col-md-3"style="margin-left:2%">
     		<% Connection con = DBUtil.provideConnection(); %>
     		
     		<jsp:include page="notice.jsp"></jsp:include><br>
     		
          <!-- Next marquee starting-->
          <jsp:include page="approved.jsp"></jsp:include><br>
          
        </div>  <!-- End of col-md-3-->
      </div> 
      
   <div class="col-md-8">
    <div class="marquee" style="border:2px black hidden; background-color:white; padding-top:0px;">
        <h4 style="background-color:green; margin-top:-1.8px; margin-bottom:1px;padding: 5px; text-align: center;color:white;font-weight:bold">
        &nbsp; <span id="pagetitle">Account Login</span></h4><!-- pagetitle id is given here -->
        <div class="marquee-content" style="align:center; padding-top:100px;min-height:480px;background-color : #A7BEAE">
      
      <table class="tab" style="color:blue;margin-bottom:50px;background-color:white; padding:25px;">
	
			<tr>
				<td id="show"></td>
			</tr>
	</table>
      
      
      
      <table class="tab hd brown" >
		<tr>
			<td style="color:black">USER LOGIN</td>
		</tr>
	</table>

	<table class="tab hd blue" border="0px" cellpadding="10" cellspacing="10" style="color:black">
		
		<tr>
			<td>
				<form action="LoginSrv" method="post">
				<br>
					Username: &nbsp; <input type="text" placeholder="Enter Email or VendorId" name="username" required="required" style="color:black;font-size:19px;"><br/><br/>
					Password: &nbsp; <input type="password" placeholder="Enter PassWord" name="password" required="required" style="color:black;font-size:19px;"><br/><br/>
					<input type="submit" value="Login As Vendor" name="user">&nbsp; &nbsp; &nbsp; &nbsp;
					<input type="submit" value="Login As Admin" name="user"><br/><br/>
				</form>
			</td>
			
		</tr>  
	</table>
      </div>
     </div>
     </div>
      
      
    </div> 
    
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
