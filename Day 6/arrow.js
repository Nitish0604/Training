const print= () =>{
    console.log('Sample');
}

const greeting = (name) =>{
    console.log('Welcome ' + name);
    // return implicitly
}

const add = (a,b) => a+b;
const calculate = (a,b) =>{
    return a+b; // return explicitly
}

print();
greeting('Paras');

console.log(add(2,3));

let a = calculate(3,4);
console.log(a);