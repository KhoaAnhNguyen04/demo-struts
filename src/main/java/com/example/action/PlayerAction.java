package com.example.action;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.example.model.Player;
import com.example.services.PlayerService;
import com.opensymphony.xwork2.ActionSupport;

public class PlayerAction extends ActionSupport {
    private static final Logger logger = LogManager.getLogger(PlayerAction.class);

    private final PlayerService playerService = new PlayerService();

    private List<Player> players;
    private Player player;
    private Long id;

    private String fullName;
    private String position;
    private Integer birthYear;
    private Integer shirtNumber;

    public String list() {
        players = playerService.findAll();

        logger.info("Players count: {}", players.size());

        for (Player p : players) {
            logger.info("Player: {}", p.getFullName());
        }
        return SUCCESS;
    }

    public String detail() {
        player = playerService.getPlayerWithClubs(id);
        return SUCCESS;
    }

    public String create() {
        Player newPlayer = new Player();
        newPlayer.setFullName(fullName);
        newPlayer.setPosition(position);
        newPlayer.setBirthYear(birthYear);
        newPlayer.setShirtNumber(shirtNumber);

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
}