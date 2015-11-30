	package org.sjac.controller;
	
	import org.springframework.stereotype.Controller;
	import org.springframework.web.bind.annotation.RequestMapping;
	
	@Controller
	public class GroupBoardController {
		@RequestMapping("group_board_upload.do")
		public String boardUpload(){
			return "group_board_upload";
		}
	}
