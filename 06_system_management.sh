#!/bin/bash
#  System Management Basics

# Step 1: Introduction to System Management
echo "Step 1: Introduction to System Management"
echo "-------------------------------------------------------------"
echo "Welcome to the Comprehensive System Management Tutorial!"
echo "In this tutorial, we'll cover advanced topics in system management."
echo "Let's delve into the intricacies of managing your Unix/Linux system."
echo "-------------------------------------------------------------"

# Step 2: Process Management
echo "Step 2: Process Management"
echo "-------------------------------------------------------------"
echo "1. Display a list of all running processes (detailed):"
ps aux
echo "-------------------------------------------------------------"
echo "2. Display process tree hierarchy:"
pstree
echo "-------------------------------------------------------------"
echo "3. Display top resource-consuming processes:"
top
echo "-------------------------------------------------------------"
echo "4. Display process statistics in real-time:"
htop
echo "-------------------------------------------------------------"
echo "5. Investigate process dependencies and resource usage:"
pgrep -fl process_name
echo "-------------------------------------------------------------"

# Step 3: System Information
echo "Step 3: System Information"
echo "-------------------------------------------------------------"
echo "6. Display detailed CPU architecture and processor information:"
lscpu
echo "-------------------------------------------------------------"
echo "7. Display information about installed memory (RAM):"
free -h
echo "-------------------------------------------------------------"
echo "8. Display detailed information about block devices and partitions:"
lsblk
echo "-------------------------------------------------------------"
echo "9. Display detailed information about network interfaces:"
ifconfig -a
echo "-------------------------------------------------------------"
echo "10. Monitor real-time network activity:"
iftop
echo "-------------------------------------------------------------"

# Step 4: User and Group Management
echo "Step 4: User and Group Management"
echo "-------------------------------------------------------------"
echo "11. Display information about user accounts:"
cat /etc/passwd
echo "-------------------------------------------------------------"
echo "12. Display information about groups:"
cat /etc/group
echo "-------------------------------------------------------------"
echo "13. Add a new user interactively:"
sudo adduser
echo "-------------------------------------------------------------"
echo "14. Modify user properties and groups interactively:"
sudo usermod -g groupname -G additional_groups -aG new_group username
echo "-------------------------------------------------------------"
echo "15. Manage user passwords and account expiration:"
sudo passwd username
echo "-------------------------------------------------------------"

# Step 5: System and Service Management
echo "Step 5: System and Service Management"
echo "-------------------------------------------------------------"
echo "16. Display a summary of system information and status:"
systemctl status
echo "-------------------------------------------------------------"
echo "17. Display a list of all active services:"
systemctl list-units --type=service --state=active
echo "-------------------------------------------------------------"
echo "18. Enable or disable a service to start on boot:"
sudo systemctl enable/disable servicename
echo "-------------------------------------------------------------"
echo "19. Mask or unmask a service to prevent starting or stopping:"
sudo systemctl mask/unmask servicename
echo "-------------------------------------------------------------"
echo "20. Check logs for a specific service:"
journalctl -u servicename
echo "-------------------------------------------------------------"

# Step 6: System Logs and Monitoring
echo "Step 6: System Logs and Monitoring"
echo "-------------------------------------------------------------"
echo "21. Display the last 20 lines of the system log:"
journalctl -n 20
echo "-------------------------------------------------------------"
echo "22. Monitor system logs in real-time:"
journalctl -f
echo "-------------------------------------------------------------"
echo "23. Display kernel messages and system log:
dmesg
echo "-------------------------------------------------------------"

# Step 7: Disk Management and Filesystem
echo "Step 7: Disk Management and Filesystem"
echo "-------------------------------------------------------------"
echo "24. Display disk space usage for all mounted filesystems:"
df -h
echo "-------------------------------------------------------------"
echo "25. Display detailed disk information and partitions:"
fdisk -l
echo "-------------------------------------------------------------"
echo "26. Display filesystem disk space usage:"
du -h --max-depth=1 /path
echo "-------------------------------------------------------------"
echo "27. Check and repair filesystem errors:"
sudo fsck /dev/sdX
echo "-------------------------------------------------------------"

# Step 8: Advanced Networking
echo "Step 8: Advanced Networking"
echo "-------------------------------------------------------------"
echo "28. Display open network connections and listening ports:"
netstat -tuln
echo "-------------------------------------------------------------"
echo "29. Display routing table information:"
ip route show
echo "-------------------------------------------------------------"
echo "30. Perform network diagnostics (replace IP with target IP):"
ping IP
echo "-------------------------------------------------------------"
echo "31. Display DNS information for a domain:"
nslookup domain
echo "-------------------------------------------------------------"
echo "32. Display active network interfaces and IP addresses:"
ip addr show
echo "-------------------------------------------------------------"

# Step 9: Advanced Package Management
echo "Step 9: Advanced Package Management"
echo "-------------------------------------------------------------"
echo "33. Update package lists and upgrade installed packages:"
sudo apt update && sudo apt upgrade
echo "-------------------------------------------------------------"
echo "34. Install a package and its dependencies:"
sudo apt install packagename
echo "-------------------------------------------------------------"
echo "35. Remove a package and its configuration files:"
sudo apt remove --purge packagename
echo "-------------------------------------------------------------"
echo "36. Search for available packages with specific keywords:"
apt search keyword
echo "-------------------------------------------------------------"

# Step 10: Security and Permissions
echo "Step 10: Security and Permissions"
echo "-------------------------------------------------------------"
echo "37. Display detailed information about file and directory permissions:"
ls -l
echo "-------------------------------------------------------------"
echo "38. Change file permissions using symbolic notation:"
chmod u+x file
echo "-------------------------------------------------------------"
echo "39. Change file ownership and group:"
sudo chown username:groupname file
echo "-------------------------------------------------------------"
echo "40. Limit access to files and directories with Access Control Lists (ACLs):"
setfacl -m u:username:rw file
echo "-------------------------------------------------------------"


# End of Tutorial
echo "End of Tutorial"
