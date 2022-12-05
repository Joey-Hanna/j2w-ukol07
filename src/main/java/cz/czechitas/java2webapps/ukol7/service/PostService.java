package cz.czechitas.java2webapps.ukol7.service;

import cz.czechitas.java2webapps.ukol7.entity.Post;
import cz.czechitas.java2webapps.ukol7.repository.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;

@Service
public class PostService {

    public PostRepository postRepository;

    @Autowired
    public PostService(PostRepository postRepository) {
        this.postRepository = postRepository;
    }


    public Page<Post> list(LocalDate published, Pageable pageable) {
        PageRequest pageRequest= PageRequest.of(0, 20);
        return postRepository.orderByPublicationDate(published, pageRequest);
    }

    public String singlePost(String slug) {
        return postRepository.findBySlug(slug);
    }





}
