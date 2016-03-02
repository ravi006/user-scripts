#!/bin/bash


sudo groupadd tapela


sudo adduser --home /tapela/ravi ravi

sudo chown prcsrvce:prcsrvce /tapela/ravi

sudo chmod 755 /tapela/ravi


sudo cat /etc/passwd | grep ravi

#add user in group

sudo usermod -a -G tapela ravi

sudo chown ravi:tapela /appl/ravi

#change primary group of ravi from ravi to tapela
sudo usermod -g newgroup username
sudo usermod -g tapela ravi

# delete secondary group
sudo groupdel ravi

#if user not sudo group, then add

sudo gpasswd -a username sudo


#ssh
ssh-keygen -t rsa

sudo apt-get install openssh-server
