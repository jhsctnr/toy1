package com.cafe24.service;

import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cafe24.repository.CommonDao;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
@RequiredArgsConstructor
public class BoardService {

    public final CommonDao dao;
    
    @Transactional
    public int regPost(String statement, Map<String, Object> condition) {
        int result = dao.insert(statement, condition);
        
        return result;
    }
}
