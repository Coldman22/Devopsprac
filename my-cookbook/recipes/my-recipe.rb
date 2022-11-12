#
# Cookbook:: my-cookbook
# Recipe:: my-recipe
#
# Copyright:: 2022, The Authors, All Rights Reserved.

execute "run a script" do
command <<-EOH
mkdir /rajputdir
touch /rajputfile
EOH
end

user "rajput" do
action :create
end

group "devopsgroup" do
action :create
members 'rajput'
append true
end
