package com.sunny.todo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/api")
public class TodoApiController {

	// 전체 조회
	@RequestMapping(value = "/users/{userId}/todos", method = RequestMethod.GET)
    @ResponseBody
	public String rr(@PathVariable("userId") Long userId) {
		return "ok";
	}
	
	// 목록 조회
	@RequestMapping(value = "/users/{userId}/todo/{todoId}", method = RequestMethod.GET)
	@ResponseBody
	public String rre (@PathVariable("userId") Long userId, @PathVariable("todoId") Long todoId) {
		return "ok";
	}
	
	// 목록 생성
	@RequestMapping(value = "/users/{userId}/todos", method = RequestMethod.POST)
	@ResponseBody
	public String ee (@PathVariable("userId") String userId) {
		return "ok";
	}
	
	// 목록 수정
	@RequestMapping(value = "/users/{userId}/todos/{todoId}", method = RequestMethod.PUT)
	@ResponseBody
	public String eee (@PathVariable("userId") String userId, @PathVariable("todoId") Long todoId) {
		return "ok";
	}
	
	// 목록 삭제
	@RequestMapping(value = "/users/{userId}/todos/{todoId}", method = RequestMethod.DELETE)
	@ResponseBody
	public String eeee (@PathVariable("userId") String userId, @PathVariable("todoId") Long todoId) {
		return "ok";
	}
}
