#!/bin/bash

# Navigate to the project directory
cd /root/assignment1

# Install the app's dependencies
npm install

# Start the Node.js app using PM2
pm2 start index.js --name "backend_server"

# Ensure PM2 restarts the app on system reboots
pm2 startup systemd
pm2 save
