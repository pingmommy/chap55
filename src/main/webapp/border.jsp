<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>box.jsp</title>
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
	border-width: 10px 20px 30px 40px;
	border-radius: 40px;
}

#box2{
	box-sizing: border-box;
	border-width:10px;
    border-style: dotted double solid double;
    border-color: mediumseagreen;
}

</style>
</head>
<body>
<h1>box모델의 이해</h1>

<div id="box1" class="box">content box</div>
<div id="box2" class="box">border box</div>
</body>
</html>