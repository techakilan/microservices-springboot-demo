package com.westerlytutors.movieinfoservice.models;

public class Movie {
    private String movieId;
    private String name;
    private String description;
    private String movieInfoServerUrl;

    public Movie(String movieId, String name, String description, String movieInfoServerUrl) {
        this.movieId = movieId;
        this.name = name;
        this.description = description;
        this.movieInfoServerUrl = movieInfoServerUrl;
    }
    public String getMovieId() {
        return movieId;
    }

    public void setMovieId(String movieId) {
        this.movieId = movieId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getMovieInfoServerUrl() {
        return movieInfoServerUrl;
    }

    public void setMovieInfoServerUrl(String movieInfoServerUrl) {
        this.movieInfoServerUrl = movieInfoServerUrl;
    }
}
