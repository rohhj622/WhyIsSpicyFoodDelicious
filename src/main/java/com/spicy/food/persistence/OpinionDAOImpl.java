package com.spicy.food.persistence;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spicy.food.domain.OpinionVO;


@Repository
public class OpinionDAOImpl implements OpinionDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace="com.spicy.food.opinionMapper";

	@Override
	public List<OpinionVO> selectOpinion() throws Exception {

		return session.selectList(namespace+".selectOpinion");
	}

	@Override
	public void insertOpinion(OpinionVO vo) throws Exception {
		session.insert(namespace+".insertOpinion",vo);
		
	}

	@Override
	public void updateLike(int op_num) throws Exception {
		System.out.println("dao");
		session.update(namespace+".updateLike",op_num);
		
	}
	
}

