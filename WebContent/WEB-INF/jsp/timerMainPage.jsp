<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Digital Clock</title>
  <!-- CSSファイル読み込み -->
  <link rel="stylesheet" href="<%=request.getContextPath() %>/css/style.css">
</head>
<body>
    <nav>
    	<li>メニュー1</li>
    	<li>メニュー2</li>
    	<li>メニュー3</li>
    	<li>メニュー4</li>
    </nav>
    <br>
    <br>
    <br>
    <br>
    <br>
	<div id="content">
		<div class="container" id="main">
			<div class="clock">
				<p class="clock-date"></p>
				<p class="clock-time"></p>
		    	<p class="click-count"></p>
	    	</div>
	    </div>
    </div>
    <div id="content">
	    <button class="favorite styled" type="button" id="first_button" >
	    	ストップウォッチ
		</button>
        <button class="favorite styled" type="button" id="second_button">
	    	2nd to favorites
		</button>
    </div>
    <div>
    </div>
    <footer>
    	<p>製作者：○○</p>
    </footer>
	<!-- JavaScriptファイル読み込み -->
	<script>
	document.getElementById("first_button").addEventListener("click", function () {
		  location.replace("http://localhost:8080/webTimer/StopWatch");
		}, false);
	</script>
	<script src="<%=request.getContextPath() %>/js/clock.js"></script>
</body>
</html>