package com.homme.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.homme.model.entity.BoardVO;
import com.homme.model.entity.Criteria;
import com.homme.model.entity.PageMaker;
import com.homme.model.entity.ReplyVO;
import com.homme.model.entity.SearchCriteria;
import com.homme.service.BoardService;
import com.homme.service.ReplyService;

@Controller
@RequestMapping("/qna")
public class BoardController {

	@Autowired
	private BoardService service;
	
	@Autowired
	private ReplyService RepService;;
	
	// 글 작성 get
		@RequestMapping(value = "/write", method = RequestMethod.GET)
		public void getWrite(HttpSession session, Model model) throws Exception {

			
			Object loginInfo = session.getAttribute("customer");

			if(loginInfo == null) {
				model.addAttribute("msg", false);
			}
			
		}

		// 글 작성 post
		@RequestMapping(value = "/write", method = RequestMethod.POST)
		public String postWrite(BoardVO vo) throws Exception {
			
			
			service.write(vo);
			
			return "redirect:/";
		}
		
		// 글 목록
		@RequestMapping(value = "/list", method = RequestMethod.GET)
		public void list(Model model) throws Exception {
			
			
			List<BoardVO> list = service.list();
			
			model.addAttribute("list", list);
		}
		
		// 글 조회 
		@RequestMapping(value = "/read", method = RequestMethod.GET)
		public void getRead(@RequestParam("bno") int bno, 
							@ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
			
			
			BoardVO vo = service.read(bno);		
			model.addAttribute("read", vo);		
			model.addAttribute("scri", scri);
			
			List<ReplyVO> repList = RepService.readReply(bno);
			model.addAttribute("repList", repList);
			
		}	
		
		// 글 수 정
		@RequestMapping(value = "/modify", method = RequestMethod.GET)
		public void getModify(@RequestParam("bno") int bno,
							@ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
			
			
			BoardVO vo = service.read(bno);		
			model.addAttribute("modify", vo);
			model.addAttribute("scri", scri);
			
		}	
		
		// 글 삭제 
		@RequestMapping(value = "/delete", method = RequestMethod.GET)
		public void getDelete(@RequestParam("bno") int bno,
							@ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
			
					
			model.addAttribute("delete", bno);
			model.addAttribute("scri", scri);
		}
			
		// 글 수정  POST	
		@RequestMapping(value = "/modify", method = RequestMethod.POST)
		public String postModify(BoardVO vo, 
					@ModelAttribute("scri") SearchCriteria scri, RedirectAttributes rttr) throws Exception {
			
			
			service.update(vo);
				
			rttr.addAttribute("page", scri.getPage());
			rttr.addAttribute("perPageNum", scri.getPerPageNum());
			rttr.addAttribute("searchType", scri.getSearchType());
			rttr.addAttribute("keyword", scri.getKeyword());
				
			return "redirect:/qna/listSearch";
		}

		// 글 삭제  POST 
		@RequestMapping(value = "/delete", method = RequestMethod.POST)
		public String postDelete(@RequestParam("bno") int bno, 
					@ModelAttribute("scri") SearchCriteria scri, RedirectAttributes rttr) throws Exception {
			
					
			service.delete(bno);
			
			rttr.addAttribute("page", scri.getPage());
			rttr.addAttribute("perPageNum", scri.getPerPageNum());
			rttr.addAttribute("searchType", scri.getSearchType());
			rttr.addAttribute("keyword", scri.getKeyword());
			
			return "redirect:/qna/listSearch";	
		}	
		
		// 글 목록 + 페이징
		@RequestMapping(value = "/listPage", method = RequestMethod.GET)
		public void listPage(@ModelAttribute("cri") Criteria cri, Model model) throws Exception {
				
			List<BoardVO> list = service.listPage(cri);
			model.addAttribute("list", list);
			
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(cri);
			pageMaker.setTotalCount(service.listCount());
			model.addAttribute("pageMaker", pageMaker);
			
		}
		
		
		// 글 목록 + 페이징 + 검색
		@RequestMapping(value = "/listSearch", method = RequestMethod.GET)
		public void listSearch(@ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
			
			List<BoardVO> list = service.listSearch(scri);
			model.addAttribute("list", list);
			
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(scri);
			pageMaker.setTotalCount(service.listCount());
			model.addAttribute("pageMaker", pageMaker);
		}
		
		// 댓글 작성
		@RequestMapping(value = "/replyWrite", method = RequestMethod.POST)
		public String replyWrite(ReplyVO vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
			
			
			RepService.writeReply(vo);
			
			rttr.addAttribute("bno", vo.getBno());
			rttr.addAttribute("page", scri.getPage());
			rttr.addAttribute("perPageNum", scri.getPerPageNum());
			rttr.addAttribute("searchType", scri.getSearchType());
			rttr.addAttribute("keyword", scri.getKeyword());
			
			return "redirect:/qna/read";	
		}
		
	// 댓글 수정 POST
	@RequestMapping(value = "/replyUpdate", method = RequestMethod.POST)
	public String replyUpdate(ReplyVO vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
		
		
		RepService.replyUpdate(vo);
		
		rttr.addAttribute("bno", vo.getBno());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		
		return "redirect:/qna/read";
	}

	// 댓글 삭제 POST
	@RequestMapping(value = "/replyDelete", method = RequestMethod.POST)
	public String replyDelete(ReplyVO vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
		
		
		RepService.replyDelete(vo);
		
		rttr.addAttribute("bno", vo.getBno());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		
		return "redirect:/qna/read";
	}
		
	// 댓글 수정 GET
	@RequestMapping(value = "/replyUpdate", method = RequestMethod.GET)
	public void getReplyUpdate(@RequestParam("rno") int rno,
							@ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
	
		
		ReplyVO vo = null;
		
		vo = RepService.readReplySelect(rno);
		
		model.addAttribute("readReply", vo);
		model.addAttribute("scri", scri);
	}

	// 댓글 수정 GET
	@RequestMapping(value = "/replyDelete", method = RequestMethod.GET)
	public void getReplyDelete(@RequestParam("rno") int rno,
							@ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
		
		
		ReplyVO vo = null;
		
		vo = RepService.readReplySelect(rno);
		
		model.addAttribute("readReply", vo);
		model.addAttribute("scri", scri);
	}
		
}
