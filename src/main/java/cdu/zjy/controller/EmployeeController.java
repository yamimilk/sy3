package cdu.zjy.controller;


import cdu.zjy.model.Employee;
import cdu.zjy.service.DepartmentService;
import cdu.zjy.service.EmployeeService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RequestMapping("/emp")
@Controller
public class EmployeeController {
    @Autowired
    DepartmentService departmentService;
    @Autowired
    EmployeeService employeeService;
    @GetMapping("get")
   public ModelAndView get(@RequestParam("id") int id) {
        ModelAndView mv = new ModelAndView("emp/info");
        mv.addObject("emp", employeeService.get(id));
        return mv;
    }

    @RequestMapping("query")
    public ModelAndView query(Employee condition, @RequestParam(name = "pageNum", defaultValue = "1") int pageNum) {
        ModelAndView mv = new ModelAndView("emp/list");
        PageHelper.startPage(pageNum, 5);
        List<Employee> employeeList = employeeService.query(condition);
        PageInfo<Employee> pageInfo = new PageInfo<>(employeeList);
        mv.addObject("emps",employeeList);
        mv.addObject("deps", departmentService.list());
        mv.addObject("pageInfo", pageInfo);
        mv.addObject("c", condition);
        return mv;
    }

    @GetMapping("add")
    public ModelAndView add() {
        ModelAndView mv = new ModelAndView("emp/add");
        mv.addObject("deps", departmentService.list());
        return mv;
    }

    @PostMapping("add")
    public String add(Employee employee) {
        employeeService.add(employee);
        return "redirect:query";
    }

    @GetMapping("mod")
    public ModelAndView mod(@RequestParam("id") int id) {
        ModelAndView mv = new ModelAndView("emp/mod");
        mv.addObject("emp", employeeService.get(id));
        mv.addObject("deps", departmentService.list());
        return mv;
    }

    @PostMapping("mod")
    public String mod(Employee employee) {
        employeeService.mod(employee);
        return "redirect:query";
    }

    @GetMapping("del")
    public String del(@RequestParam("id") int id) {
        employeeService.del(id);
        return "redirect:query";
    }
}
