package com.frances.dojosurvey;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DojoSurveyController {
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}

}