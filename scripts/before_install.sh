# clean codedeploy-agent files for a fresh install
sudo rm -rf /home/ubuntu/install
# install CodeDeploy agent
sudo apt-get -y update
sudo apt-get -y install ruby
sudo apt-get -y install wget
cd /home/ubuntu
wget https://aws-codedeploy-ap-southeast-2.s3.amazonaws.com/latest/install
sudo chmod +x ./install 
sudo ./install auto
# update os & install python3
sudo apt-get update
# sudo apt-get install -y python3 python3-dev python3-pip python3-venv
sudo apt-get install -y python3.12 python3.12-dev python3.12-pip python3.12-venv
pip install --user --upgrade virtualenv

