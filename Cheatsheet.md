
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

* Rebooting servers

    - The default module for the ansible command-line utility is the ansible.builtin.command module. You can use an ad hoc task to call the command module and reboot all web servers in Atlanta, 10 at a time. Before Ansible can do this, you must have all servers in Atlanta listed in a group called [atlanta] in your inventory, and you must have working SSH credentials for each machine in that group. To reboot all the servers in the [atlanta] group:


    $ ansible atlanta -a "/sbin/reboot"



