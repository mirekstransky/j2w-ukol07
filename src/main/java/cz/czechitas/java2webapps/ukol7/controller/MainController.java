package cz.czechitas.java2webapps.ukol7.controller;

import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import cz.czechitas.java2webapps.ukol7.service.PostService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

@Controller
public class MainController {
    private final PostService postService;

    public MainController(PostService postService)
    {
        this.postService = postService;
    }

    @GetMapping("/")
    public ModelAndView index(@PageableDefault(sort = {"published"}) Pageable pageable) {
        ModelAndView model = new ModelAndView("seznam");
        model.addObject("blogy", postService.findAll(pageable));
        return model;
    }
}
