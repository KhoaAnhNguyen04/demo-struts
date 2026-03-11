package com.example.action;

import java.util.List;

import com.example.model.Club;
import com.example.model.Player;
import com.example.services.ClubService;
import com.example.services.PlayerClubService;
import com.example.services.PlayerService;
import com.opensymphony.xwork2.ActionSupport;

public class ClubAction extends ActionSupport {

    private final ClubService clubService = new ClubService();
    private final PlayerClubService playerClubService = new PlayerClubService();
    private final PlayerService playerService = new PlayerService();

    private List<Club> clubs;
    private Club club;
    private Integer clubId;
    private List<Player> players;
    private String clubName;


    private Integer playerId;
    private Integer yearJoined;
    private Integer yearLeft;
    // ========================
    // List clubs
    // ========================
    public String list() {
        clubs = clubService.findAll();
        return SUCCESS;
    }

    // ========================
    // Club detail
    // ========================
    public String detail() {
        club = clubService.findById(clubId);
        club = clubService.getClubWithPlayers(clubId);
        return SUCCESS;
    }

     public String showAddPlayerForm() {
        players = playerService.findAll();
        club = clubService.findById(clubId);
        return SUCCESS;
    }

     public String addPlayerToClub() {  
        playerClubService.insert(clubId, playerId, yearJoined, yearLeft);
        return SUCCESS;
    }
    // ========================
    // Create club
    // ========================
    public String create() {
        Club newClub = new Club();
        newClub.setClubName(clubName);

        clubService.insert(newClub);
        return SUCCESS;
    }

    // ========================
    // Update club
    // ========================
    public String update() {
        Club updatedClub = new Club();
        updatedClub.setId(clubId.longValue());
        updatedClub.setClubName(clubName);

        clubService.update(updatedClub);
        return SUCCESS;
    }

    // ========================
    // Delete club
    // ========================
    public String delete() {
        clubService.delete(clubId.longValue());
        return SUCCESS;
    }

    // ========================
    // Getters / Setters
    // ========================

    public List<Club> getClubs() {
        return clubs;
    }

    public Club getClub() {
        return club;
    }

    public void setClubId(Integer clubId) {
        this.clubId = clubId;
    }
    public Integer getClubId() {
        return clubId;
    }

    public void setClubName(String clubName) {
        this.clubName = clubName;
    }
    public String getClubName() {
        return clubName;
    }

    public List<Player> getPlayers() {
        return players;
    }

    public void setPlayers(List<Player> players) {
        this.players = players;
    }

    public Integer getPlayerId() {
        return playerId;
    }

    public void setPlayerId(Integer playerId) {
        this.playerId = playerId;
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

}