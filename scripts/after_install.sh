#!/usr/bin/env bash

# Kill any running Django development servers in the background
sudo pkill -f runserver

# Kill frontend servers if you are deploying any frontend (uncomment if needed)
# sudo pkill -f tailwind
# sudo pkill -f node

# Navigate to the project directory
cd /home/ubuntu/pro1

# # Create and activate a virtual environment
# python3 -m venv venv
# source venv/bin/activate
# ======================
sudo apt update
sudo apt install python3-venv
python3 -m venv /home/ubuntu/env
source /home/ubuntu/env/bin/activate
cd pro1
# pip install -r requirements.txt


# Install dependencies from requirements.txt
pip install -r /home/ubuntu/pro1/requirements.txt

# # Run Django development server in a detached screen session (background)
# screen -d -m python3 manage.py runserver 0.0.0.0:8000
# ========================
python3 manage.py runserver 0.0.0.0:8000

