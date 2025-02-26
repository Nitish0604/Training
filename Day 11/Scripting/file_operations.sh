# !/bin/bash --> This is for changing the default editor

## Creating and writing to a file
echo "This is a test file" > file.txt

## Appending text to a file
echo "Another Line" >> file.txt

## Reading a File
cat file.txt


if [ -f "file.txt" ]; then
    echo "File exists"
else
    echo "File does not exist"
fi

## Delete a File
rm file.txt