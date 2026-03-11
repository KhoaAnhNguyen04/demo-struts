package com.example.action;

import java.util.List;

import com.example.model.Club;
import com.example.services.ClubService;
import com.opensymphony.xwork2.ActionSupport;

public class ClubAction extends ActionSupport {

    private final ClubService clubService = new ClubService();

    private List<Club> clubs;
    private Club club;
    private Long id;

    private String clubName;

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
        club = clubService.findById(id);
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
        updatedClub.setId(id);
        updatedClub.setClubName(clubName);

        clubService.update(updatedClub);
        return SUCCESS;
    }

    // ========================
    // Delete club
    // ========================
    public String delete() {
        clubService.delete(id);
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

    public void setId(Long id) {
        this.id = id;
    }

    public void setClubName(String clubName) {
        this.clubName = clubName;
    }

}