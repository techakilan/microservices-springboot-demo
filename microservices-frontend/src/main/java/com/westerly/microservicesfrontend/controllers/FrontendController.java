package com.westerly.microservicesfrontend.controllers;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import com.westerly.microservicesfrontend.models.CatalogItem;
import com.westerly.microservicesfrontend.models.Movie;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.client.RestTemplate;

@RefreshScope
@Controller
public class FrontendController {
    private boolean isLoggedUser = true;

    @Value("${endpoints.microservices-api-gateway-url:'http://localhost:9095'}")
    private String apiGatewayUrl;

    @Autowired
    RestTemplate restTemplate;

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("api_gatway_url", apiGatewayUrl);
        model.addAttribute("is_logged_user", isLoggedUser);
        return "home";
    }

    @PostMapping("/movie-info")
    public String movie_info_form(Model model, HttpServletRequest req) {
        String movieId = req.getParameter("movieId");
        String url = apiGatewayUrl + "/movies/" + movieId;
        try {
            Movie movie = restTemplate.getForObject(
                url, Movie.class);
                model.addAttribute("movie_name", movie.getName());
                model.addAttribute("movie_description", movie.getDescription());
        } catch (Exception e) {
            model.addAttribute("error", "Something went wrong!!! Try with with another movieId or userId");
                        
        }
        return "movie_info";
    }

    @PostMapping("/movie-catalog")
    public String novie_catlog(Model model, HttpServletRequest req) {
        String userId = req.getParameter("userId");
        String url = apiGatewayUrl + "/catalog/" + userId;
        ResponseEntity<CatalogItem[]> response = restTemplate.getForEntity(
                url,
                CatalogItem[].class);
        CatalogItem[] movieList = response.getBody();

        model.addAttribute("movie_list", movieList);
        return "movie_catalog";
    }

    @GetMapping("/login")
    public String hello(Model model) {
        this.isLoggedUser = true;
        return "redirect:/";
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request) throws ServletException {
        this.isLoggedUser = false;
        request.logout();
        return "redirect:/";

    }
    @GetMapping("/error")
    public String error(Model model){
        model.addAttribute("error","Something went wrong!!! Try with with another movieId or userId");
        return "error";
    }
}