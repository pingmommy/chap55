<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gradient.jsp</title>
<style type="text/css">

body {
	background-image: url("/media/fubao.jpg"), url("/media/twin.jpg"), url("/media/grass.jpg");
	 background-repeat: no-repeat;
	background-size: 30%, 50%, 100%;
	background-attachment: fixed, scroll;
	background-position: bottom left, top right; 
}

div {
	 border : 1px solid red;
	 height : 2000px;
/* 	 background: linear-gradient(red,blue);
 */	 opacity: 0.5;
}


</style>
</head>
<body>
<h1>Background Image(attachment) 이해</h1>
<hr>
<div>box1</div>
<hr>

</body>
</html>