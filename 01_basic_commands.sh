#!/bin/bash
#  Basic Commands Tutorial

# Step 1: Introduction and Basics
echo "Step 1: Introduction and Basics"
echo "---------------------------------------------"
echo "Welcome to the Extended and Detailed Basic Commands Tutorial!"
echo "In this tutorial, we'll dive deeper into essential Unix/Linux commands."
echo "Let's get started!"
echo "---------------------------------------------"

# Step 2: File System Navigation
echo "Step 2: File System Navigation"
echo "---------------------------------------------"
echo "1. Display the current working directory:"
pwd
echo "---------------------------------------------"
echo "2. List files and directories in the current directory (detailed listing):"
ls -la
echo "---------------------------------------------"
echo "3. Change to a different directory (create one if necessary):"
mkdir -p tutorial_directory
cd tutorial_directory
pwd
echo "---------------------------------------------"

# Step 3: File and Directory Operations
echo "Step 3: File and Directory Operations"
echo "---------------------------------------------"
echo "4. Create a new file and add content:"
echo "Hello, this is some content." > newfile.txt
ls
echo "---------------------------------------------"
echo "5. Copy the file to a new file with a different name:"
cp newfile.txt copiedfile.txt
ls
echo "---------------------------------------------"
echo "6. Move/Rename the file:"
mv copiedfile.txt renamedfile.txt
ls
echo "---------------------------------------------"
echo "7. Display the contents of a file:"
cat renamedfile.txt
echo "---------------------------------------------"
echo "8. Search for a pattern in the file:"
grep "Hello" renamedfile.txt
echo "---------------------------------------------"
echo "9. Remove the file:"
rm renamedfile.txt
ls
echo "---------------------------------------------"
echo "10. Create a new directory and navigate into it:"
mkdir new_directory
cd new_directory
pwd
echo "---------------------------------------------"
echo "11. Remove the directory:"
cd ..
rmdir new_directory
ls
echo "---------------------------------------------"

# Step 4: System Information and Disk Usage
echo "Step 4: System Information and Disk Usage"
echo "---------------------------------------------"
echo "12. Display detailed system information:"
uname -a
echo "---------------------------------------------"
echo "13. Display disk space usage for all mounted filesystems:"
df -h
echo "---------------------------------------------"

# Step 5: Command History and Basics
echo "Step 5: Command History and Basics"
echo "---------------------------------------------"
echo "14. Display command history with line numbers:"
history
echo "---------------------------------------------"
echo "15. Repeat a command from history (replace X with the desired command number):"
!X
echo "---------------------------------------------"

# End of Extended and Detailed Basic Commands Tutorial
echo "End of Extended and Detailed Basic Commands Tutorial"
