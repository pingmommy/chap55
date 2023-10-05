<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>box.jsp</title>
<style type="text/css">

img{
 float: left;
 margin: 20px;
}

div {
 border: 10px solid red;
 width: 100px;
 height: 100px;
 margin: 10px;
 float: right;
}

section {
 display: flex;
 justify-content: flex-end;
}

article {
 border: 10px solid red;
 width: 100px;
 height: 100px;
 margin: 10px;
 flex-shrink: 0; 
}

</style>
</head>
<body>
<h1>float의 이해</h1>
<hr>

<img alt="" src="http://via.placeholder.com/200X100">
<p>
Kevin McCarthy will not run for speaker again after the House ousted him from the top leadership post in a historic vote on Tuesday, a move that threatens to plunge House Republicans into even further chaos and turmoil.
The House will now need to elect a new speaker. There is no clear alternative to McCarthy who would have the support needed to win the gavel, but the race for a potential successor is already underway.
The vote to oust McCarthy and his decision not to run for the speakership again marks a major escalation in tensions for a House GOP conference that has been mired in infighting – and it comes just days after McCarthy successfully engineered a last-minute bipartisan effort to avert a government shutdown. No House speaker has ever before been ousted through the passage of a resolution to remove them.
“I don’t regret standing up for choosing governing over grievance. It is my responsibility. It is my job. I do not regret negotiating. Our government is designed to find compromise,” McCarthy said at a wide-ranging press conference Tuesday evening.
Dozens of his staffers were in the room listening with many emotional and hugging each other.
McCarthy told CNN’s Manu Raju he “might” endorse a successor and did not say whether he would remain in Congress. “I’ll look at that,” he said when asked.

Kevin McCarthy will not run for speaker again after the House ousted him from the top leadership post in a historic vote on Tuesday, a move that threatens to plunge House Republicans into even further chaos and turmoil.
The House will now need to elect a new speaker. There is no clear alternative to McCarthy who would have the support needed to win the gavel, but the race for a potential successor is already underway.
The vote to oust McCarthy and his decision not to run for the speakership again marks a major escalation in tensions for a House GOP conference that has been mired in infighting – and it comes just days after McCarthy successfully engineered a last-minute bipartisan effort to avert a government shutdown. No House speaker has ever before been ousted through the passage of a resolution to remove them.
“I don’t regret standing up for choosing governing over grievance. It is my responsibility. It is my job. I do not regret negotiating. Our government is designed to find compromise,” McCarthy said at a wide-ranging press conference Tuesday evening.
Dozens of his staffers were in the room listening with many emotional and hugging each other.
McCarthy told CNN’s Manu Raju he “might” endorse a successor and did not say whether he would remain in Congress. “I’ll look at that,” he said when asked.
</p>
<p>float의 원래 기능은 글에 사진을 삽입할 때 한 페이지에 유연하게 배치하기 위함이었으나 메뉴와 같이 블럭들을 수평으로 나열할 필요가 생길 때도 사용했다. 후자의 경우 요즘은  float을 쓰지 않고
flex 속성을 쓴다. float속성을 쓰면 아래 태그들도 따라서 float 되는 경향이 있는데, 이 때 style="clear:both;"를 쓰면 된다.</p>

<p>flex를 쓰는 경우 부모태그에 display 속성을 flext로 주면 하위태그들이 수평정렬된다. 디폴트는 왼쪽정렬인데, 오른 쪽으로 정렬하고 싶다면 부모태그에 justify-content: flex-end ->이 옵션을 주면 된다.
justify-content 옵션은 여러 개 있으므로 필요에 맞게 설정하면 된다. </p>

<p>flex는 화면이 작아지면 태그들을 떨어뜨리지 않고 비율에 맞게 줄어든다. 만약 줄어들지 않게 하려면 flex-shrink 속성을 주면 된다. </p>
<hr>
<div>box1</div>
<div>box2</div>
<div>box3</div>
<hr style="clear: both;">
<section>
 <article></article>
 <article></article>
 <article></article>
</section>

</body>
</html>