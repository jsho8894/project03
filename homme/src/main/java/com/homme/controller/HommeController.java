package com.homme.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class HommeController {
	
	@RequestMapping("/tshirt")
	public String TshirtList() {
		return "tshirt";
	}
	@RequestMapping("/shirt")
	public String shirtList() {
		return "shirt";
	}
	@RequestMapping("/hoody")
	public String hoodyList() {
		return "hoody";
	}
	@RequestMapping("/sweater")
	public String sweaterList() {
		return "sweater";
	}

	@RequestMapping("/coat")
	public String CoattList() {
		return "coat";
	}
	@RequestMapping("/jacket")
	public String JacketList() {
		return "jacket";
	}
	@RequestMapping("/outerc")
	public String OtercList() {
		return "outerc";
	}
	@RequestMapping("/best")
	public String BestList() {
		return "best";
	}
	@RequestMapping("/sale")
	public String SaleList() {
		return "sale";
	}
	@RequestMapping("/buycheck")
	public String Buycheck() {
		return "buycheck";
	}

}
