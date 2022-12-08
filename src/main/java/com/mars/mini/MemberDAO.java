package com.mars.mini;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemberDAO {

	@Autowired
	SqlSessionTemplate my;

	public MemberVO one(MemberVO vo) {
		return my.selectOne("member.one", vo);
	}
	
	public List<MemberVO> all() {
		return my.selectList("member.all");
	}
	
	public void insert(MemberVO vo) {
		my.insert("member.create", vo);
	}
	
	public void delete(MemberVO vo) {
		my.delete("member.del", vo);
	}
	
	public void update(MemberVO vo) {
		my.update("member.up", vo);
	}
	
	public MemberVO login(MemberVO vo) {
		return my.selectOne("member.login", vo); 
	}
	
	public AptVO code2name(MemberVO vo) {
        return my.selectOne("member.code2name", vo); 
    }
	
	public MemberVO idck(MemberVO vo) {
		return my.selectOne("member.idck", vo);
	}

}
