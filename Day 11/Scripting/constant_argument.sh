# Environment Variables
# inherited by script from Parent Shell

echo "Current User: $(whoami)"
echo "Home Directory: $HOME"

#Create Constant variables
readonly PI=3.14
echo $PI

echo "No of arguments $#"
echo "First argument $1"
echo "Second argument $2"
echo "Third argument $3"