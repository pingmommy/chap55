<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>shadow.jsp</title>
<style type="text/css">
.box{
	margin:50px; 
	padding:50px;
	border: 50px solid pink;
	
	width:200px;
	height:200px;
}


#box1{
	margin: 50px 150px;
	box-sizing: content-box; 
	box-shadow: 20px 20px 60px lightpink;
	font-size: 3em;
	text-shadow: 10px 10px 5px hotpink;
	
}

#box2{
	box-sizing: border-box;
	border-color:darkgray;
	box-shadow: 0px 0px 40px 50px lightgrey;
}



</style>
</head>
<body>
<h1>shadow</h1>

<div id="box1" class="box">content box</div>
<div id="box2" class="box">border box</div>
</body>
</html>