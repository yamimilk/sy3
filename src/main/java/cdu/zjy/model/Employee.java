package cdu.zjy.model;

import java.io.Serializable;

public class Employee implements Serializable {

    private Integer id;
    private String number;
    private String name;
    private String gender;
    private Integer age;
    private Integer dep_id;

//    public Employee(String number, String name, String gender, Integer age) {
////        this.id = id;
//        this.number = number;
//        this.name = name;
//        this.gender = gender;
//        this.age = age;
////        this.dep_id = dep_id;
//    }
//
//    public Employee() {
//    }

    @Override
    public String toString() {
        return "Employee{" +
                ", id=" + id +
                "number=" + number +
                ", name='" + name + '\'' +
                ", gender='" + gender + '\'' +
                ", age=" + age +
                ", dep_id=" + dep_id +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Integer getDep_id() {
        return dep_id;
    }

    public void setDep_id(Integer dep_id) {
        this.dep_id = dep_id;
    }
}
