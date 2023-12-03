package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import service.PostService;

@Controller
public class MainController {
    private final PostService postService;
    @Autowired
    public MainController(PostService postService) {
        this.postService = postService;
    }


}
