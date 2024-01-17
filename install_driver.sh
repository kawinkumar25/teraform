# Download and Install chromedriver
wget -N https://chromedriver.storage.googleapis.com/73.0.3683.68/chromedriver_linux64.zip -P ~/
unzip ~/chromedriver_linux64.zip -d ~/
rm ~/chromedriver_linux64.zip
echo "haiiiiiiiiiiiiiiiiiiiiiiiiii"
sudo mv -f ~/chromedriver /usr/local/bin/chromedriver
echo "haiiiiiiiiiiiiiiiiiiiiiiiiii"
sudo chown root:root /usr/local/bin/chromedriver
echo "haiiiiiiiiiiiiiiiiiiiiiiiiii"
sudo chmod 0755 /usr/local/bin/chromedriver
echo "haiiiiiiiiiiiiiiiiiiiiiiiiii"
# Install chrome broswer
echo "haiiiiiiiiiiiiiiiiiiiiiiiiii"
curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
echo "haiiiiiiiiiiiiiiiiiiiiiiiiii"
echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list
apt-get -y update
apt-get -y install google-chrome-stable
