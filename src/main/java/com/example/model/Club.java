package com.example.model;

public class Club {

    private Long id;
    private String clubName;

    public Club() {
    }

    public Club(Long id, String clubName) {
        this.id = id;
        this.clubName = clubName;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getClubName() {
        return clubName;
    }

    public void setClubName(String clubName) {
        this.clubName = clubName;
    }

    @Override
    public String toString() {
        return "Club [id=" + id + ", clubName=" + clubName + "]";
    }
}