package com.capgemini.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.HtmlUtils;

import com.capgemini.model.Admin;
import com.capgemini.model.ChatMessage;
import com.capgemini.model.Customer;
import com.capgemini.model.Greeting;
import com.capgemini.model.ChatMessage;
import com.capgemini.model.Merchant;
import com.capgemini.service.ChatService;

@RestController
public class ChatController {

	@Autowired(required = true)
	private ChatService chatService;

	@Autowired
	private SimpMessagingTemplate messagingTemplate;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public Admin getAdmin(@RequestParam("adminId") String adminId) {
		return chatService.getAdmin(Integer.parseInt(adminId));
	}

	@RequestMapping(value = "/merchant", method = RequestMethod.GET)
	public Merchant getMerchant(@RequestParam("merchantId") String merchantId) throws NumberFormatException, Exception {
		return chatService.getMerchant(Integer.parseInt(merchantId));
	}

	@RequestMapping(value = "/customer", method = RequestMethod.GET)
	public Customer getCustomer(@RequestParam("customerId") String customerId) {
		return chatService.getCustomer(Integer.parseInt(customerId));
	}

	@RequestMapping(value = "/default")
	public String defaultPage() {
		return "DefaultPage";
	}

	/*
	 * @MessageMapping("/chat")
	 * 
	 * @SendTo("/topic/greetings") public void greeting(ChatMessage message) throws
	 * Exception { int senderId = message.getSenderId(); Customer customer =
	 * chatService.getCustomer(senderId);
	 * messagingTemplate.convertAndSendToUser(customer.getName(), "/queue/reply",
	 * message.getMessage()); }
	 */
	@MessageMapping("/chat")
	@SendTo("/topic/greetings")
	public Greeting greeting(ChatMessage message) throws Exception {
		return new Greeting(HtmlUtils.htmlEscape(message.getMessage()));
	}
}
