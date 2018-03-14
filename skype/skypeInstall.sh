su -c 'zypper install libqt4 libqt4-x11 libqt4-dbus-1 libsigc++2 libpng12-0'
su -c 'zypper install libpulse0-32bit alsa-plugins-pulse-32bit'

#Download skype from = >"http://www.skype.com/intl/es-es/get-skype/on-your-computer/linux

zypper in ./rpm/skype-4.2.0.11-suse.i586.rpm
