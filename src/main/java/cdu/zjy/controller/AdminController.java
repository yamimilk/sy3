package cdu.zjy.controller;

import cdu.zjy.model.Admin;
import cdu.zjy.service.AdminService;
import jakarta.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory; // ✅ 正确的日志导入
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("admin")
public class AdminController {

    // ✅ 日志对象（正确的方式）
    private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

    @Autowired
    private AdminService adminService;

    @GetMapping("login")
    public String showLogin() {
        logger.info("进入登录页面");
        return "admin/login";
    }

    @PostMapping("login")
    public String login(@RequestParam("username") String username,
                        @RequestParam("password") String password,
                        HttpSession session,
                        Model model) {
        logger.info("尝试登录：{}", username);

        Admin admin = adminService.login(username, password);
        if (admin != null) {
            logger.info("管理员登录成功：{}", username);
            session.setAttribute("admin", admin);
            return "redirect:/index";
        } else {
            logger.warn("管理员登录失败：{}", username);
            model.addAttribute("error", "用户名或密码错误");
            return "admin/login";
        }
    }

    @GetMapping("logout")
    public String logout(HttpSession session) {
        Admin admin = (Admin) session.getAttribute("admin");
        if (admin != null) {
            logger.info("管理员退出登录：{}", admin.getUsername());
        } else {
            logger.info("无管理员登录状态，跳转登录页");
        }
        session.removeAttribute("admin");
        return "redirect:/admin/login";
    }

    @GetMapping("index")
    public String index() {
        logger.info("进入后台首页");
        return "index";
    }
}
