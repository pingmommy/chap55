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
	width:200px;
	height: 200px;
	/* background: pink; */
	text-align: center;
	font-size: 2em;
	line-height: 200px;	
	
}

.front,.back,.left,.right,.top,.bottom {
	position: absolute;
	top:0px;
	left:0px; 
	opacity:0.5;
	box-shadow: 0px 0px 50px 10px gray;
}

.front {

	transform: translateZ(100px);
	background: lightpink;
}

.back {

	transform: rotateY(180deg) translateZ(100px);
	background: lightgray;
}

.left {
	transform: rotateY(-90deg) translateZ(100px);
	background: lightsalmon;
	
}

.right {
	transform: rotateY(90deg) translateZ(100px);
	background: plum;
	
}

.top {
	transform: rotateX(90deg) translateZ(100px);	
}

.bottom {
	transform: rotateX(-90deg) translateZ(100px);	
}

@keyframes rotate {
	from {
		transform: rotateX(0deg) rotateY(360deg) rotateZ(0deg);
	}
	
	to {
		transform: rotateX(360deg) rotate(0deg) rotate(360deg);	
	}
}


</style>
</head>
<body>
<h2>CSS 3D 응용 큐브 만들기</h2>
<hr>
<section class="perspective">
	<article class="cube">
		<div class="base">Base</div>	
		<div class="base front">front</div>	
		<div class="base back">back</div>	
		<div class="base left">left</div>	
		<div class="base right">right</div>	
		<div class="base top">top</div>	
		<div class="base bottom">bottom</div>	
	</article>
</section>
</body>
</html>