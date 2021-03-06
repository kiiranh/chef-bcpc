#
# Cookbook Name:: bcpc
# Recipe:: bootstrap
#
# Copyright 2014, Bloomberg Finance L.P.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# should extract prefix

directory "/var/www/cobbler/pub/scripts" do
    action :create
    owner "root"
    group "adm"
    mode 02775
end

template "/var/www/cobbler/pub/scripts/get-ssh-keys" do
    source "get-ssh-keys"
    owner "root"
    group "root"
    mode 00755
end

# Install some useful packages
include_recipe "bcpc::packages-openstack"

%w{ python-keystoneclient
    python-openstackclient
}.each do |pkg|
    package pkg do
        action :install
    end
end

# sudo for zabbix checks
template '/etc/sudoers.d/zabbix' do
    source 'sudoers-bootstrap.erb'
    owner  'root'
    group  'root'
    mode   00440
end
