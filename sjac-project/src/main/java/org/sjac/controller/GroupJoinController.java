package org.sjac.controller;

import javax.annotation.Resource;

import org.sjac.model.GroupJoinService;
import org.sjac.model.GroupJoinVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GroupJoinController {
	@Resource
	private GroupJoinService groupJoinService;
	
	@RequestMapping("joinGroup.do")
	public String joinGroup(GroupJoinVO gjvo){
		groupJoinService.joinGroup(gjvo);
		return "redirect:checkMyGroup.do?gLeaderId="+gjvo.getGroupVO().getMemberVO().getId();
	}
}
