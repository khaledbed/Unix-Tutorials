#!/bin/bash
# Permissions and Ownership Tutorial

# Step 1: Introduction and Basics
echo "Step 1: Introduction and Basics"
echo "---------------------------------------------"
echo "Welcome to the Extended and In-Depth Permissions and Ownership Tutorial!"
echo "In this tutorial, we'll explore Unix/Linux file permissions and ownership in detail."
echo "Let's get started!"
echo "---------------------------------------------"

# Step 2: Permissions and Ownership
echo "Step 2: Permissions and Ownership"
echo "---------------------------------------------"
echo "1. Display permissions and ownership of a file (detailed listing):"
ls -l newfile.txt
echo "---------------------------------------------"
echo "2. Change file permissions (add read and write permissions for the owner):"
chmod u+rw newfile.txt
ls -l newfile.txt
echo "---------------------------------------------"
echo "3. Change file ownership:"
chown user:group newfile.txt
ls -l newfile.txt
echo "---------------------------------------------"
echo "4. Change directory permissions (add execute permissions for everyone):"
chmod a+x tutorial_directory
ls -ld tutorial_directory
echo "---------------------------------------------"

# Step 3: Access Control Lists (ACLs)
echo "Step 3: Access Control Lists (ACLs)"
echo "---------------------------------------------"
echo "5. Display ACLs for a file (if supported):"
getfacl newfile.txt
echo "---------------------------------------------"
echo "6. Add a user to the ACL of a file:"
setfacl -m u:additional_user:rw newfile.txt
getfacl newfile.txt
echo "---------------------------------------------"

# Step 4: Special Permissions
echo "Step 4: Special Permissions"
echo "---------------------------------------------"
echo "7. Set the setuid permission on a file (temporary privilege elevation):"
chmod u+s executable_file
ls -l executable_file
echo "---------------------------------------------"
echo "8. Set the setgid permission on a directory (new files inherit group ownership):"
chmod g+s tutorial_directory
ls -ld tutorial_directory
echo "---------------------------------------------"
echo "9. Set the sticky bit on a directory (restrict file deletion to the owner):"
chmod +t protected_directory
ls -ld protected_directory
echo "---------------------------------------------"

# Step 5: Default Permissions
echo "Step 5: Default Permissions"
echo "---------------------------------------------"
echo "10. Set default permissions for new files in a directory:"
chmod g+s tutorial_directory
chmod +t tutorial_directory
ls -ld tutorial_directory
echo "---------------------------------------------"

# Step 6: Symbolic and Numeric Permissions
echo "Step 6: Symbolic and Numeric Permissions"
echo "---------------------------------------------"
echo "11. Change file permissions using symbolic notation:"
chmod o-rw newfile.txt
ls -l newfile.txt
echo "---------------------------------------------"
echo "12. Change file permissions using numeric notation (read, write, execute for owner):"
chmod 700 newfile.txt
ls -l newfile.txt
echo "---------------------------------------------"

# Step 7: Advanced Permissions and Concepts
echo "Step 7: Advanced Permissions and Concepts"
echo "---------------------------------------------"
echo "13. Understand the umask command and its impact on default permissions:"
umask
echo "---------------------------------------------"
echo "14. Explore setfacl and getfacl for more advanced ACL management:"
getfacl newfile.txt
setfacl -m g:additional_group:rwx newfile.txt
getfacl newfile.txt
echo "---------------------------------------------"
echo "15. Learn about default ACLs for directories and their implications:"
setfacl -m d:u:default_user:rw,d:g:default_group:rx tutorial_directory
getfacl tutorial_directory
echo "---------------------------------------------"

# End of Extended and In-Depth Permissions and Ownership Tutorial
echo "End of Extended and In-Depth Permissions and Ownership Tutorial"
