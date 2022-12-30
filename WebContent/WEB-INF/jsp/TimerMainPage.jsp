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
	<div class="container">
		<div class="clock">
			<p class="clock-date"></p>
			<p class="clock-time"></p>
	    	<p class="click-count"></p>
    	</div>
    </div>
    <div>
    </div>
	<!-- JavaScriptファイル読み込み -->
	<script src="<%=request.getContextPath() %>/js/clock.js"></script>
</body>
</html>