package com.example.model;

import java.util.List;

public class League {
    private Long id;
    private String leagueName;
    private List<Club> clubs;
    private Country country;

    public League() {
    }

    public League(Long id, String leagueName) {
        this.id = id;
        this.leagueName = leagueName;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLeagueName() {
        return leagueName;
    }

    public void setLeagueName(String leagueName) {
        this.leagueName = leagueName;
    }

    public List<Club> getClubs() {
        return clubs;
    }

    public void setClubs(List<Club> clubs) {
        this.clubs = clubs;
    }

    public Country getCountry() {
        return country;
    }

    public void setCountry(Country country) {
        this.country = country;
    }
}
