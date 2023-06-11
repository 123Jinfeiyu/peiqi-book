package cn.peiqi.bookstore.controller;

import cn.peiqi.bookstore.domain.User;
import cn.peiqi.bookstore.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;


@Controller
public class UserController {

    @Resource
    private UserService userServiceImpl;

    @GetMapping("/user")
    public ModelAndView userList(User user) {
        ModelAndView modelAndView = new ModelAndView("jsp/user/list");
        List<User> users = userServiceImpl.selectUserAll(user);

        modelAndView.addObject("users", users);
        return modelAndView;
    }

    @GetMapping("/user/modify")
    public ModelAndView modify(int id) {
        ModelAndView modelAndView = new ModelAndView("jsp/user/modify");
        User user = userServiceImpl.selectUserById(id);
        modelAndView.addObject("user", user);
        return modelAndView;
    }

    @PostMapping("/user/modify")
    public String modifyPost(User user) {
        userServiceImpl.updateUser(user);
        return "redirect:/user";
    }

    @GetMapping("/user/del")
    public String deleteUser(int id) {
        userServiceImpl.deleteUser(id);
        return "redirect:/user";
    }

    @PostMapping("/user/addUser")
    public String addUser(User user) {
        int i = userServiceImpl.insertUser(user);

        return "redirect:/user";
    }
}
