#!/bin/bash
ACTION=$1

if [ "$ACTION" == "create" ] ; then
   echo "Creating ec2 instance"
   ansible-playbook create_infra.yaml

elif [ "$ACTION" == "destroy" ] ; then
    echo "Destroying ec2 instance"
    ansible-playbook destroy_infra.yaml

else
    echo "Usage: $0 [run|destroy]"

fi