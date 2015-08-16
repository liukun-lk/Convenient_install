echo "Install RVM"
\curl -sSL https://get.rvm.io | bash -s stable 
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"' >>~/.bashrc
source ~/.bashrc
echo "install gem and ruby"
rvm install 2.2.1 
echo "default ruby version"
rvm use 2.2.1 --default 
echo "modify the gem mirror"
bundle config mirror.https://rubygems.org https://ruby.taobao.org
echo "install jekyll"
gem install jekyll
echo "succeed"
