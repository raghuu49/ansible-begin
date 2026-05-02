## Motive

Starting with Infrastructure as Code, this project serves as a learning exercise for readers who want to utilize Ansible playbooks to create and destroy infrastructure on AWS cloud.

## Code Structure

This project contains:
- **create_infra.yaml** - Ansible playbook to create EC2 instances on AWS
- **destroy_infra.yaml** - Ansible playbook to terminate the instances
- **run.sh** - Shell wrapper script that simplifies running playbooks without typing long commands

## Prerequisites

1. **Ansible and AWS Collection installed**
   - Install Ansible: `pip install ansible`
   - Install AWS collection: `ansible-galaxy collection install amazon.aws`
   - Or install from requirements: `ansible-galaxy install -r requirements.yml`

2. **AWS configuration**
   - Create an AWS user with programmatic access
   - Configure AWS credentials: `aws configure`
   - Ensure access key and secret key are set in `~/.aws/credentials`

3. **SSH Key Pair**
   - Create or import the `ansible-key` key pair in AWS ap-south-1 region

## How to Run

**Option 1: Using the wrapper script (recommended)**
```bash
chmod +x run.sh
./run.sh run      # Create EC2 instance
./run.sh destroy  # Destroy EC2 instance
```

**Option 2: Direct Ansible commands**
```bash
ansible-playbook create_infra.yaml   # Create instance
ansible-playbook destroy_infra.yaml  # Destroy instance
```
