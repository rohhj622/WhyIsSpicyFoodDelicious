package com.spicy.food.persistence;

import java.util.List;

import com.spicy.food.domain.OpinionVO;

public interface OpinionDAO{

	public List<OpinionVO> selectOpinion() throws Exception; // 의견 리스트 가져오기 
	public void insertOpinion(OpinionVO vo) throws Exception; // 의견 insert 
	public void updateLike(int op_num) throws Exception; // 좋아요 올리기 
	
}
