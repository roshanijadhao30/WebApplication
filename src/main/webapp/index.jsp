<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
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
    

</style>
<body>
<form action="WebApp">
	<div class="cart">
		<div class="search">	
	            <input type="text" name="search" class="search-bar" placeholder="Search">
                    <button style="font-size:24px"><i class="fa fa-search"></i></button>
        </div>
</form>
        <div class="weather">
        	<div class="city">
        		 <h3> Weather in Denver</h3>
        	</div>
        
	     </div>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>