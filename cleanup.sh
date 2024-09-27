#!/bin/bash
# Remove conflicting files and directories before deployment
# pm2 stop all
# pm2 delete backend_server
rm -rf /root/assignment1/
#!/bin/bash

# Install Node.js and npm
#!/bin/bash

MAX_RETRIES=5
RETRY_COUNT=0

while [ $RETRY_COUNT -lt $MAX_RETRIES ]; do
    if sudo apt-get update && sudo apt-get install -y nodejs; then
        break
    else
        echo "Waiting for apt lock to be released..."
        sleep 10
        ((RETRY_COUNT++))
    fi
done

if [ $RETRY_COUNT -eq $MAX_RETRIES ]; then
    echo "Failed to acquire apt lock after $MAX_RETRIES attempts."
    exit 1
fi

# Install PM2 globally
sudo npm install -g pm2
