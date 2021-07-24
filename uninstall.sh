#!/bin/bash

systemctl disable logitech-master-mx2.service 
systemctl stop logitech-master-mx2.service 

systemctl disable ydotoold.service 
systemctl stop ydotoold.service 

rm /usr/lib/systemd/system/ydotoold.service 
rm /usr/lib/systemd/system/logitech-master-mx2.service


rm  /etc/logitech-master-mx2/config
rmdir  /etc/logitech-master-mx2/
rm  /usr/bin/logitech-master-mx2
