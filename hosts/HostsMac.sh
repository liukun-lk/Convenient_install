echo "正在添加 hosts......"
echo "请输入密码"
sudo chmod a+w /etc/hosts
sudo cat ./hosts >> /etc/hosts
echo "添加成功"