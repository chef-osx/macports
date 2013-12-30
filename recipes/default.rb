#
# Cookbook Name:: macports
# Recipe:: default
#
# Copyright 2013, Urbandecoder Labs LLC
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

if node['platform_version'].split('.')[1].to_i > 5
  remote_file "#{Chef::Config[:file_cache_path]}/macports.pkg" do
    source node['macports']['url']
    checksum node['macports']['checksum']
    action :create
  end

  execute "installer -pkg #{Chef::Config[:file_cache_path]}/macports.pkg -target /" do
    action :run
    not_if "pkgutil --pkgs=org.macports.MacPorts"
  end
else
  dmg_package "MacPorts-2.2.1" do
    source node['macports']['url']
    checksum node['macports']['checksum']
    action :install
    package_id 'org.macports.MacPorts'
  end
end
