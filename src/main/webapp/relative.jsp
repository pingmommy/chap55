<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>box.jsp</title>
<style type="text/css">

h1:nth-of-type(1){
	position: relative;
	top:200px;
	left:100px;
}


h1:nth-of-type(3){
	position: fixed;
	bottom:10px;
	left:100px;
}

div{
	height: 1000px;
	background: lightgray;
}

</style>
</head>
<body>
<h1>relative의 이해</h1>
<h1>static의 이해</h1>
<h1>fixed의 이해</h1>

<div id="box1" class="box">content box</div>
</body>
</html>