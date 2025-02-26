$names = @("Alice", "Bob", "Charlie")
$names | ForEach-Object {write-host "Hello, $_"}


$age = read-host "Enter your age"
if ($age -ge 18){
    write-host "You are an adult"
}
else{
    write-host "You are minor"
}

