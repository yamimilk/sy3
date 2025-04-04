package cdu.zjy.dao;

import cdu.zjy.model.Department;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
public interface DepartmentDao {
    Department findById(int id);
    List<Department> findAll();
    int add(Department department);
    int mod(Department department);
    int del(int department);

}
