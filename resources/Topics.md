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
      - playbook runs like procetural(line by line)
   * write fist playbook and setup ssh connection 
      - as a best practice the first step in utilizing ansible is to setup ssh connection
      - create ansible user 
      - create .ssh directory for ansible user 
      - add ansible user to sudoers 
### 3- project structure with docker and docker compose 
### 4- project for next session 