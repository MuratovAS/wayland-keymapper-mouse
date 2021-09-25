#!/bin/bash
chmod 744 ./logitech-maste

mkdir -p /etc/logitech-master/
rm -f /etc/logitech-master/config

echo '
#!/bin/bash
EVENT_SIDE1="ydotool key ctrl+alt+shift+s"
EVENT_SIDE2="ydotool key ctrl+alt+shift+a"
EVENT_SCROLL_UP="ydotool key ctrl+alt+shift+w"
EVENT_SCROLL_DOWN="ydotool key ctrl+alt+shift+q"
EVENT_THUMB="ydotool key ctrl+alt+shift+z"
' >> /etc/logitech-master/config

cp logitech-master /usr/bin/
cp logitech-master.service /usr/lib/systemd/system/
systemctl enable logitech-master.service 
systemctl start logitech-master.service 

cp ydotoold.service /usr/lib/systemd/system/ 
systemctl enable ydotoold.service 
systemctl start ydotoold.service 


cat /etc/logitech-master/config
systemctl status logitech-master.service 
systemctl status ydotoold.service 
