package com.example.services;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.example.mapper.PlayerMapper;
import com.example.model.Player;
import com.example.utils.MyBatisUtil;

public class PlayerService {

    public List<Player> findAll() {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            PlayerMapper mapper = session.getMapper(PlayerMapper.class);
            System.out.println("=== mapper" + mapper);

            return mapper.findAll();
        }
    }

    public Player findById(Long id) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            PlayerMapper mapper = session.getMapper(PlayerMapper.class);
            return mapper.findById(id);
        }
    }

    public Player getPlayerWithClubs(Long id) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            PlayerMapper mapper = session.getMapper(PlayerMapper.class);
            return mapper.getPlayerWithClubs(id);
        }
    }

    public void insert(Player player) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            PlayerMapper mapper = session.getMapper(PlayerMapper.class);
            mapper.insert(player);
            session.commit();
        }
    }

    public void update(Player player) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            PlayerMapper mapper = session.getMapper(PlayerMapper.class);
            mapper.update(player);
            session.commit();
        }
    }

    public void delete(Long id) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            PlayerMapper mapper = session.getMapper(PlayerMapper.class);
            mapper.delete(id);
            session.commit();
        }
    }
}