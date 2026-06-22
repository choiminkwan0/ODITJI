package com.project.oditji.review.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/review")
public class ReviewController {

	/**
	 * 리뷰 목록
	 */
	@GetMapping("/list")
	public String reviewList() {

		return "review/reviewList";

	}

	/**
	 * 리뷰 작성 화면
	 */
	@GetMapping("/form")
	public String reviewForm() {

		return "review/reviewForm";

	}

}