package com.project.oditji.content.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ContentController {

	@GetMapping("/content/contentList")
	public String contentList() {

		return "content/contentList";
	}

	@GetMapping("/content/contentDetail")
	public String contentDetail() {

		return "content/contentDetail";
	}
}