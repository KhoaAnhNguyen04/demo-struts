package com.example.services;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.example.mapper.PlayerClubMapper;
import com.example.model.Club;
import com.example.model.Player;
import com.example.model.PlayerClub;
import com.example.utils.MyBatisUtil;

public class PlayerClubService {

    public void insert(Integer clubId, Integer playerId, Integer yearJoined, Integer yearLeft) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            PlayerClubMapper mapper = session.getMapper(PlayerClubMapper.class);

            PlayerClub playerClub = new PlayerClub();

            Club club = new Club();
            club.setId(clubId.longValue());

            Player player = new Player();
            player.setId(playerId.longValue());

            playerClub.setClub(club);
            playerClub.setPlayer(player);
            playerClub.setYearJoined(yearJoined);
            playerClub.setYearLeft(yearLeft);

            mapper.insert(playerClub);
            session.commit();
        }
    }

    public List<PlayerClub> findByClubId(Long clubId) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            PlayerClubMapper mapper = session.getMapper(PlayerClubMapper.class);
            return mapper.findByClubId(clubId);
        }
    }

    public PlayerClub findById(Integer id) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            PlayerClubMapper mapper = session.getMapper(PlayerClubMapper.class);
            return mapper.findById(id.longValue());
        }
    }

    public void update(Integer id, Integer yearJoined, Integer yearLeft) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            PlayerClubMapper mapper = session.getMapper(PlayerClubMapper.class);

            PlayerClub playerClub = new PlayerClub();
            playerClub.setId(id.longValue());
            playerClub.setYearJoined(yearJoined);
            playerClub.setYearLeft(yearLeft);

            mapper.update(playerClub);
            session.commit();
        }
    }

    public void delete(Integer id) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            PlayerClubMapper mapper = session.getMapper(PlayerClubMapper.class);
            mapper.delete(id.longValue());
            session.commit();
        }
    }

    public boolean exists(Integer clubId, Integer playerId) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            PlayerClubMapper mapper = session.getMapper(PlayerClubMapper.class);
            return mapper.exists(clubId.longValue(), playerId.longValue()) > 0;
        }
    }
}