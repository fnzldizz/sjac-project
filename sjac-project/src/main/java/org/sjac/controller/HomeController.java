package org.sjac.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.sjac.aop.model.ReportService;
import org.sjac.aop.model.ReportVO;
import org.sjac.model.GroupService;
import org.sjac.model.GroupVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
   @Resource(name="groupServiceImpl")
   private GroupService groupService; 
   
   @Resource(name="reportServiceImpl")
   private ReportService reportService;
   
   @RequestMapping("home.do")
   public ModelAndView home(){
      ModelAndView mv = new ModelAndView();
      Map map = new HashMap();      //main에 뿌려줄 데이터는 grouplist와 검색 chart 부분
      List<GroupVO> list = groupService.getAllGroupList();
      map.put("groupList", list);
      System.out.println(list);
      
      // report 수행부
      List<ReportVO> reportList = reportService.showCount();
      map.put("reportList", reportList);
      
      
      mv.setViewName("home");
      mv.addObject("map", map);
      return mv;
   }
   
   @RequestMapping("admin.do")
   public ModelAndView admin(){
      ModelAndView mv = new ModelAndView();
      List<GroupVO> list = groupService.getAllGroupList();
      System.out.println(list);
      mv.setViewName("home");
      mv.addObject("groupList", list);
      return mv;
   }
}