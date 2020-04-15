package com.frances.dojosurvey;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DojoSurveyController {
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}

	@RequestMapping(value="/submit", method=RequestMethod.POST)
	public String result(@RequestParam(value="name", required=false) String name, @RequestParam(value="location", required=false) String location, @RequestParam(value="language", required=false) String language, @RequestParam(value="comments", required=false) String comments, HttpSession session, Model model
) {
		if(name=="") {
			session.setAttribute("name", "No name provided");
		}
		else {
			session.setAttribute("name", name);
		}
		if(location=="") {
			session.setAttribute("location", "No location provided");
		}
		else {
			session.setAttribute("location", location);
		}
		if(language=="") {
			session.setAttribute("language", "No language provided");
		}
		else {
			session.setAttribute("language", language);
		}
		if(comments=="") {
			session.setAttribute("comments", "No comments provided");
		}
		else {
			session.setAttribute("comments", comments);
		}
		return "redirect:/result";
	}

	public String result(HttpSession session, Model model) {
		model.addAttribute("name", session.getAttribute("name"));
		model.addAttribute("location", session.getAttribute("location"));
		model.addAttribute("language", session.getAttribute("language"));
		model.addAttribute("comments", session.getAttribute("comments"));
		return "result.jsp";
	}

}