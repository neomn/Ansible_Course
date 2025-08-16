# Topics

## Session 1

### members intro and level estimation
    * level 0: 
        - no experience with ansible, docker, k8s 

    * level 1: 
            - have experience with at least one of (ansible, docker, k8s)

    * level 2: 
        - have experience with all of (ansible, docker, k8s)


### What is Automation and What Problems Ansible Solves

#### Understanding Automation
- **Definition**: Automation is the use of technology to perform tasks with minimal human intervention
- **Evolution**: From manual processes to configuration management and infrastructure as code
- **Key Benefits**:
  - Increased efficiency and speed
  - Reduced human error
  - Consistent and repeatable processes
  - Scalability of operations

#### Common IT Challenges Ansible Addresses
1. **Configuration Management**
   - Managing server configurations across multiple environments
   - Ensuring consistency between development, testing, and production
   - Tracking and auditing configuration changes

2. **Application Deployment**
   - Automating software installation and updates
   - Managing dependencies and prerequisites
   - Ensuring consistent deployment across environments

3. **Orchestration**
   - Coordinating complex multi-tier deployments
   - Managing dependencies between systems
   - Automating workflows across different teams

4. **Security and Compliance**
   - Enforcing security policies
   - Automating security patches and updates
   - Maintaining compliance with industry standards

5. **Cloud Provisioning**
   - Managing cloud resources
   - Automating infrastructure deployment
   - Handling auto-scaling and load balancing

#### Why Choose Ansible?


- **Agentless Architecture**: No need to install additional software on managed nodes
- **Idempotency**: Safe to run multiple times without side effects
- **Human-Readable YAML**: Easy to learn and understand
- **Extensible**: Large collection of modules and plugins
- **Cross-Platform**: Works with various operating systems and cloud providers

#### Real-World Use Cases
- **System Administration**: User management, package installation, service configuration
- **Network Automation**: Configuring network devices, managing firewalls
- **Container Orchestration**: Managing Docker containers and Kubernetes
- **CI/CD Pipelines**: Automating build, test, and deployment processes

#### The Impact of Ansible
- **For Developers**: Faster development cycles and consistent environments
- **For Operations**: Reliable and repeatable infrastructure management
- **For Businesses**: Reduced costs, improved efficiency, and faster time-to-market




### install and setup ansible
1. install on linux using package managers
2. install on linux using pip 
3. install on docker container

### ansible basic concepts and default directory structure

### lab tasks


<br>
<br>
<br>

### ----------------------------------------------------------------------

## session 2

### what is ansible: 
#### almost any work that is done manually on a system cloud be done using ansible
#### but what is our goal of using ansible 


### running some Ah-Hoc command will explain why we do need an inventory file  

### different formats of inventory file 

### create an ini inventory file 
#### what factors must be considered while building inventory file

### validate inventory file 

### Ah-Hoc commands 

   

### lab tasks 

<br>
<br>
<br>

### -------------------------------------------------------------------------------

## session 3

### 1- previous sessions recap and answer any potential question 
   * how to install ansible and/or use ansible
      - using OS package managers
      - using pip or pipx (python package manager)
      - using docker 
   * answer any potential question 

<br>

### 2- playbooks 
   * what is a playbook
      - where we utilize modules and tasks to achive a goal
      - playbook runs like procedural(line by line)
   * write fist playbook and setup ssh connection 
      - as a best practice the first step in utilizing ansible is to setup ssh connection
      - create ansible user 
      - create .ssh directory for ansible user 
      - add ansible user to sudoers 

<br>

### 3- project structure with docker and docker compose 
   * benefits of using docker for ansible 
   * explain different directories 
   * how to run and use ansible inside the container (specific to this structure)

<br>

### 4- project for the Lab or next session 
   * create your own branch 
   * download files.zip uploaded on Talk app, place it inside desired path and unzip it
   * build and run the container in background 
   * create a playbook including these tasks : 
      - disable fact gathering 
      - ping all nodes 
      - create a user with your name having a home directory
      - create .ssh directory for your user 
      - add your user to sudoers 
      - inside the /root directory create a text file with your name
      - write this text line into the created file: "Hi from $(your name)"
   * push your branch into the repo

<br>
<br>

### 5- trainings

   * File & Directory Operations
      - Create a file at /tmp/hello.txt
      - Ensure a directory /opt/myapp exists
      - Delete a file /tmp/delete_me.txt
      - Change permissions of /var/log/messages to 0644
      - Change ownership of /opt/myapp to user ansible
      - Create a symbolic link /tmp/link pointing to /etc/hosts
      - Create a file with specific content using copy
      - Backup a file before modifying it with copy
      - Set file attributes (e.g., immutable) on /etc/passwd
      - Remove a directory recursively

   <br>
   <br>

   * 📦 Package Management
      - Install nginx using yum (or apt)
      - Remove the telnet package
      - Upgrade all packages
      - Check if curl is installed (using package module)
      - Reinstall a package (e.g., vim)
      - Install multiple packages: git, htop, wget
      - Lock a package version (where supported)
      - Clean package manager cache (e.g., yum clean all)
      - List installed packages (using command)
      - Show available updates (using command)

   <br>
   <br>

   * 🖥️ Service Management
      - Start nginx service
      - Stop firewalld service
      - Restart sshd
      - Enable nginx to start at boot
      - Disable cups service
      - Check service status using service_facts
      - Reload a service (e.g., systemctl reload nginx)
      - Mask a service to prevent it from starting
      - Unmask a previously masked service
      - List all running services (using command)

   <br>
   <br>

   * 👤 User & Group Management
      - Create a user deploy
      - Delete user guest
      - Add user ansible to group wheel
      - Create a group developers
      - Set user password (using hashed password)
      - Expire a user account
      - Lock a user account
      - Unlock a user account
      - Set user shell to /bin/bash
      - Set user’s home directory

   <br>
   <br>

   * 🌐 Networking Tasks
      - Add a line to /etc/hosts
      - Remove a line from /etc/hosts
      - Ensure /etc/resolv.conf contains a specific nameserver
      - Download a file using get_url
      - Test internet connectivity with ping
      - Show current IP using ip a (via command)
      - Restart network service
      - List active ports (using ss -tuln)
      - Set static IP (file-based edit with lineinfile)
      - Run curl to fetch a webpage and register the output