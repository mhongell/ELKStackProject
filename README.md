# ELKStackProject
Cybersecurity bootcamp ELK Stack Project

## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Elk Stack Diagram](https://github.com/mhongell/ELKStackProject/blob/main/Diagrams/Hongell%20ELK%20Stack%20Diagram.drawio.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the elk-playbook.yml file may be used to install only certain pieces of it, such as Filebeat.

[elk-playbook.yml](../Ansible/elk-playbook.yml)

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly reliable, in addition to restricting traffic to the network.
- What aspect of security do load balancers protect?
	- Availability
- What is the advantage of a jump box? 
	- The jump box serves as a gateway to access all VMs from a single access point, rather than having to access each VM individually.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the data and system logs.
- What does Filebeat watch for? 
	- Filebeat captures data about the file system.
- What does Metricbeat record? 
	- Metricbeat collects machine metrics, such as uptime, and sends them to ELK.

The configuration details of each machine may be found below.

| Name     | Function      | IP Address | Operating System |
|----------|---------------|------------|------------------|
| Jump Box | Gateway       | 10.0.10.4  | Linux            |
| Web-1    | DVWA Access   | 10.0.10.5  | Linux            |
| Web-2    | DVWA Access   | 10.0.10.6  | Linux            |
| Elk      | Kibana Access | 10.1.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the ELK machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 184.59.88.22

Machines within the network can only be accessed over SSH by Jump Box Provisioner.
- Which machine did you allow to access your ELK VM? 
	- Jump Box Provisioner via SSH and local machine
- What was its IP address? 
	- Jump Box: 10.0.10.4 and local machine: 184.59.88.22

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Address      |
|----------|---------------------|-------------------------|
| Jump Box | Yes                 | 184.59.88.22            |
| Web-1    | Yes                 | 184.59.88.22, 10.0.10.4 |
| Web-2    | Yes                 | 184.59.88.22, 10.0.10.4 |
| Elk      | Yes                 | 184.59.88.22            |

- Note: Publicly accessible machines are only accessed through allowed IP addresses.

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- What is the main advantage of automating configuration with Ansible? 
	-The main advantage of automating configuration with Ansible is quick and easy deployment of configurations and eliminating variability between configurations.

The playbook implements the following tasks:
- In 3-5 bullets, explain the steps of the ELK installation play. E.g., install Docker; download image; etc._
	- Configure Elk VM with Docker: specified to elk host, user azadmin.	
	- Install following modules to host: docker.io, python3-pip, docker via pip module)
	- Increase system memory
	- Allow ELK to run on specified ports: 5601, 9200, 5044
	- Enables service docker on boot
	
The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

[docker ps results](https://github.com/mhongell/ELKStackProject/blob/main/Images/Project1_Elk_dockerps_screenshot.JPG)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- Web-1 10.0.10.5 and Web-2 10.0.10.6.

We have installed the following Beats on these machines:
- Filebeat and Metricbeat are installed to the ELK machine.

These Beats allow us to collect the following information from each machine:
- Filebeat collects data about the system logs, such as response codes over time. Metricbeat collects machine metrics, like uptime. 

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the elk-playbook.yml file to location on control node.
- Update the hosts file to include elk.machine.private.IP ansible_python_interpreter=/usr/bin/python3.
- Run the playbook, and navigate to http://[your.elk-vm.external.ip]:5601/app/kibana to check that the installation worked as expected.

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
- run the playbook:
	-ansible-playbook [playbook-name].yml
- update the files:
	-nano [playbook-name].yml
<<<<<<< HEAD

=======
>>>>>>> fc41e2da963f9c41c2fdb2370eaa12fc20d5c3d0
