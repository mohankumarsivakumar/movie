package com.movie.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class WebController {

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup() {
		return "signup";
	}
	
	@RequestMapping(value = "/verify", method = RequestMethod.GET)
	public String verify() {
		return "verify";
	}
	@RequestMapping(value = "/rate", method = RequestMethod.GET)
	public String rate() {
		return "rate";
	}
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String create() {
		return "create";
	}
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout() {
		return "logout";
	}
	@RequestMapping(value = "/overall", method = RequestMethod.GET)
	public String overall() {
		return "overall";
	}
	@RequestMapping(value = "/valid", method = RequestMethod.GET)
	public String valid() {
		return "valid";
	}
}