package com.example.action;

import java.util.List;

import com.example.model.Country;
import com.example.model.Player;
import com.example.services.CountryService;
import com.example.services.PlayerService;
import com.opensymphony.xwork2.ActionSupport;

public class PlayerAction extends ActionSupport {
    private final PlayerService playerService = new PlayerService();
    private final CountryService countryService = new CountryService();

    private List<Player> players;
    private List<Country> countries;
    private Player player;
    private Integer id;
    private Integer countryId;

    private String fullName;
    private String position;
    private Integer birthYear;
    private Integer shirtNumber;

    private Integer appearances;
    private Integer goals;
    private Integer assists;
    private Integer cleanSheets;
    

    public String list() {
        players = playerService.findAll();
        countries = countryService.findAll();
        return SUCCESS;
    }

    public String detail() {
        player = playerService.getPlayerWithClubs(id);
        countries = countryService.findAll();
        
        return SUCCESS;
    }

    public String create() {
        Player newPlayer = new Player();

        newPlayer.setFullName(fullName);
        newPlayer.setPosition(position);
        newPlayer.setBirthYear(birthYear);
        newPlayer.setShirtNumber(shirtNumber);
        newPlayer.setCountry(countryService.findById(countryId));

        playerService.insert(newPlayer);
        return SUCCESS;
    }

    public String update() {
        Player updatedPlayer = new Player();
        
        updatedPlayer.setId(id);
        updatedPlayer.setFullName(fullName);
        updatedPlayer.setPosition(position);
        updatedPlayer.setBirthYear(birthYear);
        updatedPlayer.setShirtNumber(shirtNumber);
        updatedPlayer.setCountry(countryService.findById(countryId));


        playerService.update(updatedPlayer);
        return SUCCESS;
    }

    public String delete() {
        playerService.delete(id);
        return SUCCESS;
    }

    public List<Player> getPlayers() {
        return players;
    }

    public Player getPlayer() {
        return player;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
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

    public List<Country> getCountries() {
        return countries;
    }

    public void setCountries(List<Country> countries) {
        this.countries = countries;
    }

    public Integer getCountryId() {
        return countryId;
    }

    public void setCountryId(Integer countryId) {
        this.countryId = countryId;
    }

    public PlayerService getPlayerService() {
        return playerService;
    }

    public CountryService getCountryService() {
        return countryService;
    }

    public void setPlayers(List<Player> players) {
        this.players = players;
    }

    public void setPlayer(Player player) {
        this.player = player;
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
}