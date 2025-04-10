package cdu.zjy.service;

import cdu.zjy.model.Employee;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface EmployeeService {

    Employee get(int id);

    List<Employee> query(Employee condition);

    boolean add(Employee employee);
    boolean mod(Employee newemployee);
    boolean del(int id);
}
