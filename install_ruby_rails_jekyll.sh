echo "Do you want to install RVM(y/n)?"
read params
if $params = "y";then
	\curl -sSL https://get.rvm.io | bash -s stable 
	sudo cat '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"' >>~/.bashrc
	source ~/.bashrc
	sudo cat 'source ~/.profile' >> /Users/liukun/.bash_profile
else
	echo "Skip install..."
fi

echo "Do you want to install gem and ruby(y/n)?"
read rvm_params
if $rvm_params = "y";then
	rvm install 2.2.1 
	echo "default ruby version"
	rvm use 2.2.1 --default 
	echo "modify the gem mirror"
	bundle config mirror.https://rubygems.org https://ruby.taobao.org
	echo "update gem"
	gem update 
	ruby -v
	echo "If the version number is displayed.Your Ruby is installed"
else
	echo "Skip install..."
fi

echo "Do you want to install Rails(y/n)?"
read rails_params
if $rails_params = 'y';then
	gem install rails 
	rails -v 
	echo "If the version number is displayed.Your Rails is installed"
else
	echo "Skip install..."
fi

echo "Do you want to install jekyll"
read jekyll_params
if $jekyll_params = "y";then
	gem install jekyll
else 
	echo "Skip install..."
fi