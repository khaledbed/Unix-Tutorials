#!/bin/bash
# Advanced Networking

# Step 1: Introduction to Advanced Networking
echo "Step 1: Introduction to Highly Comprehensive Advanced Networking"
echo "-------------------------------------------------------------"
echo "Welcome to the Highly Comprehensive Advanced Networking Tutorial!"
echo "In this tutorial, we'll delve even deeper into advanced networking concepts."
echo "Get ready for an in-depth exploration of advanced networking on Unix/Linux."
echo "-------------------------------------------------------------"

# Step 2: Network Configuration
echo "Step 2: Network Configuration"
echo "-------------------------------------------------------------"
echo "1. Display detailed network interface information (IPv4 and IPv6):"
ip -c addr show
echo "-------------------------------------------------------------"
echo "2. Configure a static IP address for an interface permanently:"
sudo nano /etc/network/interfaces
echo "-------------------------------------------------------------"
echo "3. Display and modify the routing table dynamically:"
sudo ip route
sudo ip route add default via GATEWAY_IP dev INTERFACE
echo "-------------------------------------------------------------"
echo "4. Monitor real-time network traffic using nload:"
sudo apt install nload
sudo nload INTERFACE
echo "-------------------------------------------------------------"

# Step 3: Packet Capture and Analysis
echo "Step 3: Packet Capture and Analysis"
echo "-------------------------------------------------------------"
echo "5. Capture and filter packets using tcpdump:"
sudo tcpdump -i INTERFACE -n -c 10 'tcp port PORT'
echo "-------------------------------------------------------------"
echo "6. Capture packets and analyze with Wireshark (non-root user):"
sudo setcap 'CAP_NET_RAW+eip CAP_NET_ADMIN+eip' /usr/bin/dumpcap
sudo usermod -aG wireshark $USER
echo "-------------------------------------------------------------"
echo "7. Analyze network traffic using tshark (command-line Wireshark):"
sudo tshark -i INTERFACE -n
echo "-------------------------------------------------------------"

# Step 4: Firewall Configuration
echo "Step 4: Firewall Configuration"
echo "-------------------------------------------------------------"
echo "8. Display and manage iptables firewall rules:"
sudo iptables -L -n -v
echo "-------------------------------------------------------------"
echo "9. Create a custom iptables chain and rules:"
sudo iptables -N CUSTOM_CHAIN
sudo iptables -A INPUT -j CUSTOM_CHAIN
echo "-------------------------------------------------------------"
echo "10. Configure a stateful firewall with UFW (Uncomplicated Firewall):"
sudo apt install ufw
sudo ufw allow ssh
sudo ufw enable
echo "-------------------------------------------------------------"

# Step 5: Network Diagnostics and Tools
echo "Step 5: Network Diagnostics and Tools"
echo "-------------------------------------------------------------"
echo "11. Check for open ports on a remote host:"
nc -zv HOST PORT
echo "-------------------------------------------------------------"
echo "12. Display detailed network statistics and interfaces:"
sudo ss -s
sudo ss -i
echo "-------------------------------------------------------------"
echo "13. Test network bandwidth using iperf3 (requires iperf3 on both systems):"
sudo apt install iperf3
iperf3 -s (on server) | iperf3 -c SERVER_IP (on client)
echo "-------------------------------------------------------------"

# Step 6: VPN Configuration
echo "Step 6: VPN Configuration"
echo "-------------------------------------------------------------"
echo "14. Set up an IPsec VPN using strongSwan:"
sudo apt install strongswan
sudo nano /etc/ipsec.conf
sudo nano /etc/ipsec.secrets
sudo ipsec restart
echo "-------------------------------------------------------------"
echo "15. Configure WireGuard VPN (requires WireGuard installed):"
sudo apt install wireguard
sudo wg genkey | sudo tee /etc/wireguard/privatekey | wg pubkey | sudo tee /etc/wireguard/publickey
sudo nano /etc/wireguard/wg0.conf
sudo wg-quick up wg0
echo "-------------------------------------------------------------"

# Step 7: Advanced Routing
echo "Step 7: Advanced Routing"
echo "-------------------------------------------------------------"
echo "16. Implement policy-based routing with ip rule:"
sudo ip rule add from SOURCE_IP lookup TABLE_NAME
echo "-------------------------------------------------------------"
echo "17. Load balancing using multiple default gateways (replace IPs and weights):"
sudo ip route add default scope global nexthop via GATEWAY1 dev INTERFACE1 weight 1 nexthop via GATEWAY2 dev INTERFACE2 weight 2
echo "-------------------------------------------------------------"

# Step 8: Network Services and Daemons
echo "Step 8: Network Services and Daemons"
echo "-------------------------------------------------------------"
echo "18. Display active and listening network sockets with ss:"
sudo ss -tulnp
echo "-------------------------------------------------------------"
echo "19. Monitor bandwidth usage per process with nethogs:"
sudo apt install nethogs
sudo nethogs INTERFACE
echo "-------------------------------------------------------------"
echo "20. Restrict network access using hosts.allow and hosts.deny:"
sudo nano /etc/hosts.allow
sudo nano /etc/hosts.deny
echo "-------------------------------------------------------------"

# Step 9: Network Virtualization with Docker
echo "Step 9: Network Virtualization with Docker"
echo "-------------------------------------------------------------"
echo "21. Install Docker (for Ubuntu/Debian):"
sudo apt install docker.io
sudo systemctl start docker
sudo systemctl enable docker
echo "-------------------------------------------------------------"
echo "22. Create a Docker network and connect containers:"
sudo docker network create mynetwork
sudo docker run --name container1 --network mynetwork -d nginx
sudo docker run --name container2 --network mynetwork -d nginx
echo "-------------------------------------------------------------"

# Step 10: Advanced DNS Configuration
echo "Step 10: Advanced DNS Configuration"
echo "-------------------------------------------------------------"
echo "23. Install and configure BIND (DNS server):"
sudo apt install bind9
sudo nano /etc/bind/named.conf.options
sudo nano /etc/bind/named.conf.local
sudo systemctl restart bind9
echo "-------------------------------------------------------------"

# End of Tutorial
echo "End of Tutorial"
