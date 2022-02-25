package com.westerlytutors.movieinfoservice.resources;

import com.westerlytutors.movieinfoservice.models.Movie;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/movies")
public class MovieResource {
    @RequestMapping("/{movieId}")
    public Movie getMovieInfo(@PathVariable("movieId") String movieId) {
        Movie movie;
        if(movieId.equals("100")){
            movie = new Movie(movieId, "Avengers", "Marvel movie");
        }
        else if(movieId.equals("200")) {
            movie = new Movie(movieId, "Terminator", "Arnold movie");
        }
        else {
            movie = new Movie(movieId, "No movie found", "");
        }
        return movie;
    }
}
