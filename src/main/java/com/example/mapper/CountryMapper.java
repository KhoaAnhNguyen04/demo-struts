package com.example.mapper;

import java.util.List;

import com.example.model.Country;


public interface  CountryMapper {
    List<Country> findAll();

    Country findById(Long id);

    void insert(Country country);

    void update(Country country);

    void delete(Long id);
}
