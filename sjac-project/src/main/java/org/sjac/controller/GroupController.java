package org.sjac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GroupController {
	@RequestMapping("group_leader_group_create.do")
	public String LeaderGroupCreate(){
		return "group_leader_group_create";
	}
}
