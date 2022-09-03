#!/bin/bash

# Create File


echo "file created"
touch file.txt


# Create Directory


echo "directory created"
mkdir risavdir

# Create Users

echo "add user"
sudo useradd "Risav1"
sudo useradd "Web"
sudo useradd "Jenkins"
sudo useradd "Docker"
sudo useradd "Azure"


echo "addgroup"
sudo groupadd "Devops"
sudo groupadd "Developer"
sudo groupadd "Tester"
sudo groupadd "HR"


# Execute Permission on File and directory (No Permission, Full Permission, only Owner)


echo "no permisssion"
sudo chmod 000 file.txt risavdir


echo " full permission"
sudo chmod 777 file.txt risavdir


echo "only owner permission"
sudo chmod 700 file.txt risaavdir


# Add user onto  a group

echo"adding user risav1 to group devops"
sudo usermod -a -G  devops risav1

# Change the user  and group ownership of file and directory


echo "changing the user and group of file"
echo "before changing"
ls -al | grep file.txt

echo "after changing"
sudo chown risav1:devops file.txt
ls -al | grep file.txt


echo "adding user risav1 to group devops"
sudo usermod -a -G devops risav1


echo "changing the user and group of  directory"
echo "before changing"
ls -al | grep risavdir


echo "after changing"
sudo chown risav1:devops risavdir
ls -al | grep risavdir

# Change the hostname and update the host file /etc/hosts

echo "hostname"
hostname
sudo echo 'hostname - I' | awk '{"print" $1}' >> /etc/hosts


