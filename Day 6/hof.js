// Higher order function

const arr = [1,2,3,4,5,6,7];

const mulArray = [];

for (let num of arr){
    mulArray.push(3*num);
}

// console.log(mulArray);

const newArray = arr.map((num) => num * 3);

console.log(newArray);

const evenArr = arr.filter((num) => num%2 === 0);
console.log(evenArr);

const found = arr.find(num => num === 19);

// if first match found return that number else return undefined

console.log(found ? 'Found : '+ found :'Not found'); 


const findIndex = arr.findIndex((num) => num === 2);

console.log(findIndex ? 'Found ' + findIndex : 'Not found');
