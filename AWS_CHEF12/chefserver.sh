#!/bin/bash
setenforce 0
echo "##### Create Directory #######"
mkdir Scripts-test
cd Scripts-test
echo "#######Change Hostname########"
hostnamectl set-hostname chef12.varun.chefsuccess.io
hostname chef12.varun.chefsuccess.io
echo "chef12.varun.chefsuccess.io" | sudo tee /etc/hostname
echo "######Install Wget and unzip ########"
yum -y install wget unzip
echo "##########Download chef-server-core-12.17.15-1 ##############"
wget https://packages.chef.io/files/stable/chef-server/12.17.15/el/7/chef-server-core-12.17.15-1.el7.x86_64.rpm?_ga=2.171868704.1484800104.1629134464-1465017668.1624503271
echo "######move chef server to chef.rpm#########"
mv chef-server* chef.rpm
echo "#########Install chef-server-core-12.17.15-1 ###########"
sudo yum -y install chef.rpm
echo "##############chef-server-ctl reconfigure################"
sudo chef-server-ctl reconfigure
echo "##################Create User davinder12###########"
sudo chef-server-ctl user-create davinder12 davinder Singh davinder.singh@progress.com 'Welcom2chef@' --filename davinder-chef12.pem
echo "################Create ORG######################"
sudo chef-server-ctl org-create chef12org 'chef 12 org' --association_user davinder12 --filename chef12org-alidator.pem
echo "############## Create chef-server.rb ################"
sudo mkdir /etc/opscode && sudo touch /etc/opscode/chef-server.rb
echo "###############Re-Configure############"
sudo chef-server-ctl reconfigure
echo "#######Installing Chef Manage#########"
sudo chef-server-ctl install chef-manage
echo "#######reconfigure Chef Manage#########"
sudo chef-server-ctl reconfigure
sudo chef-manage-ctl reconfigure 