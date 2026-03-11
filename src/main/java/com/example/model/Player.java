package com.example.model;

import java.util.List;

public class Player {
    private Long id;
    private String fullName;
    private String position;
    private Integer birthYear;
    private Integer shirtNumber;
    private List<Club> clubs;

    public Player() {
    }

    public Player(Long id, String fullName, String position, Integer birthYear, Integer shirtNumber) {
        this.id  = id;
        this.fullName = fullName;
        this.position = position;
        this.birthYear = birthYear;
        this.shirtNumber = shirtNumber;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public Integer getBirthYear() {
        return birthYear;
    }

    public void setBirthYear(Integer birthYear) {
        this.birthYear = birthYear;
    }

    public Integer getShirtNumber() {
        return shirtNumber;
    }

    public void setShirtNumber(Integer shirtNumber) {
        this.shirtNumber = shirtNumber;
    }

    public List<Club> getClubs() {
        return clubs;
    }
    public void setClubs(List<Club> clubs) {
    this.clubs = clubs;
    
}
@Override
    public String toString() {
        return "Player{" +
                "id=" + id +
                ", fullName='" + fullName + '\'' +
                ", position='" + position + '\'' +
                ", birthYear=" + birthYear +
                ", shirtNumber=" + shirtNumber +
                '}';
    }
}