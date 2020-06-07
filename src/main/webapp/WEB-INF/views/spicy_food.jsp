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
	 
	 
	 
</head>
<body>
	<script type="text/javascript">
			function check() {
				  if(fr.cause.value == "") {
				    alert("글을 입력해주세요.");
				    return false;
				  } 
				  else{
					  return true;
				  }
				}
	</script>
	
	<div class="container" style="text-align:center;">
		<div class="jumbotron">
			<h1 style="text-align:center;">
				매운 음식을 왜 선호할까?  
			</h1>
			<h5>
				<a href="<c:url value='/'/>">돌아갈래</a>
			</h5>
		</div>
		<div class="row">
			<form method="POST" name="fr" onsubmit="return check()">
				<table class="table">
					<tr>
						<td colspan="2">
							<input class="form-control" type="text" name="cause" />
						</td>
						<td style="text-align:center;">
							<input class="btn" type="submit" name="의견내기" style="width:100%;"/>
						</td>
					</tr>
					<c:forEach var="list" items="${list}">
					<tr style="text-align:center;">
						<td><c:out value="${list.op_opinion }"/></td>						
<%-- 						<td><c:out value="${list.op_date}"/></td> --%>
						<td><a href="<c:url value='/spicyfood/good?op_num=${list.op_num}'/>">👍</a></td>
						<td><c:out value="${list.op_like}"/></td>
					</tr>
					</c:forEach>					
				</table>
			</form>
		</div>
	</div>
	
	
	

</body>
</html>
