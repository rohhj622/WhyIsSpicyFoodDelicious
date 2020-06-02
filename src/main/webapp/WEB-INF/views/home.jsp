<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<!-- Required meta tags -->
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">	
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">	
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> 
	 
</head>
<body>
	<div class="container">
		<div class="jumbotron">
			<h1 style="text-align:center;">
				매운 음식을 왜 선호할까?  
			</h1>
		</div>
		<div class="row">
			<form method="POST">
				<table class="table">
					<tr>
						<td>
							<input class="form-control" type="text" name="cause" />
						</td>
						<td style="text-align:center;">
							<input class="btn" type="submit" name="의견내기" style="width:100%;"/>
						</td>
					</tr>
					
					
				</table>
			</form>
		</div>
	</div>
	
	
	

</body>
</html>
