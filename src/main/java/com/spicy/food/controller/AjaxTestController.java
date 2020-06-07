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

import com.spicy.food.domain.FoodVO;
import com.spicy.food.service.FoodService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class AjaxTestController {
	
	private static final Logger logger = LoggerFactory.getLogger(AjaxTestController.class);
	@Inject
	FoodService service;
	
	@RequestMapping(value = "/whatFood",method = RequestMethod.GET)
	public String testGET( ) throws Exception {
		logger.info("-----get-----");
		return "what_food";
	}
	
	@ResponseBody												// 한글을 return 하기 위해서 produces 해서 설정  
	@RequestMapping(value = "/whatFood",method = RequestMethod.POST, produces = "application/text; charset=utf8")
	public String testPOST(@RequestParam(value="fd_num") int fd_num) throws Exception {
							//json 형식으로 받은 데이터
		logger.info("-----post-----");
		logger.info(Integer.toString(fd_num));
		
		FoodVO vo = new FoodVO();
		vo = service.selectOneFood(fd_num); // 음식 이름 가져오기 
		String choiceFood = vo.getFd_name(); 
		
		logger.info(choiceFood);
		
		return choiceFood;
	}
	
	
	
	
}
