package cz.czechitas.java2webapps.ukol7.controller;

import org.springframework.boot.Banner;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import cz.czechitas.java2webapps.ukol7.service.PostService;
import org.springframework.data.domain.Pageable;

@Controller
public class MainController {
    private final PostService postService;

    public MainController(PostService postService)
    {
        this.postService = postService;
    }

    @GetMapping("/")
    public ModelAndView index(Pageable pageable) {

        ModelAndView model = new ModelAndView("seznam");
        model.addObject("blogy", postService.list(pageable));
        return model;
    }
    @GetMapping("/post/{slug}")
    public ModelAndView singlePost(@PathVariable String slug){
        ModelAndView model = new ModelAndView("detail");
        model.addObject("detailSlug",postService.findBySlug(slug));

        return model;
    }
    @PostMapping(value = "/", params = "akce=dalsi")
    public ModelAndView hasPrevious(Pageable pageable){
        ModelAndView model = new ModelAndView("seznam");
        model.addObject("blogy", postService.list(pageable.next()));
        return model;
    }



}
