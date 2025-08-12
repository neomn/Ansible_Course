
# Session 1
------------------------------------------------------------
### attaching to a tmux session 
    tmux ls           # list all sessions 
    tmux a -t 0       # attach to session 0
<br>
<br>


### generate ssh key 
    ssh-keygen -t rsa -b 4096 -C "write down some comment"
<br>
<br>


### install ansible using pip 
    apt install python3 
    apt install python3-pip
    apt install python3-venv
<br>
<br>


### install ansible using Ubuntu package managers
    apt install ansible=$(ansible_version)
<br>
<br>


### install docker on ubuntu and use ansible image

<br>
<br>
<br>



# Session 2 
---------------------------------------------------------

## Ad-Hoc commands 

### Why use ad hoc commands?
ad hoc commands are great for tasks you repeat rarely. For example, if you want to power off all the machines in your lab for Christmas vacation, you could execute a quick one-liner in Ansible without writing a playbook. An ad hoc command looks like this:

    $ ansible [pattern] -m [module] -a "[module options]"
<br>


### an example of ini inventory
    node1    ansible_host=5.42.84.28       ansible_user=ansible  ansible_ssh_port="{{ custom_ssh_port }}" 
    node2    ansible_host=5.42.95.45       ansible_user=ansible  ansible_ssh_port="{{ custom_ssh_port }}" 
    node3    ansible_host=5.42.83.254      ansible_user=ansible  ansible_ssh_port="{{ custom_ssh_port }}" 
    node4    ansible_host=77.232.142.146   ansible_user=ansible  ansible_ssh_port="{{ custom_ssh_port }}" 
    node5    ansible_host=77.232.142.121   ansible_user=ansible  ansible_ssh_port="{{ custom_ssh_port }}" 


    [kube_control_plane]
    node1
    node2
    node3


    [kube_node]
    node4
    node5


    [k8s_cluster:children]
    kube_node
    kube_control_plane

<br>
<br>

### some example of Ad-Hoc commands

#### ping 
    ansible all -m ping 

#### display server uptime
    ansible all -a uptime

#### disable host-key-checking and write down server password using extra vars
    ANSIBLE_HOST_KEY_CHECKING=False ansible all -i 77.110.97.3, -m ping --extra-vars="ansible_password=Tasf43eNZ5
    b39"

#### reboot the servers in atlanta group using command module 
    ansible atlanta -a "/sbin/reboot"  

#### setup 
    ansible all -m setup 

#### create a file 
    ansible all -m file -a "path=/tmp/myfile.txt state=touch"

#### add a text line to file 
    ansible all -m lineinfile -a "path=/tmp/myfile.txt line='Hello from Ansible'"

#### create a directory 
    ansible all -m file -a "path=/tmp/mydir state=directory mode=0755"

#### move file into the created directory 
    ansible all -m command -a "mv /tmp/myfile.txt /tmp/mydir/"

#### remove file
    ansible all -m file -a "path=/tmp/mydir/myfile.txt state=absent"

#### remove directory 
    ansible all -m file -a "path=/tmp/mydir state=absent"

#### get service info 
    ansible all -m service_facts

#### install package using apt module 
    # for password to be asked we can use --ask-pass or -k 
    ansible all -i 77.110.97.3, --ask-pass -m apt -a "name=ranger state=present update_cache=yes"

#### remove package using apt module
    ansible all -m apt -a "name=ranger state=absent" 

#### start a service 
    ansible all -m service -a "name=nginx state=started" 

#### check service status
    ansible all -m service -a "name=nginx state=started" 

#### stop a service 
    ansible all -m service -a "name=nginx state=stopped" 

#### get server ipv4 address 
    ansible all -m setup -a "filter=ansible_default_ipv4"

#### clone a public git repository 
    ansible all -m git -a "repo=https://github.com/ansible/ansible.git dest=/tmp/ansible clone=yes"

