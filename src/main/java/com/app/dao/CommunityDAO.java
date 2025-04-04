package com.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.BoardViewDTO;
import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.BoardImgVO;
import com.app.vo.BoardPostVO;

public class CommunityDAO {
	public SqlSession sqlSession;
	
	public CommunityDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	검색 (타이틀만)
	
    // 최신 순 + 해시태그
    public List<BoardViewDTO> sortByLatestAndHashtag(String hashtag) {
        return sqlSession.selectList("community.sortByLatestAndHashtag", hashtag);
    }

    // 좋아요 순 + 해시태그
    public List<BoardViewDTO> sortByLikesAndHashtag(String hashtag) {
        return sqlSession.selectList("community.sortByLikesAndHashtag", hashtag);
    }

    // 조회수 순 + 해시태그
    public List<BoardViewDTO> sortByViewsAndHashtag(String hashtag) {
        return sqlSession.selectList("community.sortByViewsAndHashtag", hashtag);
    }
	

	
//	게시글 추가
	public void insertPost(BoardPostVO boardPostVO) {
		sqlSession.insert("community.insertPost", boardPostVO);
	}

// 	게시글 이미지 추가
	public void insertImg(BoardImgVO boardImgVO) {
		sqlSession.insert("community.insertBoardImg", boardImgVO);
	}

	public Long getNextPostId() {
	    return sqlSession.selectOne("community.getNextPostId");
	}
//	댓글 추가
	
//	게시글 수정
	
//	댓글 수정
	
//	게시글 삭제
	
//	댓글 삭제
}