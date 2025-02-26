echo 'Hello From BASH'

name='Paras Budhiraja'
echo "Hello $name"

salary=80000
echo "Salary : $salary"

# Mathematical Operation
echo "Salary $((salary*20))"

num1=10
num2=20
echo "Sum $((num1+num2))"

## Store Array Values in Variables

numbers=(10 20 30 40 50)
echo "First Number : ${numbers[0]}"
echo "Fourth Number : ${numbers[3]}"

names=("alex" "bob" "catty" "david")
echo "First Name : ${names[0]}"
