package cdu.zjy.test;

import cdu.zjy.dao.DepartmentDao;
import cdu.zjy.dao.EmployeeDao;
import cdu.zjy.model.Department;
import cdu.zjy.model.Employee;
import cdu.zjy.service.DepartmentService;
import org.junit.jupiter.api.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.sql.SQLOutput;
import java.util.List;

public class SpringTest {
    @Test
    public void testSpring(){
//        ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
//        DepartmentDao departmentDao = (DepartmentDao) context.getBean("departmentDao");

//      Department department = departmentDao.findById(1);
//        System.out.println(department);
//        departmentService.hello();
//      List<Department> findall =departmentDao.findAll();
//        System.out.println(findall);
//       int addTest = departmentDao.add(new Department( "testTwo", "197"));
 //       System.out.println(addTest);
//        int mod = departmentDao.mod(new Department( "testModMod", "1999"));
//        System.out.println(mod);

        ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
        EmployeeDao employeeDao = (EmployeeDao) context.getBean("employeeDao");
        List<Employee> findAll = employeeDao.findAll();
        System.out.println(findAll);
    }
}
