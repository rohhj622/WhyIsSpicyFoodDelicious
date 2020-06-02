package com.spicy.food.service;

import java.util.List;

import com.spicy.food.domain.OpinionVO;

public interface OpinionService {
	
	public List<OpinionVO> selectOpinion() throws Exception;
	public void insertOpinion(OpinionVO vo) throws Exception;	
	public void updateLike(int op_num) throws Exception;
}
