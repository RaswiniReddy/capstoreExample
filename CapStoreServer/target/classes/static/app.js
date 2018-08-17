$(document).ready(function() {
	// setConnected(false);
	$("#sendMessage").click(function() {
		sendMessage();
	});
});

var stompClient = null;
var receiverObj = null;

function setConnected(connected) {
	if (connected) {
		$("#conversation").show();
		$("#textMessageDiv").show();
	} else {
		$("#conversation").hide();
		$("#textMessageDiv").hide();
	}
}

function openChat() {
	var socket = new SockJS('/socket');
	stompClient = Stomp.over(socket);
	stompClient.connect({}, function(frame) {
		setConnected(true);
		console.log('Connected: ' + frame);
		stompClient.subscribe('/topic/greetings', function(textMessage) {
			showMessages(JSON.parse(textMessage.body).content);
		});
	});
	$("#sendMessageDiv").hide();
	$.ajax({
		url : "/customer",
		type : "GET",
		data : {
			'customerId' : "13"
		},
		success : function(result) {
			receiverObj = result;
			$("#receiverName").text(result.name);
		}
	});
}

function sendMessage() {
	stompClient.send("/app/chat", {}, JSON.stringify({
		'message' : $("#message").val(),
		'senderId' : 3,
		'receiverId' : receiverObj.id
	}));
	$("#message").val("");
}

function showMessages(message) {
	$("#messages").append("<tr><td>" + message + "</td></tr>");
}