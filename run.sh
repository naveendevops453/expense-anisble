## For template pipeline we will skip the ansible run
#if [ "$pipeline" == "true" ]; then
#  exit
#fi
##
ansible-playbook -i ${component}-${env}.devopsengineer2.online, -e ansible_user=ec2-user -e ansible_password=${SSH_PASSWORD} -e role_name=${component} -e env=dev expense.yml
