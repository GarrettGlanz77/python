package com.example.demo.Controllers;



import javax.servlet.http.HttpSession;            //storing session
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller

public class ProcessController {
	@RequestMapping(value="/run", method=RequestMethod.POST)
	public String result(@RequestParam(value="name") String name, @RequestParam(value="dojoLocation") String dojoLocation, @RequestParam(value="favoriteLanguage") String favoriteLanguage, @RequestParam(value="comments") String comments, HttpSession session) {
		
		session.setAttribute("name", name);
		
		session.setAttribute("dojoLocation", dojoLocation);
		
		session.setAttribute("favoriteLanguage", favoriteLanguage);
		
		session.setAttribute("comments", comments);
		
		return "index.jsp";
	}
}