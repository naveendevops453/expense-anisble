## For template pipeline we will skip the ansible run
if [ "$pipeline" == "true" ]; then
  exit
fi
##
ansible-playbook -i ${component}-${env}.devopsengineer.online, -e ansible_user=ec2-user -e ansbile_password=${SSH_PASSWORD} -e role_name=${component} -e env=dev expense.yml