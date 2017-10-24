ckage "httpd" do
  action:install
end
service "httpd" do
 action [:enable, :start]
end


group 'web_admin'

user 'web_admin' do
  group 'web_admin'
  system true
  shell '/bin/bash'
end

template '/var/www/html/index1.html' do
  source 'index.html'
  mode '0644'
  owner 'web_admin'
  group 'web_admin'
end
