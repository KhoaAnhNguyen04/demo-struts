package com.example.model;

import java.util.List;

public class Club {
    private Long id;
    private String clubName;
    private String imgUrl;
    
    private List<PlayerClub> playerClubs;

    public Club() {
    }

    public Club(Long id, String clubName, String imgUrl) {
        this.id = id;
        this.clubName = clubName;
        this.imgUrl = imgUrl;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getClubName() {
        return this.clubName;
    }

    public void setClubName(String clubName) {
        this.clubName = clubName;
    }

    @Override
    public String toString() {
        return "Club [id=" + id + ", clubName=" + clubName + "]";
    }

    public List<PlayerClub> getPlayerClubs() {
        return this.playerClubs;
    }

    public void setPlayerClubs(List<PlayerClub> playerClubs) {
        this.playerClubs = playerClubs;
    }

    public String getImgUrl() {
        return this.imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

}