package com.kh.khu.classroom.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.khu.classroom.model.dao.ClassDao;
import com.kh.khu.classroom.model.vo.ClassBoard;
import com.kh.khu.classroom.model.vo.ClassNotice;
import com.kh.khu.classroom.model.vo.Classroom;
import com.kh.khu.common.model.vo.PageInfo;
import com.kh.khu.project.model.vo.Project;

@Service
public class ClassServiceImpl implements ClassService{

	@Autowired
	private ClassDao cDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public int insertClass(Classroom c) {
		return cDao.insertClass(sqlSession, c);
	}

	@Override
	public ArrayList<Classroom> classSelect(String memberId) {
		return cDao.classSelect(sqlSession,memberId);
	}
	@Override
	public int selectClassListCount(String memberId) {
		return cDao.selectClassListCount(sqlSession,memberId);
	}
	@Override
	public ArrayList<Classroom> selectClassList(PageInfo pi, String memberId) {
		return cDao.selectClassList(sqlSession, pi, memberId);
	}
	
	@Override
	public Classroom selectClassDetail(int classNo) {
		return cDao.selectClassDetail(sqlSession, classNo);
	}
	
	@Override
	public int delectClass(int classNo) {
		return cDao.delectClass(sqlSession, classNo);
	}
	@Override
	public int professorClassUpdate(Classroom c) {
		return cDao.professorClassUpdate(sqlSession, c);
	}

	@Override
	public int selectBoardListCount(String classNum) {
		return cDao.selectBoardListCount(sqlSession, classNum);
	}


	@Override
	public ArrayList<ClassBoard> selectClassBoardList(PageInfo pi, String classNum) {
		return cDao.selectClassBoardList(sqlSession, pi, classNum);
	}

	@Override
	public int classBoardCount(int classBoardNo, String classNum) {
		return cDao.classBoardCount(sqlSession, classBoardNo, classNum);
	}

	@Override
	public ClassBoard selectClassDetailBoard(String bno, String classNum) {
		return cDao.selectClassDetailBoard(sqlSession, bno, classNum);
	}

	@Override
	public int insertClassBoard(ClassBoard cb) {
		return cDao.insertClassBoard(sqlSession, cb);
	}

	@Override
	public int deleteBoardStudent(int classNo, int bno) {
		return cDao.deleteBoardStudent(sqlSession, classNo, bno);
	}


	
	
}
