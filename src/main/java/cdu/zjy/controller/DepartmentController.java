package cdu.zjy.controller;

import cdu.zjy.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/department")
@Controller
public class DepartmentController {
    @Autowired
    DepartmentService departmentService;
    @GetMapping("/list")
    public String list(Model model){
        model.addAttribute("departmentList",departmentService.findAll());
        return "department_list";
    }
}