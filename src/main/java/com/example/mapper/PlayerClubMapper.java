package com.example.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.example.model.PlayerClub;

public interface PlayerClubMapper {

    void insert(PlayerClub playerClub);

    List<PlayerClub> findByClubId(Long clubId);

    PlayerClub findById(Long id);

    void update(PlayerClub playerClub);

    void delete(Long id);

    int exists(@Param("clubId") Long clubId, @Param("playerId") Long playerId);
}