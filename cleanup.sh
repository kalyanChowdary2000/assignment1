#!/bin/bash
# Remove conflicting files and directories before deployment
# pm2 stop all
# pm2 delete backend_server
# rm -rf /root/assignment1/
#!/bin/bash

# Install Node.js and npm
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

# Install PM2 globally
sudo npm install -g pm2
