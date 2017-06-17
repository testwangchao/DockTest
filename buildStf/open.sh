#!/bin/bash
echo --------------------------------------------------------------------------------------------
#stf local --public-ip 192.168.1.104  --adb-host adbd --adb-port 5037 --provider-min-port 7400 --provider-max-port 7700 --allow-remote
#echo --------------------------------------------------------------------------------------------
#wait
stf local --public-ip 192.168.1.104  --adb-host 192.168.1.102 --adb-port 5037 --allow-remote| stf provider  --min-port 7400 --max-port 7700 --connect-sub tcp://127.0.0.1:7114 --connect-push tcp://127.0.0.1:7116 --group-timeout 20000 --public-ip 192.168.1.104  --storage-url http://192.168.1.104:7100  --vnc-initial-size 600x800 --allow-remote
