package com.sunny.todo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sunny.todo.domain.User;
import com.sunny.todo.form.UserForm;
import com.sunny.todo.service.UserService;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	@Autowired
    private UserService userService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLoginPage(Model model) {
		model.addAttribute("userForm", new User());
		return "login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@Valid @ModelAttribute("userForm") UserForm userForm,
        				BindingResult bindingResult,
			            HttpServletRequest request,
        				Model model) {
		
		if (bindingResult.hasErrors()) {
			return "login";
        }
		
		User user = new User();
        user.setUsername(userForm.getUsername());
        user.setPassword(userForm.getPassword());
	
		Long userId = userService.login(user);

		if(userId == null) {
			model.addAttribute("errorMessage", "Please check your username or password.");
			return "login";
		}
		
		HttpSession session = request.getSession(true);
		session.setAttribute("userId", userId);
		session.setAttribute("username", user.getUsername());
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String showJoinPage(Model model) {
	    model.addAttribute("userForm", new UserForm());
		return "join";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(@Valid @ModelAttribute("userForm") UserForm userForm,
			            BindingResult bindingResult,
			            Model model) {
		 
		if (bindingResult.hasErrors()) {
			return "join";
        }
		
		User user = new User();
        user.setUsername(userForm.getUsername());
        user.setPassword(userForm.getPassword());
        User savedUser = userService.saveUser(user);	
        
        if(savedUser == null) {
    	   model.addAttribute("errorMessage", "Username is already taken.");
    	   return "join";
        }

		return "redirect:/user/login";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public String logout (HttpServletRequest request) {
		
		HttpSession session = request.getSession(false);
        if (session != null) {
        	session.invalidate();
        }
        
		return "redirect:/";
	}
}
