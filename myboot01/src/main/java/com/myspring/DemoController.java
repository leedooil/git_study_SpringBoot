package com.myspring;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DemoController {
	@ResponseBody
	@RequestMapping("/")
	public String hone() {
		System.out.println("sample");
		return "Hello Boot!!";
		
	}
	
	@RequestMapping("/leedooil.do")
	public String hello(Model model) {
		System.out.println("안녕하세요");
		model.addAttribute("message","hello.JSP입니다.!");
		return "hello";
	}
}
