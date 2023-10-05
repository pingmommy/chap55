<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cube4.jsp</title>
<style type="text/css">

.perspective {
/* 	 border: 20px dashed plum;
 */	 display: inline-block;
	 margin: 200px 0px 0px 200px;
	
 	perspective: 500px;
 
	
}

.cube {
	/* border: 10px dotted gray; */
	display: inline-block;
	transform-style: preserve-3d;
	
	animation : rotate 10s infinite linear;
	
	/* transform: rotateX(45deg); */
}

.base {
	border: 2px solid pink;
	width:50px;
	height: 50px;
	/* background: pink; */
	text-align: center;
	font-size: 1em;
	line-height: 50px;	
	
}

.front,.back,.left,.right,.top,.bottom {
	position: absolute;
	top:0px;
	left:0px; 
	opacity:0.5;
	box-shadow: 0px 0px 10px 5px gray;
}

.front {

	transform: translateZ(25px);
	background: lightpink;
}

.back {

	transform: rotateY(180deg) translateZ(25px);
	background: lightgray;
}

.left {
	transform: rotateY(-90deg) translateZ(25px);
	background: lightsalmon;
	
}

.right {
	transform: rotateY(90deg) translateZ(25px);
	background: plum;
	
}

.top {
	transform: rotateX(90deg) translateZ(25px);	
}

.bottom {
	transform: rotateX(-90deg) translateZ(25px);	
}

@keyframes rotate {
	from {
		transform: rotateX(0deg) rotateY(360deg) rotateZ(0deg);
	}
	
	to {
		transform: rotateX(360deg) rotateY(0deg) rotateZ(360deg);	
	}
}


</style>
</head>
<body>
<h2>CSS 3D 응용 큐브 만들기</h2>
<hr>
<section class="perspective">
	<article class="cube">
		<div class="base"></div>	
		<div class="base front"></div>	
		<div class="base back"></div>	
		<div class="base left"></div>	
		<div class="base right"></div>	
		<div class="base top"></div>	
		<div class="base bottom"></div>	
	</article>
</section>
</body>
</html>