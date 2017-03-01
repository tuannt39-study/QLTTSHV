package vn.hackademics.qlhvtts.service;

import vn.hackademics.qlhvtts.model.UserProfile;

import java.util.List;


public interface UserProfileService {

	List<UserProfile> findAll();
	
	UserProfile findByType(String type);
	
	UserProfile findById(int id);
}
