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
		function test(){
			console.log('hi');
			var fd_num = parseInt(Math.floor(Math.random()*(7))+1);
			var food1 = {
					"fd_num" :fd_num 
			}
			
			
			console.log(fd_num);
			
			$.ajax({
	            url: "<c:url value='wantFoodajax'/>",
	            type: "POST",
	            dataType : 'json',                           //3
	    		contentType : 'application/json',            //4
	    		data : JSON.stringify(food1), 
	            success: function(data){
	            	console.log(data);
	                $('#result').text(data);
	            },
	            error: function(jqXHR, textStatus, errorThrown){
	            	console.log('nope');
	            	console.log("에러 발생~~ \n" + textStatus + " : " + errorThrown);
	            }
	        });
		};	
	</script>
	
</head>
<body>
<%-- 	<div class="container" style="text-align:center;">
		<div class="jumbotron">
			<h1 style="text-align:center;">
				그래서 뭐 먹고싶은데  
			</h1>
			<h5>
				<a href="<c:url value='/'/>">안먹을래</a>
			</h5>
		</div>
		<div class="row">
			아니 <h4 id='fd_name'></h4> 먹어 그럼
		</div>
	</div> --%>
	<button id="btn1" onclick="test()">simpleAJAX</button>
	<div id="result"></div>
	
	

</body>
</html>
