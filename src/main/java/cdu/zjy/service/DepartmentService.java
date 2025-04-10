package cdu.zjy.service;

import cdu.zjy.model.Department;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface DepartmentService {

//    public static void hello(){
//        System.out.println("try");
//    }
    List<Department> list();

    List<Department> query(Department condition);
    Department get(int id);

    boolean add(Department department);

    boolean mod(Department newdepartment);

    boolean del(int id);
}
