package org.sjac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	// 그룹 검색 페이지
	@RequestMapping("member_find_group.do")
	public String findGroup(){
		return "basic_member_find_group";
	}

	//그룹 생성 페이지
	@RequestMapping("member_create_group.do")
	public String createGroup(){
		return "sublayout_member_create_group";
	}
	
	//회원가입 페이지
	@RequestMapping("member_register.do")
	public String register(){
		return "basic_member_register";
	}
	
	//로그인 페이지
	@RequestMapping("member_login.do")
	public String login(){
		return "basic_member_login";
	}
	
	
	/**
	 * <li><a href="member_board_write.do">글쓰기</a></li>
                                    <li><a href="member_board_update.do">글수정</a></li>
                                    <li><a href="member_board_upload.do">파일업로드</a></li>
                                    <li><a href="member_board_show_content.do">글상세보기</a></li>
	 * 
	 */
	
	//자유게시판 글쓰기
	@RequestMapping("board_write.do")
	public String boardWrite(){
		return "board_write";
	}
	
	//자유 게시판 글 수정
	@RequestMapping("board_update.do")
	public String boardUpdate(){
		return "board_update";
	}
	
	//자유게시판 상세 글
	@RequestMapping("board_show_content.do")
	public String boardShowContent(){
		return "board_show_content";
	}
	
	//자유 게시판 글 리스트 보기
	@RequestMapping("board_list.do")
	public String boardList(){
		return "board_list";
	}
	
	//그룹페이지 메인 화면
	@RequestMapping("group_member_home.do")
	public String groupHome(){
		return "group";
	}
	
	//마이페이지 나의 정보
	@RequestMapping("mypage_info.do")
	public String myPage(){
		return "mypage_info";
	}
	
	//마이페이지 내정보 수정 페이지
	@RequestMapping("mypage_update.do")
	public String myInfoUpdate(){
		return "mypage_update";
	}
	
	//마이페이지 내가 가입한 그룹리스트 출력 페이지
	@RequestMapping("mypage_grouplist.do")
	public String myPageGroupList(){
		return "mypage_grouplist";
	}
	
	@RequestMapping("mypage_grouplist_grid.do")
	public String myPageGroupListGrid(){
		return "mypage_grouplist_grid";
	}
	
	//마이페이지 현재 가입요청중인 그룹리스트 출력 페이지
	@RequestMapping("mypage_join_grouplist.do")
	public String myPageJoinGroupList(){
		return "mypage_join_grouplist";
	}
	@RequestMapping("mypage_join_grouplist_grid.do")
	public String myPageJoinGroupListGrid(){
		return "mypage_join_grouplist_grid";
	}
	
	//마이페이지 내 스케줄 출력 페이지
	@RequestMapping("mypage_schedule.do")
	public String myPageSchedule(){
		return "mypage_schedule";
	}
	
	//마이페이지 내가 만든 그룹 출력 페이지
	@RequestMapping("mypage_mycreating_group.do")
	public String myPageMyCreatingGroup(){
		return "mypage_mycreating_group";
	}
	@RequestMapping("mypage_mycreating_group_grid.do")
	public String myPageMyCreatingGroupGrid(){
		return "mypage_mycreating_group_grid";
	}
	
}