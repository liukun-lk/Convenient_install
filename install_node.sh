echo "Do you want to install nvm(y/n)?"
read nvm_params
if $nvm_params = "y";then
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.2/install.sh | bash
	source ~/.bashrc
else
	echo "Skip install..."
fi
echo "Do you want to install Node.js(y/n)?"
read node_params
if $node_params = "y";then
	nvm install 0.12
	nvm use 0.12
	npm install -g cnpm --registry=https://registry.npm.taobao.org
else
	echo "Skip install..."
fi
echo "You could use 'node -v' to determine whether the installation is complete."
