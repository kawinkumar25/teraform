#!/bin/bash

# Install ChromeDriver
wget -N https://chromedriver.storage.googleapis.com/71.0.3578.80/chromedriver_linux64.zip -P ~/
unzip ~/chromedriver_linux64.zip -d ~/
rm ~/chromedriver_linux64.zip
mv -f ~/chromedriver /usr/local/bin/chromedriver
chmod +x /usr/local/bin/chromedriver

# Install Google Chrome
curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | gpg --import -
echo "repo_gpgcheck=1" > /etc/yum.repos.d/google-chrome.repo
echo "https://dl.google.com/linux/chrome/rpm/stable/x86_64" > /etc/yum.repos.d/google-chrome.repo
yum -y install google-chrome-stable
