package com.example.services;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.example.mapper.CountryMapper;
import com.example.model.Country;
import com.example.utils.MyBatisUtil;

public class CountryService {

    public List<Country> findAll() {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            CountryMapper mapper = session.getMapper(CountryMapper.class);
            return mapper.findAll();
        }
    }

    public Country findById(Integer id) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            CountryMapper mapper = session.getMapper(CountryMapper.class);
            return mapper.findById(id);
        }
    }

    public void insert(Country country) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            CountryMapper mapper = session.getMapper(CountryMapper.class);
            mapper.insert(country);
            session.commit();
        }
    }

    public void delete(Integer id) {
        try (SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession()) {
            CountryMapper mapper = session.getMapper(CountryMapper.class);
            mapper.delete(id);
            session.commit();
        }
    }
}