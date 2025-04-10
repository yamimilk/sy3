package cdu.zjy.controller;

import cdu.zjy.model.Department;
import cdu.zjy.service.DepartmentService;
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

@RequestMapping("dep")
@Controller
public class DepartmentController {
    @Autowired
    DepartmentService departmentService;

    @RequestMapping("query")
    public ModelAndView query(Department condition, @RequestParam(name = "pageNum", defaultValue = "1") int pageNum) {
        ModelAndView mv = new ModelAndView("dep/list");
        PageHelper.startPage(pageNum, 5);
        List<Department> departmentList = departmentService.query(condition);
        PageInfo<Department> pageInfo = new PageInfo<>(departmentList);
        mv.addObject("deps", departmentList);
        mv.addObject("pageInfo", pageInfo);
        mv.addObject("c", condition);
        return mv;
    }

    @GetMapping("get")
    public ModelAndView get(@RequestParam("id") int id) {
        ModelAndView mv = new ModelAndView("dep/info");
        Department department = departmentService.get(id);
        mv.addObject("dep", departmentService.get(id));
        return mv;
    }

    @GetMapping("add")
    public String add() {
        return "dep/add";
    }

    @PostMapping("add")
    public String add(Department department) {
        if (departmentService.add(department)) {
            return "redirect:query";
        } else {
            return "redirect:add";
        }
    }

    @GetMapping("mod")
    public ModelAndView mod(@RequestParam("id") int id) {
        ModelAndView mv = new ModelAndView("dep/mod");
        Department department = departmentService.get(id);
        mv.addObject("dep", departmentService.get(id));
        return mv;
    }

    @PostMapping("mod")
    public String mod(Department department) {
        if (departmentService.mod(department)) {
            return "redirect:query";
        } else {
            return "redirect:mod";
        }
    }

    @GetMapping("del")
    public String del(@RequestParam("id") int id) {
        departmentService.del(id);
        return "redirect:query";

    }
}