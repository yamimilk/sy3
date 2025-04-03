package cdu.zjy.test;

import cdu.zjy.dao.DepartmentDao;
import cdu.zjy.model.Department;
import cdu.zjy.service.DepartmentService;
import org.junit.jupiter.api.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.sql.SQLOutput;
import java.util.List;

public class SpringTest {
    @Test
    public void testSpring(){
        ApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");
        DepartmentDao departmentDao = (DepartmentDao) context.getBean("departmentDao");
//        DepartmentService.findAll();
//        List<Department>departments = departmentService.findAll();
//        if (departments != null){
//            for (Department department:departments){
//                System.out.println(department);
//            }
//        }else {
//            System.out.println("no found");
//        }

      Department department = departmentDao.findById(1);
        System.out.println(department);
//        departmentService.hello();
      List<Department> findall =departmentDao.findAll();
        System.out.println(findall);

    }
}
