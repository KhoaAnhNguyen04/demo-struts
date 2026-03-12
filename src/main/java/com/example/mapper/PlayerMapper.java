package com.example.mapper;

import java.util.List;

import com.example.model.Player;

public interface PlayerMapper {
    List<Player> findAll();

    Player findById(Integer id);

    Player getPlayerWithClubs(Integer id);

    void insert(Player Player);

    void update(Player Player);

    void delete(Integer id);
}