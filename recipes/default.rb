# Cookbook Name:: snmp
# Recipe:: default
#
# Copyright 2010, Eric G. Wolfe
# Copyright 2023, Thomas Vincent
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Install required packages
package node['snmp']['packages']

# Configure SNMPD service
template '/etc/default/snmpd' do
  mode '0644'
  owner 'root'
  group 'root'
  only_if { node['platform_family'] == 'debian' }
end

service node['snmp']['service'] do
  action [:start, :enable]
end

# Configure SNMPD
template '/etc/snmp/snmpd.conf' do
  mode '0600'
  owner 'root'
  group 'root'
  variables(groups: node['snmp']['groups'].keys.uniq)
  notifies :restart, "service[#{node['snmp']['service']}]"
end
