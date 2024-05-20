## For template pipeline we will skip the ansible run
component=$1
#if [ "$pipeline" == "true" ]; then
#  exit
#fi
##
ansible-playbook -i ${component}-${env}.devopsengineer.online, -e ansible_user=ec2-user -e ansible_password=${ssh_password} -e role_name=${component} -e env=dev expense.yml