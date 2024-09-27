#!/bin/bash
# Remove conflicting files and directories before deployment
pm2 stop all
pm2 delete backend_server
rm -rf /root/assignment1/
