package com.capgemini.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.mockito.Mockito.when;

import java.awt.datatransfer.Clipboard;
import java.util.Date;

import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import com.capgemini.model.Customer;
import com.capgemini.model.Merchant;
import com.capgemini.repository.AdminChatRepository;
import com.capgemini.repository.CustomerChatRepository;
import com.capgemini.repository.MerchantChatRepository;
import com.capgemini.service.ChatService;
import com.capgemini.service.ChatServiceImpl;

public class TestChat {

	@Mock
	CustomerChatRepository customerChatRepository;

	@Mock
	MerchantChatRepository merchantChatRepository;

	@Mock
	AdminChatRepository adminChatRepository;

	ChatService chatService;

	@Before
	public void setUp() throws Exception {
		MockitoAnnotations.initMocks(this);

		chatService = new ChatServiceImpl(customerChatRepository, merchantChatRepository, adminChatRepository);
	}

	@Test
	public void testSendMessage() {

	}

	@Test
	public void testSender() {

	}

	@Test
	public void testReceiver() {

	}

	@Test
	public void testMessage() {

	}

	@Test
	public void testNewConversation() {

	}

	@Test
	public void testPresentConversation() {

	}

	@Test
	public void testSendingHyperlink() {

	}

	@Test
	public void testSendingMessageToOfflineUser() {

	}

	@Test
	public void testTimeOfMessage() {

	}

	@Test
	public void testDeleteChat() {

	}

	@Test
	public void testSedingEmail() {

	}

	@Test
	public void testCopyPaste() {

	}

	@Test
	public void testEnterKeyToSend() {

	}

	@Test
	public void testMessageLength() {

	}

	@Test
	public void testReceiveMessage() {

	}

	@Test
	public void test() {

	}
}
