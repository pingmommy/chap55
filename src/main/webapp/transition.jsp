<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>trasition.jsp</title>
<style type="text/css">

div {
	border: 10px dotted gray;
	width:100px;
	height:100px;
    position: relative;
	transition : all 2s;
	
	top: 0px;
	left: 0px;
}

input:checked +div {
	
	background: blue;
	border-radius: 100%;
	left: 400px;
}


input:nth-of-type(1):checked +div {
	
	background: blue;
	border-radius: 100%;
	left: 400px;
	
	transition-timing-function: ease;
	background: yellow;
	
	cubic-bezier(.87,1.47,.16,1.24)
}


input:nth-of-type(2):checked +div {
	
	background: blue;
	border-radius: 100%;
	left: 400px;
	
	transition-timing-function: cubic-bezier(.87,1.47,.16,1.24);
	background: yellow;
	
	cubic-bezier(.2,1.97,.57,0)
	
}

input:nth-of-type(3):checked +div {
	
	background: blue;
	border-radius: 100%;
	left: 400px;
	
	transition-timing-function: cubic-bezier(.2,1.97,.57,0);
	background: yellow;
	
	
	
}



</style>
</head>
<body>
<h1>trasition의 이해</h1>
<input type="checkbox">
<div id="box1">box1</div>
<input type="checkbox">
<div id="box2">box2</div>
<input type="checkbox">
<div id="box3">box3</div>
<input type="checkbox">
<div id="box4">box4</div>

</body>
</html>