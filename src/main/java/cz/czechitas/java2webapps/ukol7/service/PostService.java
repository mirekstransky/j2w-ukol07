package cz.czechitas.java2webapps.ukol7.service;

import cz.czechitas.java2webapps.ukol7.entity.Post;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import cz.czechitas.java2webapps.ukol7.repository.PostRepository;

import java.time.LocalDate;

@Service
public class PostService {

    private final PostRepository postRepository;
    public PostService(PostRepository postRepository) {
        this.postRepository = postRepository;
    }

    public Page<Post> list(Pageable pageable){
        pageable = PageRequest.of(pageable.getPageNumber(), 5);
        LocalDate date = LocalDate.now();

        return postRepository.findByPublishedBeforeOrderByPublishedDesc(date, pageable);
    }
    public void deleteById(long id){
        postRepository.deleteById(id);
    }
    public void pridatOsobu(Post post){

    }

    public Post findBySlug(String slug)    {
        return postRepository.findBySlug(slug);
    }
}
