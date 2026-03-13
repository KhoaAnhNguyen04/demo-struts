package com.example.action;

import java.util.List;

import com.example.model.Club;
import com.example.model.Player;
import com.example.model.PlayerClub;
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
    private PlayerClub playerClub;

    private Integer clubId;
    private String imgUrl;
// 
    private List<Player> players;
    private String clubName;

    private Integer playerClubId;
    private Integer playerId;
    private Integer yearJoined;
    private Integer yearLeft;
    private Integer appearances;
    private Integer goals;
    private Integer assists;
    private Integer cleanSheets;
    
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
        playerClubService.insert(clubId, playerId, yearJoined, yearLeft, appearances, goals, assists, cleanSheets);
        return SUCCESS;
    }

    public String editPlayerFromClub() {
        playerClub = playerClubService.findByPlayerIdAndClubId(playerId, clubId);
        return SUCCESS;
    }
    public String updatePlayerFromClub() {
        playerClubService.update(playerClubId, yearJoined, yearLeft, appearances, goals, assists, cleanSheets);
        return SUCCESS;
    }

    // ========================
    // Create club
    // ========================
    public String create() {
        Club newClub = new Club();
        newClub.setClubName(clubName);
        newClub.setImgUrl(imgUrl);
        
        clubService.insert(newClub);
        return SUCCESS;
    }

    // ========================
    // Update club
    // ========================
    public String update() {
        Club updatedClub = new Club();
        updatedClub.setId(clubId);
        updatedClub.setClubName(clubName);
        updatedClub.setImgUrl(imgUrl);

        clubService.update(updatedClub);
        return SUCCESS;
    }

    // ========================
    // Delete club
    // ========================
    public String delete() {
        clubService.delete(clubId);
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

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public ClubService getClubService() {
        return clubService;
    }

    public PlayerClubService getPlayerClubService() {
        return playerClubService;
    }

    public PlayerService getPlayerService() {
        return playerService;
    }

    public void setClubs(List<Club> clubs) {
        this.clubs = clubs;
    }

    public void setClub(Club club) {
        this.club = club;
    }

    public PlayerClub getPlayerClub() {
        return playerClub;
    }

    public void setPlayerClub(PlayerClub playerClub) {
        this.playerClub = playerClub;
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

    public Integer getPlayerClubId() {
        return playerClubId;
    }

    public void setPlayerClubId(Integer playerClubId) {
        this.playerClubId = playerClubId;
    }
}