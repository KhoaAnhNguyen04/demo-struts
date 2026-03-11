package com.example.model;


public class PlayerClub {
    private Long id;
    private Integer yearJoined;
    private Integer yearLeft;

    private Player player;
    private Club club;
    
    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }
    public Integer getYearJoined() {
        return yearJoined;
    }
    public void setYearJoined(Integer yearJoined) {
        this.yearJoined = yearJoined;
    }
    public Integer getYearLeft() {
        return yearLeft;
    }
    public void setYearLeft(Integer yearLeft) {
        this.yearLeft = yearLeft;
    }
    public Player getPlayer() {
        return player;
    }
    public void setPlayer(Player player) {
        this.player = player;
    }
    public Club getClub() {
        return club;
    }
    public void setClub(Club club) {
        this.club = club;
    }

    // getter/setter
    
}