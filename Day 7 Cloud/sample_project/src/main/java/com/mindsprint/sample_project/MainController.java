package com.mindsprint.sample_project;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {

    @GetMapping("/hello")
    public String getHello() {
        return "Hello from my new Spring Boot App";
    }

    @GetMapping("/employee")
    public Employee getEmployee() {
        return new Employee(1, "Anushka Kohli", "IT", 1000000);
    }
}
