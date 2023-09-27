<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>box.jsp</title>
<style type="text/css">


/*   @import url('https://fonts.googleapis.com/css2?family=Moirai+One&display=swap');
 */

div:nth-of-type(1){
	border:1px solid red;
	width: 100px;
	height: 100px;
	animation : exam2 2s infinite alternate;
}  

#di{
	width:200px;
	height:200px;
	border:1px solid red;
/* 	font-family: 'Moirai One', cursive;
	font-size: 5em;
	font-weight: bold;
	color: hotpink; */
	animation : exam2 2s infinite alternate;
}

@keyframes exam1 {
	from {
		border: 1px solid pink;
		transform: translateX(0) translateY(400px) rotate(0);
		background: pink;
	
	}
	
	50% {
		background: plum;
	}
	
	to {
		border : 50px solid gray;
		transform: translateX(400px) translateY(0px) rotate(3600deg);
		border-radius: 100%;
		background: gray;
	}
}

@keyframes exam2 {

	from {
		border: 1px solid pink;
		transform: translateY(600px);	 
	}
	
	to{
			border: 1px solid pink;
	
		transform:translateY(0px);
	}
   
}


</style>
</head>
<body>
<h1>animation의 이해</h1>
<div id="q">box</div>
<div id="di">푸바오♡</div>
</body>
</html>