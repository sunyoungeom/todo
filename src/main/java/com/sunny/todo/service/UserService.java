package com.sunny.todo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sunny.todo.domain.User;
import com.sunny.todo.repository.UserRepository;

@Service
public class UserService {

	@Autowired
    private UserRepository userRepository;

    public User saveUser(User user) {
    	if(!isUsernameAvailable(user.getUsername())) {
    		return null;
    	}
        return userRepository.save(user);
    }
    
    public Long login(User user) {
    	User loginUser = userRepository.findByUsername(user.getUsername());

		if (loginUser != null && user.getPassword().equals(loginUser.getPassword())) {
	        return loginUser.getId();
	    }
		return null;
    }
    
    private boolean isUsernameAvailable(String username) {
        return userRepository.findByUsername(username) == null;
    }
}
