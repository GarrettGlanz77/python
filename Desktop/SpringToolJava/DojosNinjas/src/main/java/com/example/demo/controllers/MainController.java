package com.example.demo.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.models.Dojo;
import com.example.demo.models.Ninja;
import com.example.demo.services.DojoService;
import com.example.demo.services.NinjaService;



@Controller
public class MainController {
	private final DojoService dojoService;
	private final NinjaService ninjaService;
	
	public MainController(DojoService dojoService, NinjaService ninjaService) {
		this.dojoService=dojoService;
		this.ninjaService=ninjaService;
	}
	@RequestMapping("/")
	public String index() {
		return "redirect:/dojos/new";
	}
	@RequestMapping("/dojos/new")
	public String newDojo(@ModelAttribute("dojo")Dojo dojo) {
		return "dojos.jsp";
	}
	
	@RequestMapping(value="/dojos/new", method=RequestMethod.POST)
	public String createDojo(@ModelAttribute("dojo")Dojo dojo) {
		dojoService.createDojo(dojo);
		return "redirect:/dojos/new";
	}
		@RequestMapping("/ninjas/new")
	public String newNinja(@ModelAttribute("ninja")Ninja ninja, Model model) {
		List<Dojo> listDojos = dojoService.getAllDojos();
		model.addAttribute("dojos", listDojos);
		return "ninja.jsp";
	}
	
		@RequestMapping(value="/ninjas/new", method=RequestMethod.POST)
	public String createNinja(@ModelAttribute("ninja")Ninja ninja) {
		ninjaService.createNinja(ninja);
		return "redirect:/ninjas/new";
	}
	
	
	@RequestMapping("dojos/{id}")
	public String displayinfo(@PathVariable("id")Long id, Model model) {
		Dojo myDojo = dojoService.findDojoById(id);
		model.addAttribute("dojo",myDojo);
		model.addAttribute("ninjas", myDojo.getNinjas());
		return "dojoinfo.jsp";
	}
	
}

