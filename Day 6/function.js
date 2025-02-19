

console.log(greetings('Mindsprintian'));
// console.log(data()); --> error


function greetings(name){
    return 'Welcome ' + name;
}

function cube(n){
    return n*n*n;
}

// console.log(greetings('Mindsprintian'));
console.log('Cube of 5 : ', cube(5));

// Function Expression
let data = function(){
    console.log('Hello Everyone!');
}
// Hoisting -- variables go on the top -- we can use variables before initialization

// Hoisting is possible in var but not in let and const

console.log(a);
var a = 10;
console.log(a);


// console.log(b);
// let b = 20;
// console.log(b);

// anonymous function - dont have a name - when we want to  callback 
const test = function(){
    console.log('Test triggered');
}

// for debugging, for recursion, use name functions
const myFunc = function test(){
    console.log('Test triggered 2');
}

test();
myFunc();

// recursion function

var factorial = function fact(n){
    return n < 2 ? 1 : n * fact(n-1);
}

console.log(factorial(3));