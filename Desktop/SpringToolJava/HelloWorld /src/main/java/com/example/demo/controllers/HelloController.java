package com.example.demo.controllers;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
	
	@RequestMapping("/")
	public String Home() {
		return "Hello World";
	}
	
	// path variable
	
	@RequestMapping("/hello/{name}")
	public String helloName(@PathVariable String name) {
		
		return String.format("hello %s", name);
	}
	
	// Query Variable
	
	@RequestMapping("/hello/{name}/with-age/")
	public String helloNameAge (@PathVariable String name, @RequestParam(value="age")int age) {
		return String.format("hello %s! You are %d years old!", name, age);
	}
	
	
	
	
	

}

