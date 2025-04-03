package cdu.zjy.model;

import java.io.Serializable;

public class Department implements Serializable {
    private Integer id;
    private String name;
    private String number;

    public Department( String name, String number) {
        this.name = name;
        this.number = number;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    @Override
    public String toString() {
        return "Department{" +
                ",name='" +name + '\'' +
                ",password='" + number + '\'' +
                '}';
    }
}
