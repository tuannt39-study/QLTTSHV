package vn.hackademics.qlhvtts.dao;

import vn.hackademics.qlhvtts.model.UserProfile;

import java.util.List;


public interface UserProfileDao {

	List<UserProfile> findAll();
	
	UserProfile findByType(String type);
	
	UserProfile findById(int id);
}
