package com.example.model;


public class PlayerClub {
    private Integer id;
    private Integer yearJoined;
    private Integer yearLeft;

    private Integer appearances;
    private Integer goals;
    private Integer assists;
    private Integer cleanSheets;
    
    private Player player;
    private Club club;
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
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

    public Integer getAppearances() {
        return appearances;
    }
    public void setAppearances(Integer appearances) {
        this.appearances = appearances;
    }
    public Integer getGoals() {
        return goals;
    }
    public void setGoals(Integer goals) {
        this.goals = goals;
    }
    public Integer getAssists() {
        return assists;
    }
    public void setAssists(Integer assists) {
        this.assists = assists;
    }
    public Integer getCleanSheets() {
        return cleanSheets;
    }
    public void setCleanSheets(Integer cleanSheets) {
        this.cleanSheets = cleanSheets;
    }
    @Override
    public String toString() {
        return "PlayerClub [id=" + id + ", yearJoined=" + yearJoined + ", yearLeft=" + yearLeft + ", appearances="
                + appearances + ", goals=" + goals + ", assists=" + assists + ", cleanSheets=" + cleanSheets
                + ", player=" + player + ", club=" + club + "]";
    }
    
}