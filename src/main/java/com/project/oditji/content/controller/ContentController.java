package com.project.oditji.content.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ContentController {

    @GetMapping("/content/list")
    public String contentList(Model model) {

        List<String> contentList = Arrays.asList(
                "오징어 게임",
                "더 글로리",
                "무빙",
                "카지노",
                "D.P."
        );

        model.addAttribute("contentList", contentList);

        return "content/contentList";
    }

    @GetMapping("/content/detail")
    public String contentDetail() {

        return "content/contentDetail";
    }
}