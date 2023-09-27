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
	
	transition: top 2s, left 2s;
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


article {
	 border: 10px solid green;
	 width: 600px;
	 height: 600px;
	 position:relative;
	 overflow: scroll;
	top: 100px;
    left: 100px;
  	transition: top 2s, left 2s;  
  
}


</style>
</head>
<body>
<h1>absolute의 이해</h1>
<article id="offset">
<div id="box1">box1</div>
<div id="box2">box2</div>
<div id="box3">box3</div>
<div>box4</div>
</article>
</body>
</html>