# Ansible Terraform Module

This ansible playbook helps spin infrastructure by triggering terraform scripts using ansible's in-built terraform module. The module provides support for deploying resources with Terraform and pulling resource information back into Ansible.

## Description

This playbook is designed with the following capabilities:
* Ability to set backend configuration during runtime
* Ability to pass  terraform variables through ansible variables
* Ability to create only terraform plan and not execute it
* Ability to create the plan and execute it
* Ability to execute a plan that had been created earlier

## Prerequisites

* Install Terraform
* Install Ansible (2.7+)

## Usage and Execution

This playbook spins up an AWS EC2 instance in a default VPC. This playbook works locally, however, you can update the 'hosts' file to work on remote machines. "Tags" attribute has been used to run specific parts of the playbook.
 
* For the ability to execute a playbook to create only terraform plan, use the below command: 

```bash
$ ansible-playbook ansible-terraform.yml --tags "plan"
```
* For the ability to execute a terraform plan that has been created in the previous step, use the below command: 

```bash
$ ansible-playbook ansible-terraform.yml --tags "apply"
```

* For the ability to create and execute the plan, use the below command: 

```bash
$ ansible-playbook ansible-terraform.yml --tags "execute"
```

* To delete the created workspace, use the below command: 

```bash
$ ansible-playbook ansible-terraform.yml --tags "destroy"
```

## Jenkins Execution
This playbook can also be invoked from a Jenkins job to automate the build process. Apart from the above prerequisites, the following are required:

* Install Jenkins
* Install 'Ansible Plugin' and create a global configuration for Ansible with the executable path.
* Create a new Jenkins Job and select 'Invoke Ansible Playbook' under the Build environment section and specify the path to the ansible playbook.
* The required files can be cloned either from a git repository or stored locally on the machine.
* Under the advanced section, we can make use of the 'Tags to run' section to only invoke specific parts of the playbook.
* Make sure Jenkins has the necessary permission to execute ansible playbooks

