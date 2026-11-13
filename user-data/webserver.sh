#!/bin/bash
# Runs once when each server starts: installs the web server and creates the welcome page.
dnf update -y
dnf install -y httpd
systemctl enable --now httpd

cat > /var/www/html/index.html <<'HTML'
<h1>Welcome to My AWS DevOps Project!</h1>
<p>High Availability Web Application</p>
HTML
