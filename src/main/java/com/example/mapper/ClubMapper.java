package com.example.mapper;
import java.util.List;

import com.example.model.Club;

public interface  ClubMapper {
    List<Club> findAll();

    Club findById(Long id);

    Club getClubWithPlayers(Long id);

    void insert(Club club);

    void update(Club club);

    void delete(Long id);
}
