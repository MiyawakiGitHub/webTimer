<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Stopwatch</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style_stopwatch.css">
<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>
	<div class="container">
	<div class="clock">	
		<h1>Stopwatch⌚️</h1>
	</div>
		<div class="clock-time" id="time">00:00:00.000</div>
		<div class="clock">
			<input class="css-button css-button-sharp css-button-sharp--sand"
				id="start" type="button" value="start">
			<input id="stop" type="button" value="stop">
			<input id="rap" type="button" value="rap">
			<input id="reset" type="button" value="reset">
		</div>
	</div>
	<h1>テーブルに行を追加する</h1>
<!-- 
	<form name="myForm">
		<p>
			<input type="button" id="btnAdd" value="行の追加">
		</p>
	</form>
 -->
	<table id="myTable" border="1">
		<tr id="firstTr">
			<td>JavaScript</td>
			<td>スクリプト言語</td>
		</tr>
	</table>
	<script src="<%=request.getContextPath()%>/js/stopwatch.js"></script>
</body>
</html>