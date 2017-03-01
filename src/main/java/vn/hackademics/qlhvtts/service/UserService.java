package vn.hackademics.qlhvtts.service;


import vn.hackademics.qlhvtts.model.User;

public interface UserService {

	void save(User user);
	
	User findById(int id);
	
	User findBySso(String sso);
	
}