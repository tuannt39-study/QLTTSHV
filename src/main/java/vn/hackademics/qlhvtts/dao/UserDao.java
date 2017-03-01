package vn.hackademics.qlhvtts.dao;


import vn.hackademics.qlhvtts.model.User;

public interface UserDao {

	void save(User user);
	
	User findById(int id);
	
	User findBySSO(String sso);
	
}

