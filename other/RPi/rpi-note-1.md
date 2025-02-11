# **easonzhou 的树莓派日志**

## **准备**

一块树莓派5B的板子以及相关设备（待补充）

## **安装系统**

选择镜像并写入

开机

## **遭遇问题**

### **开机无显示**

**错误现象：**在开机后显示器或电视显示“无信号”，且可以SSH远程登录。

**解决办法：**

1. 备份 `/boot/firmware/config.txt`

```sh
# 保存至用户目录内
sudo cp /boot/firmware/config.txt $HOME/config.txt.bak
```

2. 打开 `/boot/firmware/config.txt` 并编辑

**注意： 请将 config.txt 文件内的所有配置删除！**

```
hdmi_force_hotplug=1
config_hdmi_boost=4
hdmi_group=2
hdmi_mode=9
hdmi_drive=2
hdmi_ignore_edid=0xa5000080
disable_overscan=1
```

完成后保存并重启

---

网段测试：

```
:: 因为某些特殊原因导致无法查看本网段所有 IP 地址，所以创建 ScanIP.bat 以供使用

:: 扫描本网段所有主机
for /L %i IN (1,1,254) DO ping -w 2 -n 1 192.168.1.%i >> output.txt

:: 或者使用 arp -a，来查看
:: Windows 的命令不是很会用
```

