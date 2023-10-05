<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>box.jsp</title>
<style type="text/css">


div {
 border: 1px solid red;
 width: 100px;
 height: 100px;	
 position: relative;
}

div:nth-of-type(1) {
	background: red;
	z-index: 100;
}

div:nth-of-type(2) {
	background: yellow;
	top: -50px;
	z-index: 99;
}
</style>
</head>
<body>
<h1>z_index의 이해</h1>

<div id="box1">box1</div>
<div id="box2">box2</div>

</body>
</html>