package am.basic.controllers;

import am.basic.models.User;
import am.basic.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class UsersController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/users")
    public String getUsersPage(ModelMap model) {
        List<User> users =  userRepository.findAll();
        model.addAttribute("usersFromServer", users);
        return "users";
    }
}
