// Using chaining
// const res = fetch('https://jsonplaceholder.typicode.com/users')
// res
//     .then(res => res.json())
//     .then(data => console.log(data))
//     .catch(err => console.log(err))
//     .finally(() => console.log('Promise executed'))

// Using async await
async function getUser() {
    try {
        const res = await fetch('https://jsonplaceholder.typicode.com/users');
        console.log(await res.json());
        throw new Error("Not found")
    } catch (error) {
        console.log(error);
    }
}

getUser()