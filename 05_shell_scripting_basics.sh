#!/bin/bash
# Shell Scripting Basics

# Step 1: Introduction to Shell Scripting
echo "Step 1: Introduction to Shell Scripting"
echo "---------------------------------------------"
echo "Welcome to the Comprehensive Shell Scripting Tutorial!"
echo "In this tutorial, we'll delve deep into the fundamentals of shell scripting in Unix/Linux."
echo "Let's begin!"
echo "---------------------------------------------"

# Step 2: Creating and Executing Simple Scripts
echo "Step 2: Creating and Executing Simple Scripts"
echo "---------------------------------------------"
echo "1. Create a simple shell script:"
echo -e "#!/bin/bash\n\necho 'Hello, this is a simple script!'" > simple_script.sh
echo "---------------------------------------------"
echo "2. Add execute permissions to the script:"
chmod +x simple_script.sh
echo "---------------------------------------------"
echo "3. Execute the script:"
./simple_script.sh
echo "---------------------------------------------"

# Step 3: Variables and User Input
echo "Step 3: Variables and User Input"
echo "---------------------------------------------"
echo "4. Use variables in a script:"
echo -e "#!/bin/bash\n\nname='John'\necho \"Hello, \$name!\"" > variable_script.sh
echo "---------------------------------------------"
echo "5. Take user input in a script:"
echo -e "#!/bin/bash\n\necho -n 'Enter your name: '\nread user_name\necho \"Hello, \$user_name!\"" > input_script.sh
echo "---------------------------------------------"

# Step 4: Conditional Statements
echo "Step 4: Conditional Statements"
echo "---------------------------------------------"
echo "6. Use an if statement in a script:"
echo -e "#!/bin/bash\n\nif [ 1 -eq 1 ]; then\n  echo 'Condition is true!'\nfi" > if_statement.sh
echo "---------------------------------------------"
echo "7. Use an if-else statement in a script:"
echo -e "#!/bin/bash\n\nif [ 1 -eq 0 ]; then\n  echo 'Condition is true!'\nelse\n  echo 'Condition is false!'\nfi" > if_else_statement.sh
echo "---------------------------------------------"
echo "8. Use case statements in a script:"
echo -e "#!/bin/bash\n\noption='two'\ncase \$option in\n  'one') echo 'Option one';;\n  'two') echo 'Option two';;\n  *) echo 'Other option';;\nesac" > case_statement.sh
echo "---------------------------------------------"

# Step 5: Looping Structures
echo "Step 5: Looping Structures"
echo "---------------------------------------------"
echo "9. Use a for loop in a script:"
echo -e "#!/bin/bash\n\nfor i in {1..5}; do\n  echo \"Iteration \$i\"\ndone" > for_loop.sh
echo "---------------------------------------------"
echo "10. Use a while loop in a script:"
echo -e "#!/bin/bash\n\ncount=1\nwhile [ \$count -le 3 ]; do\n  echo \"Iteration \$count\"\n  ((count++))\ndone" > while_loop.sh
echo "---------------------------------------------"
echo "11. Use until loop in a script:"
echo -e "#!/bin/bash\n\nnum=1\nuntil [ \$num -ge 5 ]; do\n  echo \"Iteration \$num\"\n  ((num++))\ndone" > until_loop.sh
echo "---------------------------------------------"

# Step 6: Functions
echo "Step 6: Functions"
echo "---------------------------------------------"
echo "12. Define and use a function in a script:"
echo -e "#!/bin/bash\n\nmy_function() {\n  echo 'Hello from the function!'\n}\n\nmy_function" > function_script.sh
echo "---------------------------------------------"
echo "13. Pass parameters to a function:"
echo -e "#!/bin/bash\n\nprint_greeting() {\n  echo \"Hello, \$1!\"\n}\n\nprint_greeting 'Alice'" > function_parameters.sh
echo "---------------------------------------------"

# Step 7: Input/Output Redirection and Pipes
echo "Step 7: Input/Output Redirection and Pipes"
echo "---------------------------------------------"
echo "14. Redirect output to a file:"
echo -e "#!/bin/bash\n\necho 'Redirected output' > output.txt" > output_redirection.sh
echo "---------------------------------------------"
echo "15. Append output to a file:"
echo -e "#!/bin/bash\n\necho 'Appended output' >> output.txt" > append_output.sh
echo "---------------------------------------------"
echo "16. Redirect input from a file:"
echo -e "#!/bin/bash\n\nwhile read line; do\n  echo \"Read: \$line\"\ndone < input.txt" > input_redirection.sh
echo "---------------------------------------------"
echo "17. Use pipes to combine commands:"
echo -e "#!/bin/bash\n\nls -l | grep 'file'" > pipes.sh
echo "---------------------------------------------"

# Step 8: Exit Status and Error Handling
echo "Step 8: Exit Status and Error Handling"
echo "---------------------------------------------"
echo "18. Check exit status of the last command:"
echo -e "#!/bin/bash\n\nls -l\necho \"Exit Status: \$?\"" > exit_status.sh
echo "---------------------------------------------"
echo "19. Use exit status in a script for error handling:"
echo -e "#!/bin/bash\n\ncommand_that_might_fail\nif [ \$? -ne 0 ]; then\n  echo 'Error: Command failed'\n  exit 1\nfi" > error_handling.sh
echo "---------------------------------------------"

# Step 9: Advanced Scripting Techniques
echo "Step 9: Advanced Scripting Techniques"
echo "---------------------------------------------"
echo "20. Use arrays in a script:"
echo -e "#!/bin/bash\n\nmy_array=( 'apple' 'banana' 'cherry' )\necho \"First element: \${my_array[0]}\"" > arrays.sh
echo "---------------------------------------------"
echo "21. Use command substitution in a script:"
echo -e "#!/bin/bash\n\ndate_var=\$(date)\necho \"Current date and time: \$date_var\"" > command_substitution.sh
echo "---------------------------------------------"


# End of Tutorial
echo "End of Tutorial"
