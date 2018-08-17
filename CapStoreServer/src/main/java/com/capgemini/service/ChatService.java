package com.capgemini.service;

import java.util.Date;
import java.util.List;

import com.capgemini.model.Admin;
import com.capgemini.model.ChatMessage;
import com.capgemini.model.Customer;
import com.capgemini.model.Merchant;

public interface ChatService {

	public boolean sendMessage(ChatMessage chatMessage) throws Exception;

	public List<ChatMessage> loadMessages(int userId);

	public List<ChatMessage> loadChat(int userId);

	public boolean deleteChat(int userId);

	public boolean receiveMessage(int senderId, int receiverId, String Message, Date dateTime);

	public Admin getAdmin(int adminId);

	public Merchant getMerchant(int merchantId) throws Exception;

	public Customer getCustomer(int customerId);
}
