package com.westerlytutors.ratingsdataservice.resources;

import com.westerlytutors.ratingsdataservice.models.AllUserRatings;
import com.westerlytutors.ratingsdataservice.models.Rating;
import com.westerlytutors.ratingsdataservice.models.UserRating;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/ratingsdata")
public class RatingsResource {
    @RequestMapping("/{movieId}")
    public Rating getRating(@PathVariable("movieId") String movieId) {
        return new Rating(movieId, 4);
    }
    @RequestMapping("/user/{userId}")
    public UserRating getUserRatings(@PathVariable("userId") String userId) {
        AllUserRatings allUserRatings = new AllUserRatings();
        allUserRatings.initData();       
        return allUserRatings.findUserRatingByUserId(userId);

    }
}
