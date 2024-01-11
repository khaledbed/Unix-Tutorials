#!/bin/bash
# Advanced and Comprehensive Shell Scripting Tutorial

# Step 1: Introduction to Advanced Shell Scripting
echo "Step 1: Introduction to Advanced Shell Scripting"
echo "-------------------------------------------------------------"
echo "Welcome to the Advanced and Comprehensive Shell Scripting Tutorial!"
echo "In this tutorial, we'll explore even more advanced topics in shell scripting."
echo "Get ready for a deep dive into sophisticated scripting techniques!"
echo "-------------------------------------------------------------"

# Step 2: Advanced Variable Manipulation
echo "Step 2: Advanced Variable Manipulation"
echo "-------------------------------------------------------------"
echo "1. Perform arithmetic operations with 'expr':"
result=$(expr 5 + 3)
echo "Result: $result"
echo "-------------------------------------------------------------"
echo "2. Use associative arrays for key-value pairs:"
declare -A my_array
my_array["key1"]="value1"
my_array["key2"]="value2"
echo "Value for key1: ${my_array["key1"]}"
echo "-------------------------------------------------------------"
echo "3. Create and manipulate arrays:"
my_numbers=(1 2 3 4 5)
echo "Length of array: ${#my_numbers[@]}"
echo "First element: ${my_numbers[0]}"
echo "-------------------------------------------------------------"

# Step 3: Advanced Input Handling
echo "Step 3: Advanced Input Handling"
echo "-------------------------------------------------------------"
echo "4. Read input with a timeout and default value:"
read -t 5 -p "Enter something (or timeout): " input || input="Default"
echo "You entered: $input"
echo "-------------------------------------------------------------"
echo "5. Capture and handle signals (Ctrl+C):"
trap 'cleanup_function' INT
echo "Press Ctrl+C to trigger the cleanup function..."
sleep infinity
echo "-------------------------------------------------------------"

# Step 4: Advanced Scripting Techniques
echo "Step 4: Advanced Scripting Techniques"
echo "-------------------------------------------------------------"
echo "6. Use process substitution to pass output as a file:"
diff <(command1) <(command2)
echo "-------------------------------------------------------------"
echo "7. Implement parallel execution with 'parallel' command:"
parallel 'echo {}' ::: A B C
echo "-------------------------------------------------------------"
echo "8. Create and manage temporary files with 'mktemp':"
temp_file=$(mktemp)
echo "Temporary file: $temp_file"
echo "-------------------------------------------------------------"

# Step 5: Regular Expressions in Scripting
echo "Step 5: Regular Expressions in Scripting"
echo "-------------------------------------------------------------"
echo "9. Use grep with regular expressions for pattern matching:"
grep -E 'pattern1|pattern2' input_file.txt
echo "-------------------------------------------------------------"
echo "10. Utilize sed for advanced text stream editing with regex:"
sed -E 's/(\b[0-9]{3}\b)/REPLACEMENT/g' input_text.txt
echo "-------------------------------------------------------------"

# Step 6: Advanced Debugging Techniques
echo "Step 6: Advanced Debugging Techniques"
echo "-------------------------------------------------------------"
echo "11. Enable xtrace mode with 'set -x' for detailed tracing:"
set -x
# Commands below will be printed with their expanded values
echo "Debugging Line 1"
echo "Debugging Line 2"
set +x  # Disable xtrace mode for the remaining script
echo "-------------------------------------------------------------"
echo "12. Use 'trap' to catch errors and perform cleanup:"
trap 'cleanup_function' ERR
echo "Any error will now trigger the cleanup function..."
echo "-------------------------------------------------------------"

# Step 7: Advanced Output Handling
echo "Step 7: Advanced Output Handling"
echo "-------------------------------------------------------------"
echo "13. Redirect output to a file descriptor:"
exec 3> output_file.txt
echo "This line goes to the file" >&3
exec 3>&-
echo "-------------------------------------------------------------"
echo "14. Redirect errors to a separate file:"
command_with_error 2> error_log.txt
echo "-------------------------------------------------------------"

# Step 8: Integration with External APIs
echo "Step 8: Integration with External APIs"
echo "-------------------------------------------------------------"
echo "15. Make HTTP requests using 'curl':"
curl -s https://api.example.com/data
echo "-------------------------------------------------------------"
echo "16. Parse JSON responses with 'jq':"
curl -s https://api.example.com/data | jq '.key'
echo "-------------------------------------------------------------"

# Step 9: Advanced Filesystem Operations
echo "Step 9: Advanced Filesystem Operations"
echo "-------------------------------------------------------------"
echo "17. Use 'find' for complex file searches and operations:"
find /path -name "*.txt" -exec mv {} /new_location \;
echo "-------------------------------------------------------------"
echo "18. Archive and compress files with 'tar' and 'gzip':"
tar czvf archive.tar.gz /path/to/files
echo "-------------------------------------------------------------"

# Step 10: Advanced Script Security
echo "Step 10: Advanced Script Security"
echo "-------------------------------------------------------------"
echo "19. Implement proper quoting to handle spaces and special characters:"
file_name="my file.txt"
echo "Processing file: $file_name"
echo "-------------------------------------------------------------"
echo "20. Use 'sudo' only when necessary and with caution:"
sudo echo "This command will be executed with elevated privileges."
echo "-------------------------------------------------------------"


# End of Tutorial
echo "End of Tutorial"
