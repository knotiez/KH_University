package com.kh.khu.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.khu.board.model.dao.BoardDao;
import com.kh.khu.board.model.vo.Board;
import com.kh.khu.board.model.vo.Reply;
import com.kh.khu.common.model.vo.PageInfo;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDao bDao;
	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int selectListCount() {
		return 0;
	}

	@Override
	public ArrayList<Board> selectList(PageInfo pi) {
		return null;
	}

	@Override
	public int insertBoard(Board b) {
		return 0;
	}

	@Override
	public int increaseCount(int boardNo) {
		return 0;
	}

	@Override
	public Board selectBoard(int boardNo) {
		return null;
	}

	@Override
	public int deleteBoard(int boardNo) {
		return 0;
	}

	@Override
	public int updateBoard(Board b) {
		return 0;
	}

	@Override
	public ArrayList<Reply> selectReplyList(int boardNo) {
		return null;
	}

	@Override
	public int insertReply(Reply r) {
		return 0;
	}

}
