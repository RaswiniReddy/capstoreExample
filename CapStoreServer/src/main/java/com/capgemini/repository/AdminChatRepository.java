package com.capgemini.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.capgemini.model.Admin;

@Repository
public interface AdminChatRepository extends JpaRepository<Admin, Integer> {

	@Query("select a from Admin a where a.id=?1")
	public Admin findAdmin(int adminId);
}
