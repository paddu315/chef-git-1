package "httpd" do
  action:install
end
service "httpd" do
 action [:enable, :start]
end

group 'paddu'

user 'paddu' do
  group 'paddu'
  system true
  shell '/bin/bash'
end
template '/var/www/html/index.html' do
  source 'index.html.erb'
  owner 'paddu'
  group 'paddu'
end
