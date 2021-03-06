package com.cafe24.repository;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.cafe24.domain.MemberVO;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class CommonDao {

    final SqlSessionTemplate dao;
    
    public MemberVO selectMember(String statement, String condition) {
        return dao.selectOne(statement, condition);
    }
    
    public Map<String, Object> selectOne(String statement, Map<String, Object> condition) {
        return dao.selectOne(statement, condition);
    }
    
    public int selectInt(String statement, Map<String, Object> condition) {
        return dao.selectOne(statement, condition);
    }
    
    public String selectStr(String statement, Map<String, Object> condition) {
        return dao.selectOne(statement, condition);
    }
    
    public List<Map<String, Object>> selectList(String statement, Map<String, Object> condition) {
        return dao.selectList(statement, condition);
    }
    
    public int insert(String statement, Map<String, Object> condition) {
        return dao.insert(statement, condition);
    }
    
    public int update(String statement, Map<String, Object> condition) {
        return dao.update(statement, condition);
    }
    
    public int delete(String statement, Map<String, Object> condition) {
        return dao.delete(statement, condition);
    }
}
