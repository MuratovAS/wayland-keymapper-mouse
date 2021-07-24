#!/bin/bash
chmod 744 ./logitech-master-mx2

mkdir -p /etc/logitech-master-mx2/
rm -f /etc/logitech-master-mx2/config

echo '
#!/bin/bash
EVENT_SIDE1="ydotool key ctrl+alt+shift+s"
EVENT_SIDE2="ydotool key ctrl+alt+shift+a"
EVENT_SCROLL_UP="ydotool key ctrl+alt+shift+w"
EVENT_SCROLL_DOWN="ydotool key ctrl+alt+shift+q"
EVENT_THUMB="ydotool key ctrl+alt+shift+z"
' >> /etc/logitech-master-mx2/config

cp logitech-master-mx2 /usr/bin/
cp logitech-master-mx2.service /usr/lib/systemd/system/
systemctl enable logitech-master-mx2.service 
systemctl start logitech-master-mx2.service 

cp ydotoold.service /usr/lib/systemd/system/ 
systemctl enable ydotoold.service 
systemctl start ydotoold.service 


cat /etc/logitech-master-mx2/config
systemctl status logitech-master-mx2.service 
systemctl status ydotoold.service 
