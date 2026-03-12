package com.example.model;

public class Country {
    private Long id;
    private String countryName;
    private String imgUrl;

    public Country() {
    }
    public Country(Long id, String countryName) {
        this.id = id;
        this.countryName = countryName;
    }
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

}
