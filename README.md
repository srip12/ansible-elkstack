### Install virtualbox and vagrant on mac:
```
brew cask install virtualbox
brew cask install vagrant
brew cask install vagrant-manager
```

### Create virtual machine using Vagrantfile.
- Navigate to directory where Vagrantfile is present and run:
```
vagrant up           # This will take some time to spin 3 vms [ elastic, logstash, filebeat ]
vagrant ssh-config
```

### Generate ssh key pair:
```
ssh-keygen -f ssh_key
chmod 400 ssh_key
```

### Copying file into vagrant vms:

```
vagrant plugin install vagrant-scp
vagrant scp <some_local_file_or_dir> [vm_name]:<somewhere_on_the_vm>
```

example:
```
vagrant scp ssh_key.pub elastic:~/.ssh/authorized_keys
vagrant scp ssh_key.pub logstash:~/.ssh/authorized_keys
vagrant scp ssh_key.pub filebeat:~/.ssh/authorized_keys
vagrant scp ssh_key.pub kibana:~/.ssh/authorized_keys
```

### Run playbook:
```
# install dependencies for then installation:
ansible-galaxy role install -r requirements.yml

ansible-playbook -i inventories/dev --private-key=ssh_key site.yml
```
