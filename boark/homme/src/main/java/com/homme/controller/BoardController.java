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
import com.homme.model.entity.Page;
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
	
	// �� �ۼ� get
		@RequestMapping(value = "/write", method = RequestMethod.GET)
		public void getWrite(HttpSession session, Model model) throws Exception {

			
			Object loginInfo = session.getAttribute("customer");

			if(loginInfo == null) {
				model.addAttribute("msg", false);
			}
			
		}

		// �� �ۼ� post
		@RequestMapping(value = "/write", method = RequestMethod.POST)
		public String postWrite(BoardVO vo) throws Exception {
			
			
			service.write(vo);
			
			return "redirect:/";
		}
		
		// �� ���
		@RequestMapping(value = "/list", method = RequestMethod.GET)
		public void list(Model model) throws Exception {
			
			
			List<BoardVO> list = service.list();
			
			model.addAttribute("list", list);
		}
		
		// �� ��ȸ 
		@RequestMapping(value = "/read", method = RequestMethod.GET)
		public void getRead(@RequestParam("bno") int bno, 
							@ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
			
			
			BoardVO vo = service.read(bno);		
			model.addAttribute("read", vo);		
			model.addAttribute("scri", scri);
			
			List<ReplyVO> repList = RepService.readReply(bno);
			model.addAttribute("repList", repList);
			
		}	
		
		// �� �� ��
		@RequestMapping(value = "/modify", method = RequestMethod.GET)
		public void getModify(@RequestParam("bno") int bno,
							@ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
			
			
			BoardVO vo = service.read(bno);		
			model.addAttribute("modify", vo);
			model.addAttribute("scri", scri);
			
		}	
		
		// �� ���� 
		@RequestMapping(value = "/delete", method = RequestMethod.GET)
		public void getDelete(@RequestParam("bno") int bno,
							@ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
			
					
			model.addAttribute("delete", bno);
			model.addAttribute("scri", scri);
		}
			
		// �� ����  POST	
		@RequestMapping(value = "/modify", method = RequestMethod.POST)
		public String postModify(BoardVO vo, 
					@ModelAttribute("scri") SearchCriteria scri, RedirectAttributes rttr) throws Exception {
			
			
			service.update(vo);
				
			rttr.addAttribute("num", scri.getPage());
			rttr.addAttribute("perPageNum", scri.getPerPageNum());
			rttr.addAttribute("searchType", scri.getSearchType());
			rttr.addAttribute("keyword", scri.getKeyword());
				
			return "redirect:/qna/listSearch";
		}

		// �� ����  POST 
		@RequestMapping(value = "/delete", method = RequestMethod.POST)
		public String postDelete(@RequestParam("bno") int bno, 
					@ModelAttribute("scri") SearchCriteria scri, RedirectAttributes rttr) throws Exception {
			
					
			service.delete(bno);
			
			rttr.addAttribute("num", scri.getPage());
			rttr.addAttribute("perPageNum", scri.getPerPageNum());
			rttr.addAttribute("searchType", scri.getSearchType());
			rttr.addAttribute("keyword", scri.getKeyword());
			
			return "redirect:/qna/listSearch";	
		}	
		
		// �Խù� ��� + ����¡ �߰�
		@RequestMapping(value = "/listPage", method = RequestMethod.GET)
		public void getListPage(Model model, @RequestParam("num") int num) throws Exception {

			
			Page page = new Page();
			
			page.setNum(num);
			page.setCount(service.count());		
			
			List<BoardVO> list = null; 
			list = service.listPage(page.getDisplayPost(), page.getPostNum());
			
			model.addAttribute("list", list);
			
			/*
			model.addAttribute("pageNum", page.getPageNum());
			
			model.addAttribute("startPageNum", page.getStartPageNum());
			model.addAttribute("endPageNum", page.getEndPageNum());
			 
			model.addAttribute("prev", page.getPrev());
			model.addAttribute("next", page.getNext());
			*/
			
			model.addAttribute("page", page);
			
			model.addAttribute("select", num);
			
			/*
			// �Խù� �� ����
			int count = service.count();
			
			// �� �������� ����� �Խù� ����
			int postNum = 10;
			
			// �ϴ� ����¡ ��ȣ ([ �Խù� �� ���� �� �� �������� ����� ���� ]�� �ø�)
			int pageNum = (int)Math.ceil((double)count/postNum);
			
			// ����� �Խù�
			int displayPost = (num - 1) * postNum;
						
			
			// �ѹ��� ǥ���� ����¡ ��ȣ�� ����
			int pageNum_cnt = 10;
			
			// ǥ�õǴ� ������ ��ȣ �� ������ ��ȣ
			int endPageNum = (int)(Math.ceil((double)num / (double)pageNum_cnt) * pageNum_cnt);
			
			// ǥ�õǴ� ������ ��ȣ �� ù��° ��ȣ
			int startPageNum = endPageNum - (pageNum_cnt - 1);
			// ������ ��ȣ ����
			int endPageNum_tmp = (int)(Math.ceil((double)count / (double)pageNum_cnt));
				
			if(endPageNum > endPageNum_tmp) {
				endPageNum = endPageNum_tmp;
			}
			
			boolean prev = startPageNum == 1 ? false : true; 
			boolean next = endPageNum * pageNum_cnt >= count ? false : true;
			
			List<BoardVO> list = null; 
			list = service.listPage(displayPost, postNum);
			model.addAttribute("list", list);		 
			model.addAttribute("pageNum", pageNum);
			
			// ���� �� �� ��ȣ
			model.addAttribute("startPageNum", startPageNum);
			model.addAttribute("endPageNum", endPageNum);
			// ���� �� ���� 
			model.addAttribute("prev", prev);
			model.addAttribute("next", next);		 
			
			// ���� ������
			model.addAttribute("select", num);
			*/
		}


		
		// �Խù� ��� + ����¡ �߰� + �˻�
		@RequestMapping(value = "/listSearch", method = RequestMethod.GET)
		public void getListPageSearch(Model model, @RequestParam("num") int num, 
				@RequestParam(value = "searchType",required = false, defaultValue = "title") String searchType,
				@RequestParam(value = "keyword",required = false, defaultValue = "") String keyword
				) throws Exception {
		
			
			Page page = new Page();
			
			page.setNum(num);
			//page.setCount(service.count());		
			page.setCount(service.searchCount(searchType, keyword));
			
			// �˻� Ÿ�԰� �˻���
			//page.setSearchTypeKeyword(searchType, keyword);
			page.setSearchType(searchType);
			page.setKeyword(keyword);
					
			List<BoardVO> list = null; 
			//list = service.listPage(page.getDisplayPost(), page.getPostNum());
			list = service.listPageSearch(page.getDisplayPost(), page.getPostNum(), searchType, keyword);
			
			model.addAttribute("list", list);
			model.addAttribute("num", page);
			model.addAttribute("select", num);
			
			//model.addAttribute("searchType", searchType);
			//model.addAttribute("keyword", keyword);
			
			
			
		}
		
		// ��� �ۼ�
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
		
	// ��� ���� POST
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

	// ��� ���� POST
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
		
	// ��� ���� GET
	@RequestMapping(value = "/replyUpdate", method = RequestMethod.GET)
	public void getReplyUpdate(@RequestParam("rno") int rno,
							@ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
	
		
		ReplyVO vo = null;
		
		vo = RepService.readReplySelect(rno);
		
		model.addAttribute("readReply", vo);
		model.addAttribute("scri", scri);
	}

	// ��� ���� GET
	@RequestMapping(value = "/replyDelete", method = RequestMethod.GET)
	public void getReplyDelete(@RequestParam("rno") int rno,
							@ModelAttribute("scri") SearchCriteria scri, Model model) throws Exception {
		
		
		ReplyVO vo = null;
		
		vo = RepService.readReplySelect(rno);
		
		model.addAttribute("readReply", vo);
		model.addAttribute("scri", scri);
	}
		
}