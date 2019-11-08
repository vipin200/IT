package Employee;

import java.io.Serializable;


public class Employee implements Serializable {
    private String name;
    private int age;
    private int salary;
    private int id;
    private String address;
    private String job;

    public int sum (int x,int y)
    {
        return x+y;
    }
    public void display()
    {
        System.out.println("Hello");
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }
    
}
