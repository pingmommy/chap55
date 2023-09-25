package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class homecontroller {
	
	@GetMapping
	String home() {
		return"home";
	}
	
}
