package com.sunny.todo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/todo")
public class TodoController {

	@RequestMapping(method = RequestMethod.GET)
	public String showTodoListPage(Model model) {
		return "todo";
	}
}
