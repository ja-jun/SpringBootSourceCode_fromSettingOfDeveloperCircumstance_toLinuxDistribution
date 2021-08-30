package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
	// http://localhost:8071/home/main
	@RequestMapping("/home/main")
	@ResponseBody
	public String showMain() {
		return "메인입니다!";
	}

	@RequestMapping("/home/gugudan")
	@ResponseBody
	public String showGugudan() {
		String rs = "";

		rs += "<h1>== 구구단 ==</h1>";

		for (int dan = 1; dan <= 19; dan++) {
			rs += "<h2>" + dan + "단</h2>";

			for (int i = 1; i <= 19; i++) {
				rs += "<div>" + dan + " * " + i + " = " + dan * i + "</div>";
			}
		}

		return rs;
	}

}
