package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.dto.Article;
import com.example.demo.service.ArticleService;

import groovy.util.logging.Slf4j;

@Controller
@Slf4j
public class ArticleController {
	@Autowired
	private ArticleService articleService;

	@RequestMapping("/article/list")
	public String showList(Model model) {
		List<Article> articleList = articleService.getList();
		model.addAttribute("articleList", articleList);

		return "article/list";
	}
}
