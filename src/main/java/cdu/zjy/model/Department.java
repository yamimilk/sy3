package cdu.zjy.model;

import java.io.Serializable;

public class Department implements Serializable {
    private Integer id;
    private String name;
    private String number;

    public Department(Integer id, String name, String number) {
        this.id = id;
        this.name = name;
        this.number = number;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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
                "id=" + id +
                ",name='" +name + '\'' +
                ",password='" + number + '\'' +
                '}';
    }
}
