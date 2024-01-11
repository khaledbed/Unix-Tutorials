#!/bin/bash
# Process Management Basics

# Step 1: Introduction to Advanced Process Management
echo "Step 1: Introduction to Advanced Process Management"
echo "-------------------------------------------------------------"
echo "Welcome to the Advanced Process Management Tutorial!"
echo "In this tutorial, we'll explore advanced and intricate aspects of managing processes on your Unix/Linux system."
echo "Let's dive deeper into the world of process control and optimization."
echo "-------------------------------------------------------------"

# Step 2: Process Information and Analysis
echo "Step 2: Process Information and Analysis"
echo "-------------------------------------------------------------"
echo "1. Display a list of all running processes with detailed information:"
ps aux
echo "-------------------------------------------------------------"
echo "2. Display process tree hierarchy:"
pstree
echo "-------------------------------------------------------------"
echo "3. Display top resource-consuming processes:"
top
echo "-------------------------------------------------------------"
echo "4. Display process statistics and resource usage in real-time:"
htop
echo "-------------------------------------------------------------"
echo "5. Analyze process dependencies and resource usage in detail:"
pgrep -fl process_name
echo "-------------------------------------------------------------"

# Step 3: Process Control and Management
echo "Step 3: Process Control and Management"
echo "-------------------------------------------------------------"
echo "6. Kill a process by specifying its process ID (PID):"
kill PID
echo "-------------------------------------------------------------"
echo "7. Gracefully terminate a process (send a TERM signal):"
kill -15 PID
echo "-------------------------------------------------------------"
echo "8. Forcefully terminate a process (send a KILL signal):"
kill -9 PID
echo "-------------------------------------------------------------"
echo "9. Suspend a process (Ctrl+Z in the terminal):"
bg
echo "-------------------------------------------------------------"
echo "10. Resume a suspended process:"
fg
echo "-------------------------------------------------------------"
echo "11. Utilize cgroups for resource control and process isolation:"
sudo cgcreate -g cpu,memory:group_name
sudo cgset -r cpu.cfs_quota_us=50000 group_name
sudo cgexec -g cpu,memory:group_name command
echo "-------------------------------------------------------------"

# Step 4: Process Prioritization and Nice Values
echo "Step 4: Process Prioritization and Nice Values"
echo "-------------------------------------------------------------"
echo "12. Renice an existing process to change its priority:"
renice priority -p PID
echo "-------------------------------------------------------------"
echo "13. Set the priority of a new process using the nice command:"
nice -n priority command
echo "-------------------------------------------------------------"

# Step 5: Process Monitoring and Tracing
echo "Step 5: Process Monitoring and Tracing"
echo "-------------------------------------------------------------"
echo "14. Monitor system calls and signals made by a process (strace):"
strace -p PID
echo "-------------------------------------------------------------"
echo "15. Monitor library calls made by a process (ltrace):"
ltrace -p PID
echo "-------------------------------------------------------------"
echo "16. Profile system-wide process activity and resource usage (pidstat):"
pidstat 1
echo "-------------------------------------------------------------"

# Step 6: Job Control and Background/Foreground Tasks
echo "Step 6: Job Control and Background/Foreground Tasks"
echo "-------------------------------------------------------------"
echo "17. Run a command in the background:"
command &
echo "-------------------------------------------------------------"
echo "18. View and manage background jobs:"
jobs
echo "-------------------------------------------------------------"
echo "19. Bring a background job to the foreground:"
fg %job_number
echo "-------------------------------------------------------------"
echo "20. Suspend a foreground job (Ctrl+Z in the terminal):"
bg
echo "-------------------------------------------------------------"

# Step 7: Process Signals and Signal Handling
echo "Step 7: Process Signals and Signal Handling"
echo "-------------------------------------------------------------"
echo "21. Send a specific signal to a process:"
kill -signal PID
echo "-------------------------------------------------------------"
echo "22. View a list of signals and their meanings:"
kill -l
echo "-------------------------------------------------------------"
echo "23. Handle signals in shell scripts and custom applications:"
trap 'echo Received signal; cleanup_function' SIGHUP SIGINT SIGTERM
echo "-------------------------------------------------------------"


# End of Tutorial
echo "End of Tutorial"
