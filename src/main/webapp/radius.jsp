<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>radius.jsp</title>
<style type="text/css">
.box{
	margin:50px; 
	padding:50px;
	border: 50px solid pink;
	
	width:200px;
	height:200px;
}


#box1{
	box-sizing: content-box; 
		border-radius: 40px 20px 30px 10px;
	
}

#box2{
	box-sizing: border-box;
	border-radius: 100px;
}

</style>
</head>
<body>
<h1>radius</h1>

<div id="box1" class="box">content box</div>
<div id="box2" class="box">border box</div>
</body>
</html>