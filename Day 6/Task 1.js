let arr = [1,2,3,4,5,2,2,2,3,4,5,5];

let a = arr.filter(num => {
     return num === 5
});

console.log(a.length);

// foreach Loop

arr.forEach(num => console.log(num+ " "));


result = [35,67,89,65,94];

console.log(result.every(num => num >= 35));
console.log(result.some(num => num >= 95));
console.log([[1,2],3,[2,3,4]].flat());

// TO CHECK ELEMENT EXIST OR NOT    
console.log(result.includes(35));

console.log("Paras Budhiraja".indexOf('s'));
console.log('Paras Budhiraja'.lastIndexOf('a'));

console.log("Paras Budhiraja".length);

const myarr =[10,20,30,40,50];

console.log(myarr.slice(2));
console.log(myarr.slice(2,4));

// splice function

myarr.splice(3,0,60); // Add the element at index

console.log(myarr);

myarr.splice(3,1);// delete element at index

console.log(myarr);

myarr.splice(3,2,67,45);

console.log(myarr);