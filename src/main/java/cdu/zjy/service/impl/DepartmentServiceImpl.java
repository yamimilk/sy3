package cdu.zjy.service.impl;

import cdu.zjy.dao.DepartmentDao;
import cdu.zjy.model.Department;
import cdu.zjy.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class DepartmentServiceImpl implements DepartmentService {


    @Autowired
    DepartmentDao departmentDao;

    @Override
    public List<Department> findAll(){ return departmentDao.findAll();}

    @Override
    public Department findById(int id) {
        return departmentDao.findById(id);
    }

    @Override
    public boolean add(Department department) {
        return false;
    }

    @Override
    public boolean mod(Department newdepartment) {
        return false;
    }

    @Override
    public boolean del(int id) {
        return false;
    }

}
