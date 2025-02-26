package com.mindsprint;

import com.mindsprint.project.models.Customer;
import com.mindsprint.project.service.CustomerService;
import org.junit.jupiter.api.*;

import java.util.List;

public class CustomerTest {
    static CustomerService service;

    @BeforeAll
    public static void setUp(){
        service = new CustomerService();
    }

    @AfterAll
    public static void tearDown(){
        service = null;
    }

    @Test
    public void addCustomer(){
        Customer result = service.addNewCustomer(new Customer(4, "Pawan", "India"));
        Assertions.assertEquals("Pawan", result.getName());
    }

    @Test
    public void getAll(){
        List<Customer> list = service.getAllCustomers();
        Assertions.assertEquals(3, list.size());
    }
}
