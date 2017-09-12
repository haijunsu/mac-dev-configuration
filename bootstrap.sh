#!/bin/bash
# Purpose:
#	* bootstrap machine in order to prepare for ansible playbook run

set -e

# Download and install Command Line Tools if no developer tools exist
#       * previous evaluation didn't work completely, due to gcc binary existing for vanilla os x install
#       * gcc output on vanilla osx box:
#       * 'xcode-select: note: no developer tools were found at '/Applications/Xcode.app', requesting install.
#       * Choose an option in the dialog to download the command line developer tools'
#
# Evaluate 2 conditions
#       * ensure dev tools are installed by checking the output of gcc
#       * check to see if gcc binary even exists ( original logic )
# if either of the conditions are met, install dev tools
if [[ $(/usr/bin/gcc 2>&1) =~ "no developer tools were found" ]] || [[ ! -x /usr/bin/gcc ]]; then
    echo "Info   | Install   | xcode"
    sudo code-select --install
fi

# Download and install pip
if [[ ! -x /usr/local/bin/pip ]]; then
    echo "Info   | Install   | pip"
    sudo easy_install pip
fi


# Download and install Ansible
if [[ ! -x /usr/local/bin/ansible ]]; then
    echo "Info   | Install   | Ansible"
    sudo pip install ansible
fi

# Modify the PATH
# This should be subsequently updated in shell settings
export PATH=/usr/local/bin:$PATH

