# Function to add 2 numbers

add_numbers() {
    sum=$(($1 + $2))
    echo "Sum of $1 and $2 is: $sum"
}

#Calling function with 2 numbers
add_numbers 10 20


check_file(){
    if [ -f "$1" ]; then
        echo "File exists"
    else
        echo "File does not exist"
    fi
}

check_file "testfile.txt"