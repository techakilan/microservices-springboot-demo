package com.westerlytutors.moviecatalogservice.resources;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import com.westerlytutors.moviecatalogservice.models.CatalogItem;
import com.westerlytutors.moviecatalogservice.models.Movie;
import com.westerlytutors.moviecatalogservice.models.UserRating;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import io.github.resilience4j.circuitbreaker.annotation.CircuitBreaker;

@RestController
@RequestMapping("/catalog")
public class MovieCatalogResource {
    private static final String CATALOG_SERVICE = "catalogService";
    @Autowired
    RestTemplate restTemplate;

    @RequestMapping("/{userId}")
    @CircuitBreaker(name = CATALOG_SERVICE, fallbackMethod = "catalogFallback")
    public List<CatalogItem> getCatalog(@PathVariable("userId") String userId) {
        UserRating userRating = restTemplate.getForObject("http://ratings-data-service/ratingsdata/user/" + userId,
                UserRating.class);

        return userRating.getRatings().stream().map(
                rating -> {
                    Movie movie = restTemplate.getForObject(
                            "http://movie-info-service/movies/" + rating.getMovieId(), Movie.class);
                    return new CatalogItem(movie.getName(), movie.getDescription(), rating.getRating());
                }).collect(Collectors.toList());
    }

    public List<CatalogItem> catalogFallback(Exception ex) {
        return Arrays.asList(new CatalogItem("No Movie", "No desc", 0));    

    }
}
