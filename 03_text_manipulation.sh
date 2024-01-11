#!/bin/bash
# Text Manipulation Tutorial

# Step 1: Introduction and Basics
echo "Step 1: Introduction and Basics"
echo "---------------------------------------------"
echo "Welcome to the Further Extended Text Manipulation Tutorial!"
echo "In this tutorial, we'll explore advanced text manipulation techniques."
echo "Let's get started!"
echo "---------------------------------------------"

# Step 2: Advanced grep Usage
echo "Step 2: Advanced grep Usage"
echo "---------------------------------------------"
echo "1. Display lines containing a specific pattern (case insensitive):"
grep -i "pattern" sample_text.txt
echo "---------------------------------------------"
echo "2. Display line numbers along with matching lines:"
grep -n "pattern" sample_text.txt
echo "---------------------------------------------"
echo "3. Display lines that do not match a pattern:"
grep -v "pattern" sample_text.txt
echo "---------------------------------------------"

# Step 3: Extended awk and sed Usage
echo "Step 3: Extended awk and sed Usage"
echo "---------------------------------------------"
echo "4. Use awk to perform arithmetic operations on numeric data:"
awk '{sum += $1} END {print sum}' numeric_data.txt
echo "---------------------------------------------"
echo "5. Use sed to replace a pattern globally and interactively:"
sed 's/old_pattern/new_pattern/g' sample_text.txt
echo "---------------------------------------------"

# Step 4: Text Comparison with diff
echo "Step 4: Text Comparison with diff"
echo "---------------------------------------------"
echo "6. Create two sample files for comparison:"
echo "This is file A." > fileA.txt
echo "This is file B." > fileB.txt
echo "---------------------------------------------"
echo "7. Compare two files and display the differences:"
diff fileA.txt fileB.txt
echo "---------------------------------------------"

# Step 5: Stream Editing with tee
echo "Step 5: Stream Editing with tee"
echo "---------------------------------------------"
echo "8. Use tee to redirect output to a file and the screen simultaneously:"
echo "This will be stored in a file and displayed on the screen." | tee output.txt
echo "---------------------------------------------"

# Step 6: Text Processing with tr
echo "Step 6: Text Processing with tr"
echo "---------------------------------------------"
echo "9. Convert lowercase characters to uppercase:"
echo "convert this to uppercase" | tr 'a-z' 'A-Z'
echo "---------------------------------------------"

# Step 7: Advanced Sorting and Unique Filtering
echo "Step 7: Advanced Sorting and Unique Filtering"
echo "---------------------------------------------"
echo "10. Sort lines based on a specific column (numeric sort):"
sort -nk2 data_with_numbers.txt
echo "---------------------------------------------"
echo "11. Filter unique lines based on a specific field:"
awk '!seen[$1]++' data_with_duplicates.txt
echo "---------------------------------------------"

# End of Tutorial
echo "End of Tutorial"
