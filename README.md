## Mac OS development configuration
* Run *bootstrap.sh* to install Ansible.
* Run *ansible-playbook main.yml -i development  -K*

**Note**
To avoid prompt password, please do the following to disable sudo password.
```
echo "$USER ALL=(ALL) NOPASSWD: ALL" > $USER
sudo cp $USER /etc/sudoers.d/
```

## Reference:
* <https://github.com/geerlingguy/mac-dev-playbook>
* <https://github.com/bennylope/macbook-configuration>
* <https://github.com/mhartington/dotfiles>
* <https://github.com/zchee/nvim-go>
