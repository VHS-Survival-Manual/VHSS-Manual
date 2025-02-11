:: 因为某些特殊原因导致无法查看本网段所有 IP 地址，所以创建 ScanIP.bat 以供使用

:: 扫描本网段所有主机
for /L %i IN (1,1,254) DO ping -w 2 -n 1 192.168.1.%i >> output.txt

:: 或者使用 arp -a，来查看
:: Windows 的命令不是很会用