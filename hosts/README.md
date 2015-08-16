###1. Windows 用户：

1. 首先将文件 clone 到本地解压。
2. 再运行文件 **hosts(run as Admin).bat** ，最好是 **以管理员身份运行** 该文件。

如果 **.bat** 文件运行出现问题，那么就**手动**更改相应的文件即可。


> 在 C 盘 C:/WINDOWS/system32/drivers/etc 目录下的 hosts文件，将 hosts 替换即可。

---


###2. Mac 用户

Mac 用户先进入文件夹 my-own-hosts ，在终端运行 HostsMac.sh 文件，如果出现了“Permission denied”。那就运行：

```
chmod 777 HostsMac.sh
```


> 在 /etc/hosts 下，你可以直接替换 hosts 文件。

