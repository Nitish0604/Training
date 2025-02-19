// pass function as argument known as callback

let data = []

const fetchData = (cb) =>{
    setTimeout(() => {
        data = [1,2,3,4,5,6,7];
        console.log("data fetched successfully");
        cb();
    }, 2000)
}
const displayData= () =>{
    console.log('Display function : ', data);
}
fetchData(displayData);
// displayData();