package com.example.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import util.Alpha;

/*
 * 작성자 : 조아라 
 * 작성일 : 2023/09/18
 * 능력단위 : 웹표준 
 * 
 */

@Controller
@RequestMapping("/ajax")
public class AjaxController {

	@GetMapping("")
	void ajax(Model model) {
		var rect = new ArrayList<ArrayList<Alpha>>();
		
		for(int i = 0; i<20; i++) {
			rect.add(new ArrayList<Alpha>());
			for(int j=0;j<40;j++) {
				rect.get(i).add(new Alpha());
			}
		}
		
		model.addAttribute("surface", rect);
	}
	
	@GetMapping("/alpha")
	@ResponseBody
	Alpha generator(){
		
		return new Alpha();
	}
}
