package org.sjac.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.sjac.model.GroupJoinService;
import org.sjac.model.GroupMemberVO;
import org.sjac.model.GroupService;
import org.sjac.model.GroupVO;
import org.sjac.model.MemberService;
import org.sjac.model.MemberVO;
import org.sjac.model.ScheduleService;
import org.sjac.model.ScheduleVO;
import org.sjac.model.StudyLocationVO;
import org.sjac.model.SubjectService;
import org.sjac.model.SubjectVO;
import org.sjac.model.TransactionService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	@Resource
	private MemberService memberService;
	@Resource
	private GroupService groupService;
	@Resource
	private GroupJoinService groupJoinService;
	@Resource
	private SubjectService subjectService;
	@Resource
	private ScheduleService scheduleService;
	@Resource
	private TransactionService transactionService;
	
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public ModelAndView login(MemberVO vo, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		MemberVO mvo = memberService.login(vo);
		if (mvo != null) {
			session.setAttribute("mvo", mvo);
			return new ModelAndView("redirect:home.do");
		}else{
			return new ModelAndView("redirect:member_login.do?id="+vo.getId());
		}
	}
	
	@RequestMapping("logout.do")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		if (session != null)
			session.invalidate();
		return "redirect:home.do";
	}	
	
		
		@RequestMapping("auth_mypage_info.do")
		public String myPage(HttpServletRequest request, MemberVO vo){
			HttpSession session = request.getSession(false);		
			return "mypage_info";
		}
		
		//마이페이지 내정보 수정 페이지로 이동
		@RequestMapping("auth_mypage_update.do")
		public ModelAndView myInfoUpdate(MemberVO vo){
			ModelAndView mav = new ModelAndView();
			List<StudyLocationVO> locationList = memberService.getAllStudyLocation();
			mav.setViewName("mypage_update");
			mav.addObject("locationList", locationList);
			return mav;
		}
		
		//마이페이지 내정보 수정 페이지
		@RequestMapping("auth_mypage_updateInfo.do")
		public ModelAndView myInfoUpdate1(HttpServletRequest request, MemberVO vo){
			System.out.println(vo.getLocation());
			ModelAndView mav = new ModelAndView();
			HttpSession session = request.getSession(false);
			memberService.updateMyInfo(vo);
			mav.setViewName("mypage_info");
			session.setAttribute("mvo", vo);
			return mav;
		}
		
	
	
		//마이페이지 내가 가입한 그룹리스트 출력 페이지
		@RequestMapping("auth_mypage_grouplist.do")
		public ModelAndView myPageGroupList(HttpServletRequest request){
			ModelAndView mav = new ModelAndView();
			HttpSession session = request.getSession(false);
			MemberVO vo = (MemberVO) session.getAttribute("mvo");
			List<GroupVO> myGroupList = groupService.getAllMyGroup(vo.getId());
			mav.setViewName("mypage_grouplist");
			mav.addObject("myGroupList", myGroupList);
			return mav;
		}
		
		@RequestMapping("auth_mypage_grouplist_grid.do")
		public  ModelAndView myPageGroupListGrid(HttpServletRequest request){
			ModelAndView mav = new ModelAndView();
			HttpSession session = request.getSession(false);
			MemberVO vo = (MemberVO) session.getAttribute("mvo");
			List<GroupVO> myGroupListGrid = groupService.getAllMyGroup(vo.getId());
			mav.setViewName("mypage_grouplist_grid");
			mav.addObject("myGroupListGrid", myGroupListGrid);
			return mav;
		}
		
		//마이페이지 현재 가입요청중인 그룹리스트 출력 페이지
		@RequestMapping("auth_mypage_join_grouplist.do")
		public ModelAndView myPageJoinGroupList(HttpServletRequest request){
			ModelAndView mav = new ModelAndView();
			HttpSession session = request.getSession(false);
			MemberVO vo = (MemberVO) session.getAttribute("mvo");
			List<GroupVO> joinList = groupJoinService.getAllJoinRequestGroup(vo.getId());
			mav.setViewName("mypage_join_grouplist");
			mav.addObject("joinList", joinList);
			return mav;
		}
		@RequestMapping("auth_mypage_join_grouplist_grid.do")
		public ModelAndView myPageJoinGroupListGrid(HttpServletRequest request){
			ModelAndView mav = new ModelAndView();
			HttpSession session = request.getSession(false);
			MemberVO vo = (MemberVO) session.getAttribute("mvo");
			List<GroupVO> joinList = groupJoinService.getAllJoinRequestGroup(vo.getId());
			mav.setViewName("mypage_join_grouplist_grid");
			mav.addObject("joinList", joinList);
			return mav;
		}
		
		//마이페이지 내 스케줄 출력 페이지
		@RequestMapping("auth_mypage_schedule.do")
		public ModelAndView myPageSchedule(HttpServletRequest request){
			ModelAndView mav = new ModelAndView();
			HttpSession session = request.getSession(false);
			MemberVO vo = (MemberVO) session.getAttribute("mvo");
			List<ScheduleVO> scheduleList = scheduleService.findMyScheduleById(vo.getId());
			System.out.println(scheduleList);
			mav.setViewName("mypage_schedule");
			mav.addObject("scheduleList", scheduleList);
			return mav;
		}
		
		//마이페이지 내가 만든 그룹 출력 페이지
		@RequestMapping("auth_mypage_mycreating_group.do")
		public ModelAndView myPageMyCreatingGroup(HttpServletRequest request){
			ModelAndView mav = new ModelAndView();
			HttpSession session = request.getSession(false);
			MemberVO vo = (MemberVO) session.getAttribute("mvo");
			GroupVO gvo = groupService.createMyGroupInfo(vo.getId());
			mav.setViewName("mypage_mycreating_group_grid");
			mav.addObject("gvo", gvo);
			return mav;
		}
	/*	@RequestMapping("mypage_mycreating_group_grid.do")
		public  ModelAndView myPageMyCreatingGroupGrid(HttpServletRequest request){
			ModelAndView mav = new ModelAndView();
			HttpSession session = request.getSession(false);
			MemberVO vo = (MemberVO) session.getAttribute("mvo");
			GroupVO gvo = groupService.createMyGroupInfo(vo.getId());
			mav.setViewName("mypage_mycreating_group_grid");
			mav.addObject("gvo", gvo);
			return mav;
		}*/
		
		//마이페이지 대분류, 중분류 셀렉트하는 메서드 -> 카테고리로 서브젝트 검색
		@RequestMapping("auth_mypage_subject_category.do")
		@ResponseBody
		public List<SubjectVO> myPageSubjectCategory(String category){
			List<SubjectVO> subjectList = subjectService.getAllSubject(category);
			return subjectList;
		}
		
		//대분류로 내 그룹검색 
	      @RequestMapping("auth_mypage_getListByCategory.do")
	      @ResponseBody
	      public List<GroupVO> getListByCategory(HttpServletRequest request, String category){
	         HttpSession session = request.getSession(false);
	         MemberVO vo = (MemberVO) session.getAttribute("mvo");
	         Map<String, String> map = new HashMap<String, String>();
	         map.put("id", vo.getId());
	         map.put("category", category);
	         List<GroupVO> categoryGroupList= groupService.findGroupListByCategory(map);
	         return categoryGroupList;
	      }
		
		
	   // 마이페이지 대분류, 중분류 셀렉트했을 때, 관련된 그룹 나타내는 메서드
	      @RequestMapping("auth_mypage_grouplist_select.do")
	      @ResponseBody
	      public List<GroupVO> myPageGroupListSelect(HttpServletRequest request, String subject, String category){
	         HttpSession session = request.getSession(false);
	         MemberVO vo = (MemberVO) session.getAttribute("mvo");
	         Map<String, String> map = new HashMap<String, String>();
	         map.put("id", vo.getId());
	         List<GroupVO> groupList = null;
	         if( !subject.equals("전체") ){
	            map.put("subject", subject);
	            groupList = groupService.findMyGroupListBySubject(map);
	         }
	         else{
	            map.put("category", category);
	            groupList = groupService.findGroupListByCategory(map);
	         }
	         
	         return groupList;
	      }
		
		
		
		//로그인 페이지
		@RequestMapping("member_login.do")
		public ModelAndView login(String id){
			ModelAndView mav = new ModelAndView();
			mav.setViewName("basic_member_login");
			mav.addObject("id", id);
			return mav;
		}
		
		
		@RequestMapping("group_nonmember_home.do")
		public String nonmemberHome(){
			return "nonMember";
		}
		
		// 내 아이디가 그룹원에 속해 있는지 확인 (내 아이디와 그룹장 아이디로 그룹멤버에서 검색)
		@RequestMapping("checkMyGroup.do")
		public ModelAndView checkMyGroup(HttpServletRequest request, String gLeaderId){
			ModelAndView mav = new ModelAndView();
			HttpSession session = request.getSession(false);
			MemberVO vo = (MemberVO) session.getAttribute("mvo");
			Map<String, String> map = new HashMap<String, String> ();
			map.put("id", vo.getId());
			map.put("gLeaderId", gLeaderId);
			boolean check = groupService.checkMyGroup(map);
			if(check == true){
				mav.setViewName("redirect:group_member_home.do");
			}else{
				GroupVO groupInfo = groupService.findGroupByLeaderId(gLeaderId);
				mav.setViewName("nonMember");
				mav.addObject("groupInfo", groupInfo);
			}
			return mav;
		}

		//그룹 생성 페이지로 이동
		@RequestMapping("auth_member_create_group.do")
		public ModelAndView createGroup(){
			ModelAndView mav = new ModelAndView();
			mav.setViewName("basic2_member_create_group");
			return mav;
		}
		
		// 그룹 생성
        @RequestMapping("auth_createNewGroup.do")
        public ModelAndView createNewGroup(GroupVO gvo, HttpServletRequest request) throws Exception{
        	ModelAndView mav = new ModelAndView();
        	HttpSession session = request.getSession(false);
        	MemberVO memberVO = (MemberVO) session.getAttribute("mvo");
        	gvo.setMemberVO(memberVO);
        	GroupMemberVO gmvo = new GroupMemberVO();
        	gmvo.setGroupVO(gvo);
        	gmvo.setMemberVO(memberVO);
        	transactionService.TransactionAll(gvo, gmvo);
        	mav.setViewName("redirect:home.do");
        	return mav;
        }
        
     // 그룹 검색 페이지(neung)
        @RequestMapping("member_find_group.do")
        public ModelAndView findGroup() {
           return new ModelAndView("member_find_group", "gvo",
                 (List<GroupVO>) groupService.getAllGroupList());
        }

        // 서브젝트카테고리로로 서브젝트검색(neung)
        @RequestMapping("findSubjectBySubjectCategory.do")
        @ResponseBody
        public Object findSubjectBySubjectCategory(String subjectCategory) {
           return subjectService.findSubjectBySubjectCategory(subjectCategory);
        }
        //그룹장id로 그룹검색
        @RequestMapping("findGroupByLeaderId.do")
        @ResponseBody
        public Object findGroupByLeaderId(String id){
           GroupVO vo=groupService.findGroupByLeaderId(id);
           if(vo!=null){
              return vo;
           }else{
              HashMap<String,String> map=new HashMap<String,String>();
              map.put("flag", "false");
              return map;
           }
        }
        
        @RequestMapping("findGroupList.do")
        @ResponseBody
        public Object findGroupList(GroupVO vo) {
           String subject=vo.getSubjectVO().getSubject();
           String subjectCategory=vo.getSubjectVO().getSubjectCategory();
           String gLocation=vo.getgLocation();
           String gName=vo.getgName();
           //subjectVO.subject 가 null인지 확인 후 null 대신 undefined 값 입력
           if(subject==null){
              vo.getSubjectVO().setSubject("undefined");}
           if(subjectCategory==null){
              vo.getSubjectVO().setSubjectCategory("undefined");}
           if(gLocation==null){
              vo.setgLocation("undefined");}
           if(gName==null){
              vo.setgName("undefined");}
            subject=vo.getSubjectVO().getSubject();
            subjectCategory=vo.getSubjectVO().getSubjectCategory();
            gLocation=vo.getgLocation();
            gName=vo.getgName();
           if (gLocation.equals("전체")||subjectCategory.equals("전체")){
              return groupService.getAllGroupList();
           }else{
              return groupService.findGroupList(vo);
           }
        }
        
      //그룹페이지 메인 화면
    	@RequestMapping("group_member_home.do")
    	public String groupHome(){
    		return "group";
    	}
    	
    	/*
    	    * 내 가입요청 그룹 찾기 시작
    	    */
    	   @RequestMapping("auth_mypage_getJoinGroupListByCategory.do")
    	   @ResponseBody
    	   public List<GroupVO> getJoinGroupListByCategory(HttpServletRequest request,
    	         String category) {
    	      HttpSession session = request.getSession(false);
    	      MemberVO vo = (MemberVO) session.getAttribute("mvo");
    	      Map<String, String> map = new HashMap<String, String>();
    	      List<GroupVO> groupList;
    	      map.put("id", vo.getId());
    	      map.put("category", category);
    	      
    	      if (!category.equals("전체")) {
    	         groupList = groupService.findMyJoinGroupListByCategory(map);
    	      } else {
    	         groupList = groupJoinService.getAllJoinRequestGroup(vo.getId());
    	      }
    	      return groupList;
    	   }

    	   @RequestMapping("auth_mypage_MyJoinGroupList_select.do")
    	   @ResponseBody
    	   public List<GroupVO> myPageJoinGroupListSelect(HttpServletRequest request,
    	         String subject, String category) {
    	      HttpSession session = request.getSession(false);
    	      MemberVO vo = (MemberVO) session.getAttribute("mvo");
    	      Map<String, String> map = new HashMap<String, String>();
    	      map.put("id", vo.getId());
    	      List<GroupVO> groupList = null;
    	      if (!subject.equals("전체")) {
    	         map.put("subject", subject);
    	         groupList = groupService.findMyJoinGroupListBySubject(map);
    	      } else {
    	         map.put("category", category);
    	         groupList = groupService.findMyJoinGroupListByCategory(map);
    	      }
    	      return groupList;
    	   }
    	   /*
    	    * 내 가입요청 그룹 찾기 끝
    	    */
        
       
}
