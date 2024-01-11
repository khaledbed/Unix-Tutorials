#!/bin/bash
# Extended and Detailed File System Navigation Tutorial

# Step 1: Introduction and Basics
echo "Step 1: Introduction and Basics"
echo "---------------------------------------------"
echo "Welcome to the Extended and Detailed File System Navigation Tutorial!"
echo "In this tutorial, we'll explore advanced file system navigation in Unix/Linux."
echo "Let's get started!"
echo "---------------------------------------------"

# Step 2: File System Navigation
echo "Step 2: File System Navigation"
echo "---------------------------------------------"
echo "1. Display the current working directory:"
pwd
echo "---------------------------------------------"
echo "2. List files and directories in the current directory (with hidden files):"
ls -la
echo "---------------------------------------------"
echo "3. Change to the user's home directory:"
cd ~
pwd
echo "---------------------------------------------"
echo "4. Change to the root directory:"
cd /
pwd
echo "---------------------------------------------"
echo "5. Change to the previous directory (go back):"
cd -
pwd
echo "---------------------------------------------"
echo "6. Create a directory path with intermediate directories:"
mkdir -p parent/child/grandchild
cd parent/child/grandchild
pwd
echo "---------------------------------------------"
echo "7. View the contents of a directory with file details:"
ls -l
echo "---------------------------------------------"
echo "8. View the contents of a directory with file details, including hidden files:"
ls -la
echo "---------------------------------------------"

# Step 3: More Directory Operations
echo "Step 3: More Directory Operations"
echo "---------------------------------------------"
echo "9. Create a symbolic link to a directory:"
ln -s /path/to/target_directory symbolic_link
ls -l
echo "---------------------------------------------"
echo "10. Display the absolute path of the current directory:"
readlink -f .
echo "---------------------------------------------"
echo "11. Find files in the current directory and subdirectories:"
find . -type f -name "*.txt"
echo "---------------------------------------------"
echo "12. Find directories in the current directory and subdirectories:"
find . -type d -name "directory_name"
echo "---------------------------------------------"

# Step 4: File and Directory Path Manipulation
echo "Step 4: File and Directory Path Manipulation"
echo "---------------------------------------------"
echo "13. Concatenate and display file contents:"
cat parent/child/grandchild/file.txt
echo "---------------------------------------------"
echo "14. Display the parent directory of the current directory:"
dirname .
echo "---------------------------------------------"
echo "15. Display the basename of the current directory:"
basename .
echo "---------------------------------------------"
echo "16. Display the absolute path of a relative path:"
realpath parent/child/grandchild
echo "---------------------------------------------"

# Step 5: Command History and Basics
echo "Step 5: Command History and Basics"
echo "---------------------------------------------"
echo "17. Display command history with line numbers:"
history
echo "---------------------------------------------"
echo "18. Repeat a command from history (replace Y with the desired command number):"
!Y
echo "---------------------------------------------"

# End of Extended and Detailed File System Navigation Tutorial
echo "End of Extended and Detailed File System Navigation Tutorial"
