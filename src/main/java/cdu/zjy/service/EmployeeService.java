package cdu.zjy.service;

import cdu.zjy.model.Employee;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface EmployeeService {
    List<Employee> findAll();

    Employee findByNumber(String number);

    boolean add(Employee employee);
    boolean mod(Employee newemployee);
    boolean del(int id);
}
