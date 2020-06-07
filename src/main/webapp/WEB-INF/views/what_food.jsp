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
			$('#answer').toggle();  // '아니 그럼 ..' 텍스트 나오게 하기
			
			// 2초마다 될 수 있게 
			setInterval(function(){
				var fd_num = parseInt(Math.floor(Math.random()*(14))+1); //1~14 랜덤하게 뽑기
				var food1 = {
						"fd_num" :fd_num 
				} //json 형식으로 만들기
				var a = "hi"
				console.log(fd_num);
				
				$.ajax({
		            url: "whatFood",
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
			},2000);	
		};	

	</script>
	
</head>
<body>
	<div class="container" style="text-align:center;">
		<div class="jumbotron">
			<h1 style="text-align:center;">
				그래서 뭐 먹고싶은데  
			</h1>
			<h5>
				<a href="<c:url value='/'/>">안먹을래</a>
				
			</h5>
		</div>
		<div class="row">
			<button class="btn btn-xs"id="btn1" onclick="test()">몰라ㅜ</button>
			<hr>
		</div>
		<div class="row" id="answer" style="display:none;">
			<p style="color:black;">아니 그럼</p> 
				<div id="result" style="color:red;"></div> 
				<br>
			<p style="color:black;">먹어..........</p>
		</div>
		<hr>
		<div class="row">
			ajax 사용하여 비동기 방식으로 음식 이름 가져오기. 
			2초마다 새로고침 없이!
		</div>
	</div> 
	
	
	
	

</body>
</html>
