package com.project.oditji.search.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SearchController {

    @GetMapping("/search")
    public String search(
            @RequestParam(value = "keyword", required = false) String keyword,
            Model model) {

        List<String> resultList = new ArrayList<>();

        if (keyword == null || keyword.trim().isEmpty()) {
            resultList.add("오징어 게임");
            resultList.add("기생충");
            resultList.add("미나리");
            resultList.add("더 글로리");
        } else {
            if ("오징어".contains(keyword) || "오징어 게임".contains(keyword)) {
                resultList.add("오징어 게임");
            }
            if ("기생충".contains(keyword)) {
                resultList.add("기생충");
            }
            if ("미나리".contains(keyword)) {
                resultList.add("미나리");
            }
        }

        model.addAttribute("resultList", resultList);
        model.addAttribute("resultCount", resultList.size());
        model.addAttribute("keyword", keyword);

        return "search/searchResult";
    }
}