<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>box.jsp</title>
<style type="text/css">

div {
	border: 10px dotted gray;
	width:100px;
	height:100px;
	position: absolute;
	text-align: center;
	line-height: 100px;
	font-weight: bold;
	border-radius: 20px;

}

div:nth-of-type(1){
   top: 100px;
   left: 100px;
   background: pink;
}

div:nth-of-type(2){
   top: 200px;
   left: 200px;
   background:plum;
}
div:nth-of-type(3){
   top: 300px;
   left: 300px;
   background: lightsalmon;
}
div:nth-of-type(4){
   top: 400px;
   left: 400px;
   background: lightgray;
}


</style>
</head>
<body style="position: relative; border: 1px solid purple;">
<h1>absolute의 이해</h1>
<hr>
<div>box1</div>
<div>box2</div>
<div>box3</div>
<div>box4</div>

</body>
</html>