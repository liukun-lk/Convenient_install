echo "Install nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.2/install.sh | bash
source ~/.bashrc
echo "Install Node.js"
nvm install 0.12
nvm use 0.12
npm install -g cnpm --registry=https://registry.npm.taobao.org
echo "succeed"
