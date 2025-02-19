class Account{
    constructor(accNo, holderName, balance){
        this.accNo = accNo;
        this.holderName = holderName;
        this.balance = balance;
    }

    getBalance(){
        return this.balance;
    }

    deposit(amount){
        this.balance += amount;
        console.log(`${amount} is credited to account no : *****${this.accNo.slice(5)}\nAvailable Balance : ${this.balance}`);
    }

    withdraw(amount){
        if(amount > this.getBalance()){
            console.log('No sufficient balance');
        }
        else{
            this.balance -= amount;
            console.log(`${amount} is debited to account no : *****${this.accNo.slice(5)}\nAvailable Balance : ${this.balance}`);
        }
    }
}

const acc1 = new Account('1900129876', 'Paras', 90000);
acc1.deposit(10000);
acc1.withdraw(20000);