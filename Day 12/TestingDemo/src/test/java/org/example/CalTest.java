package org.example;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

public class CalTest {

    private Calculator calc;
    @BeforeEach
    public void setUp(){
        calc = new Calculator();
    }
    @AfterEach
    public void tearDown(){
        calc = null;
    }
    @Test
    public void addTest(){
        Assertions.assertEquals(10, calc.add(4,6));
        Assertions.assertEquals(-2, calc.add(4,-6));
        Assertions.assertNotEquals(0, calc.add(4,-6));
    }

    @Test
    public void subTest(){
        Assertions.assertEquals(-2, calc.subtract(4,6));
        Assertions.assertEquals(10, calc.subtract(4,-6));
        Assertions.assertNotEquals(0, calc.subtract(4,-6));
    }

    @Test
    public void mulTest(){
        Assertions.assertEquals(15, calc.multiply(5,3));
    }

    @Test
    public void divTest(){
        Assertions.assertEquals(5, calc.div(10,2));
        Assertions.assertEquals(-2, calc.div(-6,3));
    }
}

