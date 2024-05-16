<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.io.IOException"%>
<%@page import="org.apache.catalina.webresources.Cache"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>

<!DOCTYPE html>
<%@ page import = "javax.servlet.ServletContext" %>  
<%@ page import = "java.io.PrintWriter" %>
<%@ page import = "java.io.PrintWriter" %>
<%@ page import = "java.time.LocalDateTime" %> 
<%@ page import = "java.time.format.DateTimeFormatter" %>
<%@ page import = "java.text.SimpleDateFormat" %> 
<%@ page import = "java.util.Calendar" %>
<%@ page import = "java.util.Date" %>
<%@ page import = "javax.servlet.ServletContext" %>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
	 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	 <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital@1&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style type="text/css">
	body{
		display: flex;
		justify-content: center;
		align-items: center;
		height: 500px;
		background-color: #222;
		font-size: 120%;
		background-image: url('https://source.unsplash.com/1600x900/?landscape');
	}
	.cart{
		background-color: #000000d0;
		color: white;
		padding: 2em;
		border-radius: 30px;
		width: 100%;
		max-width: 420px;
		padding-right: 1em;

	}
        h3{
                font-family: "Montserrat", sans-serif;
                font-optical-sizing: auto;
                font-weight: 688;
                font-style: italic;
                margin: 10px;
                font-size: 20px;
               
        }
        .search{
        	display: flex;
        	align-items: center;
        	justify-content: center;
        	
        }
        input{
        	padding: 0.3em;
        	border-radius: 18px;
        	border: none;
        	outline: none;
        	background: #7c7c7c2d;
        	color: white;
        	width: calc(100% - 80px);
        }
        button{
        	margin: 0.5em;
        	border-radius: 50%;
        	border: none;
        	height: 46px;
        	width: 46px;
        	outline: none;
        	background: #7c7c7c2d;
        	color: white;
        	cursor: pointer;
        }
        .temp{
            font-family: "Montserrat", sans-serif;
            font-optical-sizing: auto;
            font-weight: 688;
            font-style: italic;
            margin: 10px;
            font-size: 30px;
            margin-left: 80px;
        }
        .humi{
           font-family: "Montserrat", sans-serif;
           font-optical-sizing: auto;
           font-weight: 450;
           font-style: italic;
           margin: 8px;
           font-size: 13px;
           margin-left: 70px;
        }
       
</style>
<body>
<form action="WebApp">
	<div class="cart">
		<div class="search">	
	            <input type="text" name="search" class="search-bar" placeholder="Search">
                    <button style="font-size:24px"><i class="fa fa-search"></i></button>
        </div>
</form>
<%
              ServletContext context=getServletContext();  
                double n=(double)context.getAttribute("temp1");
                int i = (int)n;
               // double n1 = (double)context.getAttribute("Humidity");
               // int i1 = (int)n1;
                double n2 = (double)context.getAttribute("wind"); 
                int i2 = (int)n2;
                long n3 = (long)context.getAttribute("Pressure");
                int n4 = (int)context.getAttribute("temp2");
                int n5 = (int)context.getAttribute("temp3");
                int n6 = (int)context.getAttribute("temp4");
                int n7 = (int)context.getAttribute("h");
                int n8 = (int)context.getAttribute("m");
                int n9 = (int)context.getAttribute("s");
                String n10 = (String)context.getAttribute("City");
          %>
        <div class="weather">
        	<div class="city">
        		 <h3> Weather in <%out.print(n10); %></h3>
        	</div>
        
	     </div>
	      
	     <div>
	         <h3 class="temp"><%out.print(i+"°C"); %></h3>
	     </div>
	    
	     <div>
	         <p class="humi"><%out.print("Wind : "+i2+"km/h"); %></p>
	     </div>
	     <div>
	         <p class="humi"><%out.print("Pressure : "+n3); %></p>
	     </div>
	     <div>
	         <p class="humi"><%out.print("Sunrise : "+n4+":"+n5+":"+n6); %></p>
	     </div>
	     <div>
	         <p class="humi"><%out.print("sunset : "+n7+":"+n8+":"+n9); %></p>
	     </div>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>