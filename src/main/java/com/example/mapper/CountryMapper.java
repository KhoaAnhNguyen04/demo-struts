package com.example.mapper;

import java.util.List;

import com.example.model.Country;


public interface  CountryMapper {
    List<Country> findAll();

    Country findById(Integer id);

    void insert(Country country);

    void update(Country country);

    void delete(Integer id);
}
