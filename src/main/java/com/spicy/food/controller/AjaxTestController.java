package com.spicy.food.controller;


import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import com.spicy.food.service.FoodService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class AjaxTestController {
	
	private static final Logger logger = LoggerFactory.getLogger(AjaxTestController.class);
	@Inject
	FoodService service;
	
//	@RequestMapping(value = "/wantFood",method = RequestMethod.GET)
//	public String wantFoodGET( ) throws Exception {
//		logger.info("get?");
//		return "ajax_test";
//	}
//	
//	@ResponseBody
//	@RequestMapping(value = "/wantFoodajax", method = RequestMethod.POST)
//	public String wantFoodPOST(@RequestParam("fd_num") int fd_num, FoodVO vo) throws Exception {
//		
//		logger.info("post");
//		vo = service.selectOneFood(fd_num);
//		
//		return vo.getFd_name();
//	}
	
	@RequestMapping(value = "/test",method = RequestMethod.GET)
	public String testGET( ) throws Exception {
		logger.info("-----get-----");
		return "ajax_test2";
	}
	
	@ResponseBody
	@RequestMapping(value = "/test",method = RequestMethod.POST)
	public String testPOST(String hi) throws Exception {
		logger.info("-----post-----");
		
		return hi;
	}
	
	
	
	
}
