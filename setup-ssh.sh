#!/bin/bash

# you need to type this in manually to get started with ssh on your server

sudo apt update && sudo apt upgrade # dont skip this or install openssh-server will fail

sudo apt install nano

sudo apt install openssh-server --fix-missing

sudo nano /etc/ssh/sshd_config # change the port to 2222 and enable password authentication
# uncomment #PORT 22 and change it to #PORT 2222
# also uncomment #PasswordAuthentication yes

sudo service ssh start

# enable ssh on boot in ubuntu without systemd
sudo update-rc.d ssh defaults

sudo passwd userland # change the password for userland

# now you can ssh into your server with the command
# ssh userland@your-server-ip -p 2222
# find ip with ifconfig
sudo apt install net-tools
ifconfig
