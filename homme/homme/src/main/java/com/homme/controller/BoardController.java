package com.homme.controller;


import java.sql.SQLException;
import java.util.List;

import javax.inject.Inject;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.homme.model.entity.BoardVo;
import com.homme.model.entity.ReplyVO;
import com.homme.service.BoardService;
import com.homme.service.ReplyService;

@Controller
@RequestMapping("/qna")
public class BoardController {

	@Inject
	BoardService boardService;
	ReplyService replyService;

	@RequestMapping(value = "/",method = RequestMethod.GET)
	public String list(Model model, ReplyVO reply) throws Exception {
		try {
			boardService.listService(model);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "qna/list";
	}
	
	@RequestMapping(value = "/", method= RequestMethod.POST)
	public String insert(@ModelAttribute BoardVo bean) {
		try {
			boardService.oneAddService(bean);
		} catch (SQLException e) {
			return "qna/add";
		}
		return "redirect:./";
	}

	@RequestMapping("/add")
	public void add() {}
	
	@RequestMapping(value = "/{bno}",method= RequestMethod.GET)
	public String detail(@PathVariable int bno,Model model) throws SQLException{
		boardService.detailService(model,bno);
		return "qna/detail";
	}
	
	@RequestMapping("/{bno}/edit")
	public String edit(@PathVariable int bno,Model model) throws SQLException{
		boardService.detailService(model, bno);
		return "qna/edit";
	}
	
	@RequestMapping(value = "/{bno}", method= RequestMethod.PUT)
	public ModelAndView update(@PathVariable int bno,@ModelAttribute BoardVo bean) throws SQLException{
		boardService.oneEditService(bean);
		return new ModelAndView("redirect:./"+bno);
	}
	
	@RequestMapping(value = "/{bno}", method = RequestMethod.DELETE)
	public String delete(@PathVariable int bno) throws SQLException{
		boardService.oneDelService(bno);
		return "redirect:./";
	}
	
	
}
