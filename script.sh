#!/bin/sh
git clone https://github.com/ParveenBhadooOfficial/python-aria-mirror-bot-heroku &&
cd python-aria-mirror-bot-heroku
sudo apt-get -y update && sudo apt-get -y upgrade &&
sudo apt -y update && sudo apt -y upgrade &&
sudo apt -y install python3 &&
sudo snap -y install docker &&
sudo apt -y install python-pip &&
pip install google-api-python-client google-auth-httplib2 google-auth-oauthlib &&
python3 generate_drive_token.py &&
sudo dockerd &&
sudo docker build . -t mirror-bot &&
sudo docker run mirror-bot
