package org.example;

import java.util.Scanner;

class Account{
    private long accountNo;
    private String holderName;
    private int balance;

    public long getAccountNo(){
        return accountNo;
    }

    public void setAccountNo(long accountNo){
        this.accountNo = accountNo;
    }

    public String getHolderName(){
        return holderName;
    }

    public void setHolderName(String holderName){
        this.holderName = holderName;
    }

    public int getBalance(){
        return balance;
    }

    public void setBalance(int balance){
        this.balance = balance;
    }
}

interface AccountDetails{
    public void withdraw(int amount);
    public void deposit(int amount);
}

class Savings extends Account implements AccountDetails{
    public Savings(long accountNo, String holderName, int balance){
        super();
        this.setAccountNo(accountNo);
        this.setHolderName(holderName);
        this.setBalance(balance);
    }

    @Override
    public void withdraw(int amount){
        if(amount < getBalance()) {
            System.out.println("Withdrawed " + amount + " From Account No : " + getAccountNo());
            int remained = getBalance() - amount;
            setBalance(remained);
            System.out.println("Available Balance : " + remained);
            if(amount > 20000){
                System.out.println("Charges for reaching withdrawing Limit : 100/- ");
                setBalance(getBalance()-100);
            }
        }
        else{
            System.out.println("Insufficient Balance in your account");
        }
    }

    @Override
    public void deposit(int amount){
        System.out.println("Deposited " + amount + " To Account No : " + getAccountNo());
        int remained = getBalance() + amount;
        setBalance(remained);
        System.out.println("Available Balance : " + remained);
    }
}

class Current extends Account implements AccountDetails{
    public Current(long accountNo, String holderName, int balance){
        super();
        this.setAccountNo(accountNo);
        this.setHolderName(holderName);
        this.setBalance(balance);
    }

    @Override
    public void withdraw(int amount){
        if (amount < this.getBalance()){
            System.out.println("Withdrawed " + amount + " From Account No : " + getAccountNo());
            int remained = getBalance() - amount;
            setBalance(remained);
            System.out.println("Available Balance : " + remained);
            System.out.println("There is no withdrawing Limit");
        } else {
            System.out.println("Insufficient Balance in your account");
        }
    }
    @Override
    public void deposit(int amount){
        System.out.println("Deposited " + amount + " To Account No : " + getAccountNo());
        int remained = getBalance() + amount;
        setBalance(remained);
        System.out.println("Available Balance : " + remained);
    }
}

public class AccountPractice{
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);

        System.out.println("Enter Account No : ");
        long accountNo = sc.nextLong();

        System.out.println("Enter Holder Name : ");
        String holderName = sc.next();

        System.out.println("Choose Account Type (Saving/Current)");
        String accountType = sc.next();

        if(accountType.equalsIgnoreCase("Saving")){
            Savings s = new Savings(accountNo, holderName, 100000);

            System.out.println("Choose Withdraw/Deposit");
            String operation = sc.next();

            System.out.println("Enter Amount : ");
            int amount = sc.nextInt();

            if(operation.equalsIgnoreCase("Withdraw")){
                s.withdraw(amount);
            }
            else{
                s.deposit(amount);
            }
        }
        else if(accountType.equalsIgnoreCase("Current")){
            Current c = new Current(accountNo, holderName, 100000);

            System.out.println("Choose Withdraw/Deposit");
            String operation = sc.next();

            System.out.println("Enter Amount : ");
            int amount = sc.nextInt();

            if(operation.equalsIgnoreCase("Withdraw")){
                c.withdraw(amount);
            }
            else{
                c.deposit(amount);
            }
        }
        else{
            System.out.println("Wrong Account type choosed");
        }
    }
}