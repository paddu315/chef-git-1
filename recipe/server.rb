package "httpd" do
  action:install
end
service "httpd" do
 action [:enable, :start]
end

file "/var/www/html/index.html" do

content '<html>

   <body>
	<h1>hello ashok from <%= node['fqdn'] %></h1>
    </body>
    </html>'
end
