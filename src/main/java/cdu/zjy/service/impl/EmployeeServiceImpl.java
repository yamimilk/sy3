package cdu.zjy.service.impl;

import cdu.zjy.dao.EmployeeDao;
import cdu.zjy.model.Employee;
import cdu.zjy.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    EmployeeDao employeeDao;
    @Override
    public List<Employee> query(Employee condition) {
        return employeeDao.find(condition);
    }

    @Override
    public Employee get(int id) {
        return employeeDao.findById(id);
    }

    @Override
    public boolean add(Employee employee) {
        return employeeDao.add(employee) == 1;
    }

    @Override
    public boolean mod(Employee newemployee) {
        return employeeDao.mod(newemployee) == 1;
    }

    @Override
    public boolean del(int id) {
        return employeeDao.del(id) == 1;
    }
}
