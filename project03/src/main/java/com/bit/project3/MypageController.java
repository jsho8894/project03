package com.bit.project3;

import java.sql.SQLException;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.bit.project3.model.entity.CustomerVo;
import com.bit.project3.service.CustomerService;

@Controller
@RequestMapping("/mypage")
public class MypageController {
	
	@Inject
	CustomerService service;
	
	@RequestMapping(value="/{user_id}",method = RequestMethod.GET)
	public String detail(@PathVariable String user_id,Model model) throws SQLException{
		service.myinfoService(model,user_id);
		return "mypage/detail";
	}
	@RequestMapping("/{user_id}/edit")
	public String edit(@PathVariable String user_id,Model model) throws SQLException{
		service.myinfoService(model, user_id);
		return "mypage/edit";
	}
	@RequestMapping(value="/{user_id}",method = RequestMethod.PUT)
	public ModelAndView update(String user_id,@ModelAttribute CustomerVo bean) throws SQLException {
		service.oneEditService(bean);
		return new ModelAndView("redirect:./"+user_id);
	}
}
