package com.capgemini.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.capgemini.model.Merchant;

@Repository
public interface MerchantChatRepository extends JpaRepository<Merchant, Integer> {

	@Query("select m from Merchant m where m.id=?1")
	public Merchant findMerchant(int merchantId);
}
