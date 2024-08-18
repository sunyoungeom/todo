package com.sunny.todo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showMainPage(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession(false);
        if (session != null) {
            model.addAttribute("username", session.getAttribute("username"));
            return "dashboard";
        }
	
		return "index";
	}	
}
