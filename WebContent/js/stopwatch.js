/**
 * 
 */

const time = document.getElementById('time');
const startButton = document.getElementById('start');
const stopButton = document.getElementById('stop');
const resetButton = document.getElementById('reset');

// 開始時間
let startTime;
// 停止時間
let stopTime = 0;
// タイムアウトID
let timeoutID;

// 時間を表示する関数
function displayTime() {

	const currentTime = new Date(Date.now() - startTime + stopTime);
	//Thu Jan 01 1970 09:00:00 GMT+0900 が基準になっているので9を差し引く必要がある
	const h = String(currentTime.getHours() - 9).padStart(2, '0');
	const m = String(currentTime.getMinutes()).padStart(2, '0');
	const s = String(currentTime.getSeconds()).padStart(2, '0');
	const ms = String(currentTime.getMilliseconds()).padStart(3, '0');

	time.textContent = `${h}:${m}:${s}.${ms}`;
	timeoutID = setTimeout(displayTime, 10);
}

// スタートボタンがクリックされたら時間を進める
let start_time = 0;
var tableElem = document.getElementById('myTable');
var trElem = tableElem.tBodies[0].insertRow(-1);
startButton.addEventListener('click', () => {
	if (start_time == 0) {
		start_time = Date.now();
		trElem.insertCell(0).appendChild(document.createTextNode('カウント'));
		trElem.insertCell(1).appendChild(document.createTextNode('スタート'));
	}
	startButton.disabled = true;
	stopButton.disabled = false;
	resetButton.disabled = true;
	startTime = Date.now();
	displayTime();
});

// ストップボタンがクリックされたら時間を止める
stopButton.addEventListener('click', function() {
	startButton.disabled = false;
	stopButton.disabled = true;
	resetButton.disabled = false;
	clearTimeout(timeoutID);
	stopTime += (Date.now() - startTime);
});

// リセットボタンがクリックされたら時間を0に戻す
resetButton.addEventListener('click', function() {
	for (let i = 1; i <= count + 1; i++) {
		tableElem.deleteRow(i);
	}
	startButton.disabled = false;
	stopButton.disabled = true;
	resetButton.disabled = true;
	time.textContent = '00:00:00.000';
	set_time = 0;
	rap_time = 0;
	stopTime = 0;
	count = 0;
});



var set_time = 0;
var rap_time = 0;
var duration = 0;
var count = 0;
const add_button = document.getElementById("rap");
add_button.addEventListener('click', function() {
	console.log('クリックされました');

	// tbody要素にtr要素（行）を最後に追加
	var trElem = tableElem.tBodies[0].insertRow(-1);
	trElem = tableElem.tBodies[0].insertRow(-1);
	count++;
	set_time = start_time;
	rap_time = Date.now();
	duration = (rap_time - set_time) / 1000;
	trElem.insertCell(0).appendChild(document.createTextNode('rap-count' + count));
	trElem.insertCell(1).appendChild(document.createTextNode(duration + '秒'));
}, false);