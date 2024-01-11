#!/bin/bash
#  Networking Basics

# Step 1: Introduction to Advanced Networking
echo "Step 1: Introduction to Advanced Networking"
echo "-------------------------------------------------------------"
echo "Welcome to the Advanced Networking Tutorial!"
echo "In this tutorial, we'll cover advanced networking concepts and commands."
echo "Let's explore more sophisticated aspects of networking on Unix/Linux systems."
echo "-------------------------------------------------------------"

# Step 2: Network Configuration and Interfaces
echo "Step 2: Network Configuration and Interfaces"
echo "-------------------------------------------------------------"
echo "1. Display detailed information about all network interfaces:"
ip -details -statistics link show
echo "-------------------------------------------------------------"
echo "2. Display detailed routing table information:"
ip route show table all
echo "-------------------------------------------------------------"
echo "3. Display the network configuration and state:"
nmcli connection show
echo "-------------------------------------------------------------"
echo "4. Configure a static IP address for an interface (replace INTERFACE and IP):"
sudo ip addr add IP dev INTERFACE
echo "-------------------------------------------------------------"

# Step 3: Traffic Control and Bandwidth Management
echo "Step 3: Traffic Control and Bandwidth Management"
echo "-------------------------------------------------------------"
echo "5. Limit bandwidth for a specific network interface (replace INTERFACE and RATE):"
sudo tc qdisc add dev INTERFACE root tbf rate RATE burst 32kbit latency 400ms"
echo "-------------------------------------------------------------"
echo "6. Prioritize network traffic using Quality of Service (QoS):"
sudo tc qdisc add dev INTERFACE root handle 1: htb default 12
echo "-------------------------------------------------------------"
echo "7. Apply QoS rules for specific traffic classes (replace IP and PORT):"
sudo tc class add dev INTERFACE parent 1: classid 1:1 htb rate 256kbps
echo "-------------------------------------------------------------"

# Step 4: Network Protocols and Tunneling
echo "Step 4: Network Protocols and Tunneling"
echo "-------------------------------------------------------------"
echo "8. Display active network protocols and their statistics:"
netstat -s
echo "-------------------------------------------------------------"
echo "9. Establish an SSH tunnel for secure communication (replace PORT and HOST):"
ssh -L LOCAL_PORT:localhost:REMOTE_PORT USER@HOST
echo "-------------------------------------------------------------"
echo "10. Set up a VPN connection using OpenVPN:"
sudo openvpn --config your_config_file.ovpn
echo "-------------------------------------------------------------"
echo "11. Create an encrypted tunnel using IPsec (replace IP and INTERFACE):"
sudo ip xfrm state add src 0.0.0.0 dst IP proto esp spi 1 mode transport auth sha256 0xYOUR_KEY enc aes 0xYOUR_KEY
echo "-------------------------------------------------------------"

# Step 5: Network Services and Protocols
echo "Step 5: Network Services and Protocols"
echo "-------------------------------------------------------------"
echo "12. Check the status of a specific network service (replace SERVICENAME):"
sudo systemctl status SERVICENAME
echo "-------------------------------------------------------------"
echo "13. Monitor network sockets and connections:"
ss -tunapl
echo "-------------------------------------------------------------"
echo "14. Inspect DNS records using dig (replace DOMAIN):"
dig DOMAIN
echo "-------------------------------------------------------------"
echo "15. Analyze network traffic with tcpdump (replace INTERFACE):"
sudo tcpdump -i INTERFACE
echo "-------------------------------------------------------------"

# Step 6: Network Security and Firewalls
echo "Step 6: Network Security and Firewalls"
echo "-------------------------------------------------------------"
echo "16. Display active firewall rules:"
sudo iptables -L -n -v
echo "-------------------------------------------------------------"
echo "17. Set up a basic firewall using UFW:"
sudo ufw enable
echo "-------------------------------------------------------------"
echo "18. Allow or deny specific incoming connections with UFW:"
sudo ufw allow/deny PORT
echo "-------------------------------------------------------------"
echo "19. Set up port forwarding using iptables (replace PORTS and IP):"
sudo iptables -t nat -A PREROUTING -p tcp --dport PORTS -j DNAT --to-destination IP
echo "-------------------------------------------------------------"

# Step 7: Network Troubleshooting and Diagnostics
echo "Step 7: Network Troubleshooting and Diagnostics"
echo "-------------------------------------------------------------"
echo "20. Analyze network packet captures with Wireshark:"
wireshark
echo "-------------------------------------------------------------"
echo "21. Diagnose network issues with mtr (replace HOST):"
mtr HOST
echo "-------------------------------------------------------------"
echo "22. Check DNS resolution and timing with dig:"
dig +stats DOMAIN
echo "-------------------------------------------------------------"
echo "23. Identify network performance issues with iperf (replace HOST):"
iperf -c HOST
echo "-------------------------------------------------------------"


# End of Tutorial
echo "End of Tutorial"
