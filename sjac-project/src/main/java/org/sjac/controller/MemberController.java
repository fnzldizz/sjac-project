package org.sjac.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.sjac.model.MemberService;
import org.sjac.model.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	@Resource
	private MemberService memberService;

	@RequestMapping("mypage_mypage_update.do")
	public String mypageUpdate() {
		return "mypage_mypage_update";
	}
	
	@RequestMapping("mypage_mypage_grouplist.do")
	public String mypageGrouplist() {
		return "mypage_mypage_grouplist";
	}
	
	@RequestMapping("mypage_mypage_schedule.do")
	public String mypageSchedule() {
		return "mypage_mypage_schedule";
	}
	
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public ModelAndView login(MemberVO vo, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		MemberVO mvo = memberService.login(vo);
		if (mvo != null) {
			session.setAttribute("mvo", mvo);
		}
		return new ModelAndView("redirect:home.do");
	}
	
	@RequestMapping("logout.do")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null)
			session.invalidate();
		return "redirect:home.do";
	}	

}
