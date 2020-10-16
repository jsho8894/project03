package com.bit.project3;

import java.sql.SQLException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bit.project3.model.entity.CustomerVo;
import com.bit.project3.service.CustomerService;


@Controller
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Inject
	CustomerService service;

	//회원 가입 get
	@RequestMapping(value="/register",method = RequestMethod.GET)
	public void getRefister() {
		logger.info("get register");
	}
	//회원가입 post
		
	@RequestMapping(value="/registerresult",method = RequestMethod.POST)
	public String postRegister(CustomerVo cusvo)  {
		logger.info("post register");
		try {
			service.register(cusvo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public void getLogin() {
		logger.info("get login");
		
	}
	

	@RequestMapping(value="/result", method = RequestMethod.POST)
	public String login(CustomerVo cusvo, HttpServletRequest req, RedirectAttributes rttr) throws SQLException{
		logger.info("post login");
		
		HttpSession session =req.getSession();
		CustomerVo login = service.login(cusvo);
		System.out.println(login);
		if(login == null) {
			session.setAttribute("customer", null);
			rttr.addFlashAttribute("msg", false);
		}else {
			session.setAttribute("customer", login);
		}
		return null;	
	}
	//로그아웃
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws SQLException{
		session.invalidate();
		
		return "redirect:/";
		
	}
}