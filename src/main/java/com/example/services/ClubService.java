package com.example.services;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.example.mapper.ClubMapper;
import com.example.model.Club;
import com.example.utils.MyBatisUtil;

public class ClubService {

    public List<Club> findAll() {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            ClubMapper mapper = session.getMapper(ClubMapper.class);
            return mapper.findAll();
        }
    }

    public Club findById(Integer id) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            ClubMapper mapper = session.getMapper(ClubMapper.class);
            return mapper.findById(id.longValue());
        }
    }

    public Club getClubWithPlayers(Integer id) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            ClubMapper mapper = session.getMapper(ClubMapper.class);
            return mapper.getClubWithPlayers(id.longValue());
        }
    }

    public void insert(Club club) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            ClubMapper mapper = session.getMapper(ClubMapper.class);
            mapper.insert(club);
            session.commit();
        }
    }

    public void update(Club club) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            ClubMapper mapper = session.getMapper(ClubMapper.class);
            mapper.update(club);
            session.commit();
        }
    }

    public void delete(Long id) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            ClubMapper mapper = session.getMapper(ClubMapper.class);
            mapper.delete(id);
            session.commit();
        }
    }
}