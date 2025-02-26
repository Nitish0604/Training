package org.example;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import org.junit.Before;
import org.junit.Test;
import org.junit.jupiter.api.BeforeEach;

public class AccountTest {

    private Savings savingsAccount;
    private Current currentAccount;

    @Before
    public void setUp() {
        savingsAccount = new Savings(123456789L, "Alice", 100000);
        currentAccount = new Current(987654321L, "Bob", 100000);
    }

    @Test
    public void testSavingsWithdraw() {
        savingsAccount.withdraw(5000);
        assertEquals(95000, savingsAccount.getBalance());

        savingsAccount.withdraw(25000); // Triggering withdrawal limit charges
        assertEquals(69900, savingsAccount.getBalance()); // 95000 - 25000 - 100 (charges)
    }

    @Test
    public void testSavingsDeposit() {
        savingsAccount.deposit(5000);
        assertEquals(105000, savingsAccount.getBalance());
    }

    @Test
    public void testCurrentWithdraw() {
        currentAccount.withdraw(5000);
        assertEquals(95000, currentAccount.getBalance());
    }

    @Test
    public void testCurrentDeposit() {
        currentAccount.deposit(5000);
        assertEquals(105000, currentAccount.getBalance());
    }

    @Test
    public void testInsufficientBalance() {
        savingsAccount.withdraw(200000);
        assertEquals(100000, savingsAccount.getBalance());

        currentAccount.withdraw(200000);
        assertEquals(100000, currentAccount.getBalance());
    }

    @Test
    public void testSetAndGetAccountDetails() {
        savingsAccount.setAccountNo(111111111L);
        savingsAccount.setHolderName("Charlie");
        savingsAccount.setBalance(150000);

        assertEquals(111111111L, savingsAccount.getAccountNo());
        assertEquals("Charlie", savingsAccount.getHolderName());
        assertEquals(150000, savingsAccount.getBalance());

        currentAccount.setAccountNo(222222222L);
        currentAccount.setHolderName("David");
        currentAccount.setBalance(200000);

        assertEquals(222222222L, currentAccount.getAccountNo());
        assertEquals("David", currentAccount.getHolderName());
        assertEquals(200000, currentAccount.getBalance());
    }
}

