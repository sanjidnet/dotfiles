az devops configure --defaults organization=https://dev.azure.com/nzsf project=NZSF-TerraformModules
az repos list
az repos list | jq -r '.[].sshUrl'
az repos list | jq -r '.[].sshUrl' | while read sshUrl ; do git clone "${sshUrl}" ; done
