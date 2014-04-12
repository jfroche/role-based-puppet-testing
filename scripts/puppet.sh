#!/bin/bash
set -xe
# Install Ruby
sudo apt-get update
sudo apt-get install ruby1.9.1 -y

# Install puppet/facter
sudo gem install puppet facter --no-ri --no-rdoc
sudo mkdir -p /etc/facter/facts.d
