package com.example.model;

public class League {
    Long id;
    String leagueName;

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
}
