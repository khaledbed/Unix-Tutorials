#!/bin/bash
# Ansible Automation

# Step 1: Introduction to Ansible Automation
echo "Step 1: Introduction to Ansible Automation"
echo "-------------------------------------------------------------"
echo "Welcome to the Comprehensive Ansible Automation Tutorial!"
echo "In this tutorial, we'll explore Ansible for automation and orchestration."
echo "Let's dive into the world of efficient system management using Ansible."
echo "-------------------------------------------------------------"

# Step 2: Ansible Basics
echo "Step 2: Ansible Basics"
echo "-------------------------------------------------------------"
echo "1. Install Ansible on your control machine:"
sudo apt install ansible
echo "-------------------------------------------------------------"
echo "2. Create an inventory file with target hosts:"
echo "[web_servers]
web1 ansible_host=192.168.1.101
web2 ansible_host=192.168.1.102"
echo "-------------------------------------------------------------"
echo "3. Create a simple Ansible playbook (e.g., playbook.yml):"
echo "- name: Ensure NTP is installed and running
  hosts: web_servers
  tasks:
    - name: Install NTP
      apt:
        name: ntp
        state: present
    - name: Start NTP service
      service:
        name: ntp
        state: started"
echo "-------------------------------------------------------------"
echo "4. Run the Ansible playbook:"
ansible-playbook playbook.yml
echo "-------------------------------------------------------------"

# Step 3: Managing Configuration Files
echo "Step 3: Managing Configuration Files"
echo "-------------------------------------------------------------"
echo "5. Copy files to remote hosts with Ansible:"
ansible web_servers -m copy -a "src=file.txt dest=/etc/nginx/"
echo "-------------------------------------------------------------"
echo "6. Template configuration files with Jinja2:"
# Assuming you have a Jinja2 template file named nginx.conf.j2
echo "nginx_config_template:
  template: nginx.conf.j2
  dest: /etc/nginx/nginx.conf"
ansible-playbook playbook.yml
echo "-------------------------------------------------------------"

# Step 4: Package Management with Ansible
echo "Step 4: Package Management with Ansible"
echo "-------------------------------------------------------------"
echo "7. Install packages with Ansible:"
ansible web_servers -m apt -a "name=nginx state=present"
echo "-------------------------------------------------------------"
echo "8. Upgrade all packages on remote hosts:"
ansible web_servers -m apt -a "upgrade=dist"
echo "-------------------------------------------------------------"

# Step 5: Managing Services
echo "Step 5: Managing Services"
echo "-------------------------------------------------------------"
echo "9. Restart a service with Ansible:"
ansible web_servers -m service -a "name=nginx state=restarted"
echo "-------------------------------------------------------------"
echo "10. Ensure a service is enabled on boot:"
ansible web_servers -m systemd -a "name=nginx enabled=yes"
echo "-------------------------------------------------------------"

# Step 6: Dynamic Inventories and Variables
echo "Step 6: Dynamic Inventories and Variables"
echo "-------------------------------------------------------------"
echo "11. Use dynamic inventory scripts for AWS, GCP, etc."
echo "-------------------------------------------------------------"
echo "12. Define and use Ansible variables in playbooks:"
echo "nginx_version: 1.18.0
nginx_config_dir: /etc/nginx"
echo "-------------------------------------------------------------"

# Step 7: Roles and Playbook Structure
echo "Step 7: Roles and Playbook Structure"
echo "-------------------------------------------------------------"
echo "13. Organize playbooks using roles and directories:"
echo "ansible-galaxy init my_role"
echo "-------------------------------------------------------------"
echo "14. Use roles in a playbook:"
echo "- hosts: web_servers
  roles:
    - my_role"
echo "-------------------------------------------------------------"

# Step 8: Ansible Vault for Secure Data
echo "Step 8: Ansible Vault for Secure Data"
echo "-------------------------------------------------------------"
echo "15. Create an encrypted vault file:"
ansible-vault create secrets.yml
echo "-------------------------------------------------------------"
echo "16. Edit an encrypted vault file:"
ansible-vault edit secrets.yml"
echo "-------------------------------------------------------------"
echo "17. Use vault-encrypted variables in playbooks:"
echo "- hosts: web_servers
  vars_files:
    - secrets.yml
  tasks:
    - name: Display sensitive data
      debug:
        var: sensitive_data"
echo "-------------------------------------------------------------"

