// remove duplicates from array

let number = [1,2,2,3,4,4,5];
let unique = [...new Set(number)];
console.log(unique);

// average of numbers

let input = prompt('Enter numbers : ').split(',').map(Number);
let sum = 0;
for (let n of input){
    sum += n;
}

console.log('Average : ', sum/input.length)

// largest in array

let largest = number[0];
for (let num of number){
    if(num > largest){
        largest = num;
    }
}
console.log('Largest Number is : ', largest);

//COUNT vowels

let str = 'PAras BudhiRAja';

let vowels = 'aeiouAEIOU';
let count = 0;

for(let s of str){
    if(vowels.includes(s)){
        count++;
    }
}

console.log('Count of vowels : ', count);

// find duplicates in array

let numbers = [1,2,2,3,4,4,5];
let track ={};
let duplicate =[];
for(num of numbers){
    if(track[num]){
        duplicate.push(num);
    }
    else{
        track[num] = true;
    }
}
console.log(duplicate);

// array to uppercase

let arr = ['Mind', 'Sprint', 'pvt', 'ltd'];
for(let i = 0; i < arr.length; i++){
    arr[i] = arr[i].toUpperCase();
}

console.log(arr);

//

let names = prompt('Enter numbers by commas').split(',');
for (let n of names){
    console.log(n.trim() + ': '+ n.trim().length)
}