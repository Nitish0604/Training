package com.mindsprint.project.dao;

import com.mindsprint.project.models.Customer;

import java.util.*;

public interface CustomerDAO {

    public Customer addNewCustomer(Customer customer);
    public Customer getCustomer();
    public List<Customer> getAllCustomers();
    public boolean deleteCustomer(int id);
    public boolean updateCustomer(int id, String address);

}
