## Mac OS development configuration
* Run *bootstrap.sh* to install Ansible.
* Run *ansible-playbook local.yml -i development  -K*

**Note**
To avoid prompt password, please do the following to disable sudo password.
```
echo "$USER ALL=(ALL) NOPASSWD: ALL" > $USER
sudo cp $USER /etc/sudoers.d/
```
If you install xcode with full version, please make sure you have accepted the license
```
sudo xcodebuild -license accept
```
If you want to install remote computer, you only need to run the following command on remote machine.
```
sudo xcode-select --install
```
Role *mas* doesn't work on remote server. It only supports local machine.

## Reference:
* <https://github.com/geerlingguy/mac-dev-playbook>
* <https://github.com/bennylope/macbook-configuration>
* <https://github.com/mhartington/dotfiles>
* <https://github.com/zchee/nvim-go>
