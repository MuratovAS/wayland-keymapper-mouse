#!/bin/bash

systemctl disable logitech-master-mx3.service 
systemctl stop logitech-master-mx3.service 

systemctl disable ydotoold.service 
systemctl stop ydotoold.service 

rm /usr/lib/systemd/system/ydotoold.service 
rm /usr/lib/systemd/system/logitech-master-mx3.service


rm  /etc/logitech-master-mx3/config
rmdir  /etc/logitech-master-mx3/
rm  /usr/bin/logitech-master-mx3
