# If else

echo "Enter a Number"
read num

if [ $num -gt 10 ]; then
    echo 'The number is greater than 10'
else   
    echo 'The number is 10 or less'
fi    


echo "Enter age : "
read age

echo "Are you Indian"
read citizen

if [ $age -ge 18 ] && [ $citizen == "yes" ] || [ $citizen == "YES" ]; then  
    echo 'You are eligible for Vote'
else
    echo 'You are not eligible for Vote'
fi    
