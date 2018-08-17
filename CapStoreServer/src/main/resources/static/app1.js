$(document).ready(function() {
	$("form").on('submit', function(e) {
		e.preventDefault();
	});
	$("#openChat").click(function() {
		connect();
	});
	$("#closeChat").click(function() {
		closeChat();
	});
	$("#sendMessage").click(function() {
		sendMessage();
	});
});

var stompClient = null;

function setConnected(connected) {
	$("#openChat").prop("disabled", connected);
	$("#closeChat").prop("disabled", !connected);
	if (connected) {
		$("#conversation").show();
	} else {
		$("#conversation").hide();
	}
	$("#messages").html("");
}

function connect() {
	var socket = new SockJS('/socket');
	stompClient = Stomp.over(socket);
	stompClient.connect({}, function(frame) {
		setConnected(true);
		console.log('Connected: ' + frame);
		stompClient.subscribe('/user/queue/reply', function(textMessage) {
			showMessages(JSON.parse(textMessage.body).content);
		});
	});
	$("#receiverName").text("Receiver Name comes here");
}

function closeChat() {
	if (stompClient !== null) {
		stompClient.disconnect();
	}
	setConnected(false);
	console.log("Disconnected");
}

function sendMessage() {
	stompClient.send("/app/chat", {}, JSON.stringify({
		'message' : $("#message").val(),
		'senderId' : 3,
		'receiverId' : 8
	}));
	$("#message").val("");
}

function showMessages(message) {
	$("#messages").append("<tr><td>" + message + "</td></tr>");
}
