package com.spicy.food.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spicy.food.domain.OpinionVO;
import com.spicy.food.persistence.OpinionDAO;



@Service
public class OpinionServiceImpl implements OpinionService{

	@Inject
	private OpinionDAO dao;
	
	@Override
	public List<OpinionVO> selectOpinion() throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOpinion();
	}

	@Override
	public void insertOpinion(OpinionVO vo) throws Exception {
		dao.insertOpinion(vo);	
	}

	@Override
	public void updateLike(int op_num) throws Exception {
		dao.updateLike(op_num);
		
	}


}
