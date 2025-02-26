package org.example;

import org.junit.jupiter.api.*;

public class SampleTest2 {
    @BeforeAll
    public static void beforeAll(){
        System.out.println("Before All Test Cases");
    }

    @BeforeEach // --> before every test case it runs
    public void setUp(){
        System.out.println("DB Connected");
    }
    @AfterEach // // --> after every test case it runs
    public void tearDown(){
        System.out.println("DB Disconnected");
    }

    @Test
    public void myTest1(){
        System.out.println("Test 1 Executed");
    }
    @Test
    public void myTest2(){
        System.out.println("Test 2 Executed");
    }

    @AfterAll
    public static void afterAll(){
        System.out.println("After All Test Cases");
    }

}
