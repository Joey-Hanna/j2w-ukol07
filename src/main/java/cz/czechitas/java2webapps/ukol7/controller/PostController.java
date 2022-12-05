package cz.czechitas.java2webapps.ukol7.controller;

import cz.czechitas.java2webapps.ukol7.entity.Post;
import cz.czechitas.java2webapps.ukol7.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDate;

@Controller
public class PostController {

    public PostService postService;

    @Autowired
    public PostController(PostService postService) {
        this.postService = postService;
    }

    @GetMapping("/")
    public ModelAndView seznamPostu(LocalDate published, Pageable pageable) {
        return new ModelAndView("postList")
                .addObject("posts", postService.list(published, pageable));
    }


    @GetMapping("/post/{slug}")
    public ModelAndView jedenPost(@PathVariable String slug) {
        return new ModelAndView("postDetails")
                .addObject("singlePost", postService.singlePost(slug));
    }

    @GetMapping("/vyber")
    public String vyber() {
        return "vyber";
    }
}

