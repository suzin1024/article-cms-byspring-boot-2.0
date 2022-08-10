package com.sbs.starter.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sbs.starter.dao.ArticleDao;
import com.sbs.starter.dto.Article;
import com.sbs.starter.util.CUtil;

import groovy.util.logging.Slf4j;
import jline.internal.Log;

@Service
@Slf4j
public class ArticleServiceImpl implements ArticleService{
	
	@Autowired
	ArticleDao articleDao;  
	
	public List<Article> getList(){
		
		return articleDao.getList();
	}

	@Override
	public long add(Map<String, Object> param) {
		
		articleDao.add(param);
		
		Log.info("newId ::: " + param.get("id"));
		System.out.println( " param.get(\"id\") :::" +param.get("id"));
		System.out.println( " param.get(\"id\") :::" +param.get("title"));
		System.out.println( " param.get(\"id\") :::" +param.get("body"));
		
		//글 등록시 글번호(db)에서 가져오기
		return CUtil.getAsLong(param.get("id"));
	}

	@Override
	public int getTotalCount() {
	
		return articleDao.getTotalCount();
	}

	@Override
	public Article getOne(long id) {

		return articleDao.getOne(id);
	}

	@Override
	public void delete(long id) {
		
		articleDao.delete(id);	
	}

	@Override
	public void modify(Map<String, Object> param) {
		
		articleDao.modify(param);
		
	}

	@Override
	public void hitUp(long id) {
		
		articleDao.hitUp(id);
	}

	
	
}
