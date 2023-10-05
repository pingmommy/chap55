<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>submenu.jsp</title>
<link rel="stylesheet" href="/css/cube.css">
<style type="text/css">
nav {
 border: 5px dashed yellow;
}

ul{
 border: 2px solid red;
 margin: 0px;
 flex: 
}

ol{
 border: 2px solid blue;
}

li{
 border: 2px solid green;
}

li>div {
 border: 4px dotted gray;
 
}

/* <a>태그는 인라인태그임. */
li>a {
 border: 4px dotted purple;
 padding: 5px;
 display: inline-block;
 font-size: 15px;
 
}


.menu-title {
 	padding: 5px;
 	font-size: 20px;
 	font-weight: bold;
}

.menu-item:last-child {
	margin-left:auto;
	margin-right:10px;
}

.menu-title:hover {
  display: hidden;
}

.menu {
	display: flex;

}

.menu-item {
	/* float: left; ->예전에는 수평메뉴를 만들 때 float으로 했다.*/
	
}

.sub-menu {
/* 	display:none; */

}

.sub-item{

}



</style>

<script type="text/javascript">

</script>
</head>
<body>
<h1>submenu 만들기</h1>		
<hr>
<nav>
<ul class="menu">
	<li class="menu-item">
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
    </li>
	<li class="menu-item">
		<div class="menu-title">Alpha</div>
		<ol class="sub-menu">
			<li class="sub-item"><a target="content" href="/alpha/fill">fill</a></li>
			<li class="sub-item"><a target="content" href="/alpha/cross">cross</a></li>
			<li class="sub-item"><a target="content" href="/alpha/race">race</a></li>
			<li class="sub-item"><a target="content" href="/alpha/zigzag">zigzag</a></li>
		</ol>
	</li>
	<li class="menu-item">
		<div class="menu-title">Animation</div>
		<ol class="sub-menu">
			<li class="sub-item"> <a target="content" href="/ani/fill"">ani_fill</a></li>
			<li class="sub-item"> <a target="content" href="/ani/cross"">ani_cross</a></li>
		</ol>
	</li>
	<li class="menu-item">
		<div class="menu-title">React</div>
		<ol class="sub-menu">
			<li class="sub-item"><a target="content" href="/react/fill">fill</a></li>
			<li class="sub-item"><a target="content" href="/react/cross">cross</a></li>
			<li class="sub-item"><a target="content" href="/react/race">race</a></li>
		</ol>
	</li>
	<li class="menu-item">
		<div class="menu-title">Employee</div>
		<ol class="sub-menu">
			<li class="sub-item"><a target="content" href="/dept/list">dept</a></li>
			<li class="sub-item"><a target="content" href="/emp/list">emp</a></li>
			<li class="sub-item"><a target="content" href="/salgrade/race">salgrade</a></li>
		</ol>
	</li>
	<li class="menu-item">
		<div class="menu-title">City</div>
		<ol class="sub-menu">
			<li class="sub-item"><a target="content" href="/city/list">city</a></li>
			<li class="sub-item"><a target="content" href="/country/list">country</a></li>
			<li class="sub-item"><a target="content" href="/language/list">language</a></li>
			<li class="sub-item"><a target="content" href="/search">search</a></li>
		</ol>
	</li>
	<li class="menu-item">
	    <div class="menu-title">Login</div>
	</li>
</ul>
</nav>
<hr>

<iframe name="content" 
        sendbox="allow-same-origin">

</iframe>
	
</body>
</html>