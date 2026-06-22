package com.project.oditji.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@GetMapping("/main")
	public String adminMain() {
		return "admin/adminMain";
	}

	@GetMapping("/member/list")
	public String memberManage() {
		return "admin/memberManage";
	}

	@GetMapping("/content/list")
	public String contentManage() {
		return "admin/contentManage";
	}

	@GetMapping("/ott/list")
	public String ottManage() {
		return "admin/ottManage";
	}

	@GetMapping("/review/list")
	public String reviewManage() {
		return "admin/reviewManage";
	}

}