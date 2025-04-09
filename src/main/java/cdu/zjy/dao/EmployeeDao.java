package cdu.zjy.dao;

import cdu.zjy.model.Employee;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EmployeeDao {
    List<Employee> findAll();
    Employee findByNumber(String number);
    int add(Employee employee);
    int mod(Employee employee);
    int del(int id);
}
