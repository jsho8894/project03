package com.bit.project3;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
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
	@RequestMapping("/long")
	public String LongList() {
		return "long";
	}
	@RequestMapping("/short")
	public String ShortList() {
		return "short";
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

}
