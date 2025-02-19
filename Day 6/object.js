const person ={
    firstName : 'Paras',
    lastName : 'Budhiraja',
    email : 'paras@gmail.com',
    age : 22,
    address :{
        street : "XYZ",
        pinCode : 133009,
        city : 'New York',
        country : 'US'
    },

    greeting : function(){
        console.log(`Welcome ${this.firstName} ${this.lastName}`);
    }
};

console.log('Address : ',person.address);
person.greeting();

console.log(person['email']);

for(let key in person){
    console.log(`${key} : ${person[`${key}`]}`);
}