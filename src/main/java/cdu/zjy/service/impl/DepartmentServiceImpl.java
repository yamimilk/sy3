package cdu.zjy.service.impl;

import cdu.zjy.dao.DepartmentDao;
import cdu.zjy.dao.EmployeeDao;
import cdu.zjy.model.Department;
import cdu.zjy.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class DepartmentServiceImpl implements DepartmentService {


    @Autowired
    DepartmentDao departmentDao;
    @Autowired
    EmployeeDao employeeDao;
    @Override
    public List<Department> list(){ return departmentDao.findAll();}

    @Override
    public List<Department> query(Department condition) {
        return departmentDao.find(condition);
    }
    @Override
    public Department get(int id) {
        return departmentDao.findById(id);
    }

    @Override
    public boolean add(Department department) {
        return departmentDao.add(department) == 1;
    }

    @Override
    public boolean mod(Department newdepartment) {
        return departmentDao.mod(newdepartment) == 1;
    }

    @Override
    public boolean del(int id) {
        return departmentDao.del(id) == 1;
    }

}
