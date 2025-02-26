package com.mindsprint.project.models;

public class Customer {

    // Declare 3 variables
    private int rollNo;
    private String name;
    private String address;

    // Constructor
    public Customer(int rollNo, String name, String address) {
        this.rollNo = rollNo;
        this.name = name;
        this.address = address;
    }

    // Getters and Setters
    public int getRollNo() {
        return rollNo;
    }

    public void setRollNo(int rollNo) {
        this.rollNo = rollNo;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    // toString()

    @Override
    public String toString() {
        return "Customer{" +
                "rollNo=" + rollNo +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                '}';
    }

    // This class is POJO Plain Old Java Object
}
