package com.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.example.model.PlayerClub;

public interface PlayerClubMapper {

    void insert(PlayerClub playerClub);

    List<PlayerClub> findByClubId(Integer clubId);

    PlayerClub findById(Integer id);

    void update(PlayerClub playerClub);

    void delete(Integer id);

    int exists(@Param("clubId") Integer clubId, @Param("playerId") Integer playerId);
}