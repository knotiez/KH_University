package com.kh.khu.classroom.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.khu.classroom.model.dao.ClassDao;
import com.kh.khu.classroom.model.vo.ClassNotice;
import com.kh.khu.classroom.model.vo.Classroom;
import com.kh.khu.common.model.vo.PageInfo;

@Service
public class ClassServiceImpl implements ClassService{

	@Autowired
	private ClassDao cDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public ArrayList<Classroom> selectClass() {
		return null;
	}
	@Override
	public int selectListCount() {
		return 0;
	}
	@Override
	public ArrayList<ClassNotice> selectClassNoticeList(PageInfo pi) {
		return null;
	}
	@Override
	public int increaseCount(int classNoticeNo) {
		return 0;
	}
	@Override
	public ClassNotice selectClassNoticeDetail(int classNoticeNo) {
		return null;
	}
	@Override
	public ArrayList<Class> selectCourseHistory(int studentNo) {
		return null;
	}
	
}