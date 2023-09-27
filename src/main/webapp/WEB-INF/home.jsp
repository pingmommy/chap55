<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>flex.jsp</title>
<style type="text/css">

ul{
	border: 2px solid red;
	display: flex;
	list-style: none;
	padding: 0;
	font-size: 20pt;
	height: 90px;
	position: fixed;
	top: 0px;
	left: 0px;
	margin: 0;
	}

li{
	border: 1px solid lightblue;
	width: 100px;
	padding: 1em;
	text-align: center;
	flex-shrink: 0;
	
}

a{
	text-decoration: none;
	color: gray;
}

li:hover {
 	text-shadow: 10px 10px 10px;
}

iframe {
	border: 1px solid red;
}

body {
	margin-top: 150px;
}

.perspective {
	border: 5px solid salmon;
	display: inline-block;
	perspective:500px;
	position: relative;
	top:0px;
}

.cube {
	border: 5px solid gray;
	display: inline-block;
	transform-style: preserve-3d;
	position: relative;
	top:0px;
}

.base{
	border: 5px solid pink;
	width: 50px;
	height: 50px;
	position:absolute;
	transform:translateY(100px);
	top:0px;
}
</style>
<script type="text/javascript">
function resize(){
	
	iframe = document.querySelector('iframe');
	iframe.style.height = getComputedStyle(iframe.contentDocument.documentElement).height;
	
}

window.onload = () => {
	setInterval(resize,100);
}

</script>

</head>
<body>
<hr>
<ul>
	<!-- <li><img width="50" src="/media/fubao.jpg" ></li> -->
	<li style="padding-top:5px;">
	<section class="perspective">
		<article class="cube">
		 	<div class="base"></div>
		</article>
	</section>
	</li>
	<li><a target="content" href="/alpha/fill">fill</a></li>
	<li><a target="content" href="/alpha/cross">cross</a></li>
	<li><a target="content" href="/alpha/race">race</a></li>
	<li><a target="content" href="/alpha/zigzag">zigzag</a></li>
	<li><a target="content" href="/dept/list">dept</a></li>
	<li><a target="content" href="/emp/list">emp</a></li>
</ul>
<hr>
<iframe src="/alpha/fill" 
        name="content" 
        width="100%" 
        sendbox="allow-same-origin"
        scrolling="no"
        frameborder="0";
        onload="resize();"
        >
iframe을 지원하지 않는 않는 브라우저는 이 글이 보입니다. 

</iframe>
</body>
</html>