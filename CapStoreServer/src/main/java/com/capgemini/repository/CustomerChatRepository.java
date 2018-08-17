package com.capgemini.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.capgemini.model.Customer;

@Repository
public interface CustomerChatRepository extends JpaRepository<Customer, Integer> {

	@Query("select c from Customer c where c.id=?1")
	public Customer findCustomer(int customerId);

}
