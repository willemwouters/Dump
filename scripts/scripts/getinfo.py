#!/usr/bin/python2.7

import dbus
bus = dbus.SessionBus()
player = bus.get_object('com.spotify.qt', '/')
iface = dbus.Interface(player, 'org.freedesktop.MediaPlayer2')
info = iface.GetMetadata()
print str(info['xesam:artist'][0]) + " - " + str(info['xesam:title'])
