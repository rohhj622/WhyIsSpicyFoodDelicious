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
    
    <!-- jQuery -->
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">	
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">	
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> 
	
	<script type="text/javascript">
		$(document).ready(function(){
			$.ajax({
	            url: "test",
	            type: "get",
	    		data : 'hi', 
	            success: function(data){
	            	console.log(data);
	                $('#result').text(data);
	            },
	            error: function(){
	            	console.log('nope');
	            }
	        });	
		});
		
		function test(){
			console.log('hi');
			var fd_num = parseInt(Math.floor(Math.random()*(7))+1);
			var food1 = {
					"fd_num" :fd_num 
			}
			var a = "hi"
			console.log(fd_num);
			
			$.ajax({
	            url: "test",
	            type: "post",    
	    		data : food1, 
	            success: function(data){
	            	console.log(data);
	                $('#result').text(data);
	            },
	            error: function(){
	            	console.log('nope');
	            }
	        });	
		};	

	</script>
	
</head>
<body>
	<button id="btn1" onclick="test()">simpleAJAX</button>
	<div id="result"></div>
	
	

</body>
</html>
