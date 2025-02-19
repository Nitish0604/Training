const array = [];

const array1 = [1,2,3,4,5,6];

const array2 = new Array(4);

console.log(array.length);
console.log(array1.length);
console.log(array2.length);

array.push(10,20,30); // add in last
array.unshift(5); // add in starting

console.log(array.shift()); // remove from first index
console.log(array.pop()); // remove last element

console.log(array);