#!/usr/bin/env bash

# Kill any running Django servers
sudo pkill -f runserver

# Update packages and install python-venv
sudo apt update
sudo apt install -y python3-venv

# Set up virtual environment
python3 -m venv /home/ubuntu/env
source /home/ubuntu/env/bin/activate

# Navigate to project directory
cd /home/ubuntu/pro1

# Install dependencies
pip install -r /home/ubuntu/pro1/pro1/requirements.txt

# Run Django server in the background
echo "Running Django server in the background..." >> /tmp/after_install.log
nohup python3 /home/ubuntu/pro1/pro1/manage.py runserver 0.0.0.0:8000 > /dev/null 2>&1 &

# Ensure the script exits cleanly
exit 0
