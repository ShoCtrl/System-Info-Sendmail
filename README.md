# System-Info-Sendmail

prerequisites/dependencies:

Python Script Link
[package_updates_check.py](https://gist.github.com/yumminhuang/8b1502a49d8b20a6ae70)

sysstat for iostat
```bash
sudo apt install sysstat
```

Email Example:
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

  Users logged in:                  0 

  IPv4 address for eth0:            <ipv4_address>

  IPv6 address for eth0:            <ipv6_address>

==================================================================================================== 

Users Online: 

USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT 


==================================================================================================== 

avg-cpu:  %user   %nice %system %iowait  %steal   %idle 

           2.40    0.00    2.22    0.08    0.00   95.29 
==================================================================================================== 
```
