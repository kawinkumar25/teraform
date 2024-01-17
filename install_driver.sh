# Download and Install chromedriver
# wget -N https://chromedriver.storage.googleapis.com/73.0.3683.80/chromedriver_linux64.zip -P ~/
wget -N https://chromedriver.storage.googleapis.com/71.0.3578.80/chromedriver_linux64.zip -P ~/
# wget -N https://chromedriver.storage.googleapis.com/114.0.5735.90/chromedriver_linux64.zip -P ~/

unzip ~/chromedriver_linux64.zip -d ~/
rm ~/chromedriver_linux64.zip
echo "hiiiiiiiiiiiiiiiiiiiiiii"
sudo mv -f ~/chromedriver /usr/local/bin/chromedriver

# List files in /usr/local/bin/
ls -la /usr/local/bin/
echo "hiiiiiiiiiiiiiiiiiiiiiii"
sudo chown root:root /usr/local/bin/chromedriver
sudo chmod 0755 /usr/local/bin/chromedriver


# Install chrome broswer
curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list
apt-get -y update
apt-get -y install google-chrome-stable