# Step 9: Ansible Galaxy and Community Roles
echo "Step 9: Ansible Galaxy and Community Roles"
echo "-------------------------------------------------------------"
echo "18. Explore Ansible Galaxy for pre-built roles:"
ansible-galaxy init my_role
echo "-------------------------------------------------------------"
echo "19. Install a community role from Ansible Galaxy:"
ansible-galaxy install username.role_name"
echo "-------------------------------------------------------------"

# Step 10: Error Handling and Debugging
echo "Step 10: Error Handling and Debugging"
echo "-------------------------------------------------------------"
echo "20. Debug tasks in Ansible playbooks:"
echo "- hosts: web_servers
  tasks:
    - name: Debug message
      debug:
        msg: 'This is a debug message'"
echo "-------------------------------------------------------------"
echo "21. Handle errors and failures in Ansible playbooks:"
echo "- name: Fail if a command does not return 0
  command: /path/to/command
  ignore_errors: no
  register: result
  failed_when: result.rc != 0"
echo "-------------------------------------------------------------"

# Step 11: Ansible Callbacks and Custom Modules
echo "Step 11: Ansible Callbacks and Custom Modules"
echo "-------------------------------------------------------------"
echo "22. Customize Ansible output with callbacks:"
echo "ansible-playbook playbook.yml -v -e ansible_callbacks_enabled=true"
echo "-------------------------------------------------------------"
echo "23. Develop custom Ansible modules for specialized tasks:"
echo "ansible-doc -t module_name"
echo "-------------------------------------------------------------"

# Step 12: Ansible and Docker Integration
echo "Step 12: Ansible and Docker Integration"
echo "-------------------------------------------------------------"
echo "24. Manage Docker containers with Ansible:"
echo "ansible-container build"
echo "ansible-container run"
echo "-------------------------------------------------------------"

# Step 13: Ansible Tower / AWX
echo "Step 13: Ansible Tower / AWX"
echo "-------------------------------------------------------------"
echo "25. Install and configure Ansible Tower or AWX:"
echo "docker-compose up"
echo "Access Tower/AWX interface in a web browser"
echo "-------------------------------------------------------------"

# Step 14: Ansible for Cloud Automation
echo "Step 14: Ansible for Cloud Automation"
echo "-------------------------------------------------------------"
echo "26. Provision and manage cloud resources with Ansible:"
echo "ansible-galaxy install cloud_community_role"
echo "-------------------------------------------------------------"

# Step 15: Ansible for Configuration Drift Management
echo "Step 15: Ansible for Configuration Drift Management"
echo "-------------------------------------------------------------"
echo "27. Detect and manage configuration drift with Ansible:"
echo "ansible-playbook playbook.yml --check"
echo "ansible-playbook playbook.yml --diff"
echo "-------------------------------------------------------------"

# Step 16: Ansible for Network Automation
echo "Step 16: Ansible for Network Automation"
echo "-------------------------------------------------------------"
echo "28. Automate network device configurations with Ansible:"
echo "ansible-galaxy install network_community_role"
echo "-------------------------------------------------------------"

# Step 17: Ansible Best Practices
echo "Step 17: Ansible Best Practices"
echo "-------------------------------------------------------------"
echo "29. Follow best practices for organizing Ansible code:"
echo "  - Separate variables, tasks, and handlers"
echo "  - Use roles for reusability"
echo "  - Document playbooks and roles"
echo "  - Leverage Ansible linting tools"
echo "-------------------------------------------------------------"

# Step 18: Ansible Continuous Integration
echo "Step 18: Ansible Continuous Integration"
echo "-------------------------------------------------------------"
echo "30. Integrate Ansible playbooks into CI/CD pipelines:"
echo "  - Jenkins, GitLab CI, GitHub Actions, etc."
echo "-------------------------------------------------------------"

# Step 19: Ansible Security Considerations
echo "Step 19: Ansible Security Considerations"
echo "-------------------------------------------------------------"
echo "31. Secure Ansible communication with SSH keys:"
echo "ansible-playbook playbook.yml -i inventory --private-key=key.pem"
echo "-------------------------------------------------------------"

# Step 20: Advanced Ansible Use Cases
echo "Step 20: Advanced Ansible Use Cases"
echo "-------------------------------------------------------------"
echo "32. Explore advanced Ansible use cases:"
echo "  - Multi-environment deployments"
echo "  - Rolling updates and blue-green deployments"
echo "  - Hybrid infrastructure management"
echo "-------------------------------------------------------------"

# End of Tutorial
echo "End of Tutorial"
