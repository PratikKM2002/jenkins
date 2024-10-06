#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Print each command being executed (for debugging)
set -x

echo "Starting deployment..."

# Navigate to the directory where your application is located
cd /path/to/your/application || exit

# Pull the latest changes from the repository
echo "Pulling the latest changes..."
git pull origin main  # Change 'main' to your branch name if necessary

# Install dependencies (modify based on your project)
echo "Installing dependencies..."
npm install  # For a Node.js application
# or
# pip install -r requirements.txt  # For a Python application

# Run any build commands (modify based on your project)
echo "Building the application..."
npm run build  # For a Node.js application
# or
# make build  # For a generic build process

# Restart the application or services (modify based on your setup)
echo "Restarting application..."
# If you are using a process manager like PM2
pm2 restart your-app-name  # Change 'your-app-name' to your actual app name
# or using systemd
# systemctl restart your-service-name  # Change 'your-service-name' as needed

echo "Deployment completed successfully!"
