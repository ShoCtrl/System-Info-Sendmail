# System-Info-Sendmail

prerequisites/dependencies:

Python Script Link
[package_updates_check.py](https://gist.github.com/yumminhuang/8b1502a49d8b20a6ae70)

sysstat for iostat
```bash
sudo apt install sysstat
```

Example:
```text
Current Time:    Thu Feb 2 20:30:42 MST 2023 

==================================================================================================== 

Check Time: 02/02/2023 20:30:40 

No available updates on this machine. 

==================================================================================================== 

  System load:                      0.431640625 

  Usage of /:                       30.2% of 916.84GB 

  Memory usage:                     17% 

  Swap usage:                       0% 

  Temperature:                      37.5 C 

  Processes:                        303 

  Users logged in:                  1 

  IPv4 address for br-397dc586cf67: 172.21.0.1 

  IPv4 address for br-460160b1d1db: 172.22.0.1 

  IPv4 address for br-aba775d75c8f: 172.19.0.1 

  IPv4 address for docker0:         172.17.0.1 

  IPv4 address for eth0:            172.16.0.30 

  IPv6 address for eth0:            2601:282:4400:5d20::dd15 

  IPv6 address for eth0:            2601:282:4400:5d20:dea6:32ff:fedc:2d6 

==================================================================================================== 

Users Online: 

USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT 

shoctrl  pts/0    172.16.0.251     19:49   10.00s  0.54s  0.00s /bin/sh /home/shoctrl/bin/device_email.sh 

==================================================================================================== 

avg-cpu:  %user   %nice %system %iowait  %steal   %idle 

           2.40    0.00    2.22    0.08    0.00   95.29 

 

 

 

==================================================================================================== 
```
