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
    public List<Employee> findAll() {
        return employeeDao.findAll();
    }

    @Override
    public Employee findByNumber(String number) {
        return employeeDao.findByNumber(number);
    }

    @Override
    public boolean add(Employee employee) {
        return false;
    }

    @Override
    public boolean mod(Employee newemployee) {
        return false;
    }

    @Override
    public boolean del(int id) {
        return false;
    }
}
