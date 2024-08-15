package com.sunny.todo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MainController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showMainPage(Model model) {
//		return "dashboard";

		return "index";
	}	
}
