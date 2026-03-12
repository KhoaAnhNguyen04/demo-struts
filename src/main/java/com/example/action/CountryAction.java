package com.example.action;

import java.util.List;

import com.example.model.Country;
import com.example.services.CountryService;
import com.opensymphony.xwork2.ActionSupport;

public class CountryAction extends ActionSupport {
    private Long id;
    private String countryName;
    private String imgUrl;

    private Country country;
    private List<Country> countries;

    private final CountryService countryService = new CountryService();

    public String list() {
        countries = countryService.findAll();
        return SUCCESS;
    }

    public String detail() {
        if (id == null) {
            addActionError("Country id is required");
            return ERROR;
        }

        country = countryService.findById(id);

        if (country == null) {
            addActionError("Country not found");
            return ERROR;
        }

        return SUCCESS;
    }

    public String createForm() {
        return SUCCESS;
    }

    public String create() {
        if (countryName == null || countryName.trim().isEmpty()) {
            addActionError("Country name is required");
            return INPUT;
        }

        Country newCountry = new Country();
        newCountry.setCountryName(countryName);
        newCountry.setImgUrl(imgUrl);

        countryService.insert(newCountry);
        return SUCCESS;
    }

    public String delete() {
        if (id == null) {
            addActionError("Country id is required");
            return ERROR;
        }

        countryService.delete(id);
        return SUCCESS;
    }

    // Getters & Setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCountryName() {
        return countryName;
    }

    public void setCountryName(String countryName) {
        this.countryName = countryName;
    }

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public Country getCountry() {
        return country;
    }

    public void setCountry(Country country) {
        this.country = country;
    }

    public List<Country> getCountries() {
        return countries;
    }

    public void setCountries(List<Country> countries) {
        this.countries = countries;
    }
}