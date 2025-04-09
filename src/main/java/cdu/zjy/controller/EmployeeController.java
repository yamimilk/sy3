package cdu.zjy.controller;


import cdu.zjy.service.EmployeeService;
import jakarta.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/employee")
@Controller
public class EmployeeController {
    @Resource
    EmployeeService employeeService;
    @GetMapping("/list")
    public String list(Model model){
        model.addAttribute("employeeList",employeeService.findAll());
        return "employee_list";
    }
}
