package com.spicy.food.controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spicy.food.domain.OpinionVO;
import com.spicy.food.service.OpinionService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class SpicyFoodController {
	
	private static final Logger logger = LoggerFactory.getLogger(SpicyFoodController.class);
	@Inject
	OpinionService service;

	@RequestMapping(value = "/spicyfood", method = RequestMethod.GET)
	public String spicyfoodGET(Locale locale, Model model) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		// 의견들 가져와서 List에 담기 
		List<OpinionVO> list = service.selectOpinion();
		
		// 담은 list 보내기
		model.addAttribute("list",list);
		
		return "spicy_food";
	}
	
	@RequestMapping(value = "/spicyfood", method = RequestMethod.POST)
	public String spicyfoodPOST(Locale locale, Model model, @RequestParam("cause") String cause,OpinionVO vo) throws Exception {
		logger.info("hi-{}", locale);
		
		vo.setTp_num(1);
		vo.setOp_like(0);
		vo.setOp_opinion(cause);
		
		// 입력한 글 정보 insert 
		service.insertOpinion(vo); 
		
		return "redirect:/spicyfood";
	}
	
	@RequestMapping(value = "/spicyfood/good")
	public String spicyfoodGood(Locale locale, @RequestParam("op_num") int op_num) throws Exception {	
		//좋아요 버튼 누르면 가져온 의견 번호로 update 
		service.updateLike(op_num); 
		
		return "redirect:/spicyfood";
	}
	
	
}
