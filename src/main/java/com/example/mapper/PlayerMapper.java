package com.example.mapper;

import java.util.List;

import com.example.model.Player;

public interface PlayerMapper {
    List<Player> findAll();

    Player findById(Long id);

    Player getPlayerWithClubs(Long id);

    void insert(Player Player);

    void update(Player Player);

    void delete(Long id);
}