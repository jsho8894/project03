//package com.homme.controller;
//
//import java.sql.SQLException;
//
//import javax.servlet.http.HttpServletRequest;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//@Controller
//@RequestMapping("/detail")
//public class DetailController {
//	
//	@RequestMapping("/")
//	public String Detail(Model model,HttpServletRequest req) throws SQLException {
//		String[] arr = {
//				"WasteLand1.jpg",
//				"WasteLand2.jpg",
//				"WasteLand3.jpg",
//				"WasteLand4.jpg",
//				"WasteLand5.jpg",
//				"WasteLand6.jpg",
//				"WasteLand7.jpg",
//				"WasteLand8.jpg"
//		};
//		req.setAttribute("WasteLands", arr);
//		return "pants/detail";
//	}
//	
//
//}
//
//
