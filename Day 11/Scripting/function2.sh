system_info(){
    echo "Operating System: $(uname -o)"
    echo "Kernel Version: $(uname -r)"
    echo "Disk Usage:"
    df -h | grep '^/dev/'
}

# Call the function
system_info()
